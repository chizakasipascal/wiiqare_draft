import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:wiiqare/utils/colors.dart';
import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:wiiqare/views/widgets/widgets.dart';

class QRCodeScannerViews extends StatefulWidget {
  const QRCodeScannerViews({
    Key key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRCodeScannerViewsState();
}

class _QRCodeScannerViewsState extends State<QRCodeScannerViews>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
      reverseDuration: Duration(milliseconds: 200),
    );
  }

  bool isFlash = false;
  Barcode result;
  QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  if (result !=
                      null) //  "Barcode Type: ${describeEnum(result.format)}
                    Text("Information: ${result.code}")
                  else
                    SingleTitle(
                      singleTitle: "Scannez pour payer",
                    ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: White,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Grey.withOpacity(.4),
                              blurRadius: 2.0,
                              offset: Offset(0, 1),
                            )
                          ],
                        ),
                        child: ClipOval(
                          child: SizedBox(
                            height: 50.0,
                            width: 50.0,
                            child: FutureBuilder(
                              future: controller?.getFlashStatus(),
                              builder: (context, snapshot) {
                                return AnimatedIconButton(
                                  onPressed: () => setState(() {
                                    controller?.toggleFlash();
                                    // if (isFlash == false) {
                                    //   isFlash = true;
                                    // } else {
                                    //   isFlash = false;
                                    // }
                                    _handleOnPressed();
                                  }),
                                  duration: Duration(milliseconds: 200),
                                  endIcon: Icon(Icons.flash_on, color: Yello),
                                  startIcon: Icon(Icons.flash_off, color: Grey),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      ClipOval(
                        child: Container(
                          decoration: BoxDecoration(
                            color: White,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Grey.withOpacity(.4),
                                  blurRadius: 2.0,
                                  offset: Offset(0, 1))
                            ],
                          ),
                          margin: EdgeInsets.all(8),
                          child: SizedBox(
                            height: 50.0,
                            width: 50.0,
                            child: FutureBuilder(
                              future: controller?.getCameraInfo(),
                              builder: (context, snapshot) {
                                if (snapshot.data != null) {
                                  return AnimatedIconButton(
                                    //size: 35,
                                    onPressed: () => setState(() {
                                      controller?.flipCamera();
                                      _handleOnPressed();
                                    }),
                                    duration: Duration(milliseconds: 200),
                                    endIcon:
                                        Icon(Icons.camera_front, color: Yello),
                                    startIcon:
                                        Icon(Icons.camera_alt, color: Grey),
                                  );

                                  // Text('Camera facing ${describeEnum(snapshot.data)}');
                                } else {
                                  return Text('loading');
                                }
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(8),
                        child: WikiButtom(
                          onPressed: () {
                            controller?.pauseCamera();
                          },
                          descpritionButtom: ('Appercie QR'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        child: WikiButtom(
                          onPressed: () {
                            controller?.resumeCamera();
                          },
                          descpritionButtom: ('Reprendre le scan'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      cameraFacing: CameraFacing.front,
      onQRViewCreated: _onQRViewCreated,
      formatsAllowed: [BarcodeFormat.qrcode],
      overlay: QrScannerOverlayShape(
        borderColor: Colors.red,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea,
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

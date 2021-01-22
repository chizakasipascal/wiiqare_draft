class ComboSante {
  int id;
  String name;

  ComboSante(this.id, this.name);

  static List<ComboSante> getComboSante() {
    return <ComboSante>[
      ComboSante(1, 'Par Jour'),
      ComboSante(2, 'Par semaine'),
      ComboSante(3, 'Par semaine'),
      ComboSante(4, 'chaque deux semaine'),
      ComboSante(5, 'Chaque mois'),
    ];
  }
}

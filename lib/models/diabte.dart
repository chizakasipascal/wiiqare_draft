class DiabeteCombo {
  int id;
  String name;

  DiabeteCombo(this.id, this.name);

  static List<DiabeteCombo> getComboDiabteMois() {
    return <DiabeteCombo>[
      DiabeteCombo(1, 'Mois de 5 ans'),
      DiabeteCombo(2, 'Plus de 5 ans'),

    ];
  }
}


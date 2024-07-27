class Article {
  String bgImage;
  String name;
  String category;
  String date;
  // num score;
  // num review;
  String description;
  List<String> images;

  Article(
      this.bgImage,
      this.name,
      this.category,
      this.date,
      // this.score,
      // this.review,
      this.description,
      this.images,
      );

  static List<Article> articles() {
    return [
      Article(
        'assets/images/ori1.jpg',
        'Article 1',
        'Visage',
        '2021-09-01',
        // 4.8,
        // 324,
        "Prendre soin de son visage est crucial pour maintenir une peau saine et radieuse. Voici quelques étapes clés pour une routine de soins efficace.\n\n1. Nettoyez votre visage matin et soir avec un nettoyant doux.\n\n2. Exfoliez votre peau une à deux fois par semaine pour éliminer les cellules mortes et révéler un teint éclatant.\n\n3. Hydratez votre peau avec une crème adaptée à votre type de peau.\n\n4. Protégez votre peau des rayons UV en appliquant un écran solaire tous les jours.\n\n5. N'oubliez pas de boire suffisamment d'eau pour maintenir une peau hydratée et éclatante.",
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
        ],
      ),
      Article(
        'assets/images/rl1.jpg',
        'Article 2',
        'Cheveux',
        '2021-09-01',
        // 4.7,
        // 148,
        "Article cheveux",
        [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      ),
    ];
  }
}

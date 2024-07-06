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
        "Article visage",
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

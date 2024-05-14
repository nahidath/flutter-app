class Article {
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num review;
  String description;
  List<String> images;

  Article(
      this.bgImage,
      this.icon,
      this.name,
      this.type,
      this.score,
      this.review,
      this.description,
      this.images,
      );

  static List<Article> articles() {
    return [
      Article(
        'assets/images/ori1.jpg',
        'assets/images/ori_logo.png',
        'Article 1',
        'Visage',
        4.8,
        324,
        "Article visage",
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
        ],
      ),
      Article(
        'assets/images/rl1.jpg',
        'assets/images/rl_logo.png',
        'Article 2',
        'Cheveux',
        4.7,
        148,
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

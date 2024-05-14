import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/detail/widgets/detail_sliver.dart';
import 'package:gamestore/pages/detail/widgets/info.dart';
import 'package:myapp/pages/detail/widgets/detail_silver.dart';

import '../../models/article.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.article, {super.key});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              article: article,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(article),
          )
        ],
      ),
    );
  }
}

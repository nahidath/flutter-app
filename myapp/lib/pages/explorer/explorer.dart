import 'package:flutter/material.dart';

import '../home/widgets/search.dart';



class Explorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        child: Column(
          children: [
            SearchSection(),
            Row(
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(25),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Visage'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Cheveux'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Corps'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Maquillage'),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Style de vie'),
                    ),
                  ]
                ),
                Column(

                )
              ]
            )
          ]
        ),
      ),
    );
  }
}
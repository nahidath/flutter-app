import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class CardVid extends StatelessWidget {
  final String videoId;
  final double width = 330;
  final double height = 220;
  const CardVid({required this.videoId, width, height});

  @override
  Widget build(BuildContext context) {
    // URL de la vignette YouTube
    final thumbnailUrl = 'https://img.youtube.com/vi/$videoId/0.jpg';


    return GestureDetector(
      onTap: () async {
        // URL de la vidéo YouTube
        final youtubeUrl = Uri.parse('https://www.youtube.com/watch?v=$videoId');

        // Redirige vers l'application YouTube ou le navigateur web
        if (await canLaunchUrl(youtubeUrl)) {
          await launchUrl(youtubeUrl);
        } else {
          throw 'Could not launch $youtubeUrl';
        }
      },
      child: Stack(
        children: [
          Image.network(
            thumbnailUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              // Afficher un widget de repli si l'image ne se charge pas
              return Container(
                width: width,
                height: height,
                color: Colors.grey,
                child: const Center(
                  child: Icon(
                    Icons.broken_image,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
          // Logo YouTube au centre de la vignette
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/img/youtube_logo.png', // Chemin vers votre logo YouTube
                width: 60, // Ajustez la taille du logo selon vos besoins
                height: 60,
              ),
            ),
          ),
        ],
      )
    );
  }
}

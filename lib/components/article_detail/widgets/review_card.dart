import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 42,
          width: 42,
          child: CachedNetworkImage(
            imageUrl: 'https://cdn.myanimelist.net/r/42x62/images/characters/16/488297.webp?s=c5496e85ce3e86e0c448c9f8b8b07a40',
            imageBuilder: (context, imageProvider) => ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: imageProvider, fit: BoxFit.cover, alignment: Alignment.topCenter),
                ),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black54, Colors.black45],
                    ),
                  ),
                  child: Container(),
                ),
              ),
            ),
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Center(
              child: Icon(Icons.error),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text('MangaBoi77', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      Text('rated it 5/5'),
                    ],
                  ),
                  Text('6 months ago', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white60)),
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                "This looks really good...\nSo first off, I really like the concept of a mix between romance and sports series and it feels fresh (although there are probably other series with the same concept). It looks like it's going to be more focused on the romance side. I don't mind because after We Never Learn was finished, I was waiting for a romance series from Shonen Jump, but it would be nice to be focused on sports also (60% romance and 40% sports) because after reading Haikyuu!!, I was craving a new sports manga.",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

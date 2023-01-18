import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:manga_reads/components/article_detail/article_detail.dart';
import 'package:manga_reads/core/theme/theme_colors.dart';

class DataView extends StatelessWidget {
  const DataView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListItemCard(),
        childCount: 18,
      ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisExtent: 250,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 15.0,
      ),
    );
  }
}

class ListItemCard extends StatelessWidget {
  const ListItemCard({super.key});

  void handleTap() {
    Get.toNamed(ArticleDetail.path);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: handleTap,
        child: CachedNetworkImage(
          imageUrl: 'https://cdn.myanimelist.net/images/manga/2/248748.jpg',
          imageBuilder: (context, imageProvider) => ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black, Colors.transparent],
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ao no Hako',
                      overflow: TextOverflow.fade,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: AppThemeColors.white.withOpacity(0.8),
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'Kouji Miura',
                      overflow: TextOverflow.fade,
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: AppThemeColors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                  ],
                ),
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
    );
  }
}

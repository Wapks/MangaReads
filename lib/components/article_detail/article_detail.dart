import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:manga_reads/components/article_detail/widgets/review_card.dart';
import 'package:manga_reads/core/theme/theme_colors.dart';

class ArticleDetail extends StatelessWidget {
  const ArticleDetail({super.key});

  static const name = 'article detail';
  static const path = '/article/detail';

  void handleAppbarBackTap() {
    Get.back(closeOverlays: true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Theme.of(context).primaryColorDark,
              leading: MouseRegion(
                child: GestureDetector(
                  onTap: handleAppbarBackTap,
                  child: Icon(Icons.navigate_before, size: 36, color: Colors.white70),
                ),
                cursor: SystemMouseCursors.click,
              ),
              title: Text(
                'Ao no Hako',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white70),
              ),
              expandedHeight: 400,
              pinned: true,
              flexibleSpace: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: CachedNetworkImage(
                      imageUrl: 'https://mangadex.org/covers/ed5dddc0-999d-4fd2-a702-9fef1ec2c955/d1571711-fafb-4ae6-b97b-7449e2bde836.jpg',
                      imageBuilder: (context, imageProvider) => ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
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
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: SizedBox(
                                height: 40.0,
                                child: Row(
                                  children: [
                                    Icon(Icons.book),
                                    SizedBox(width: 5),
                                    Text(
                                      'Add Review',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Row(
                    children: [
                      Text('Author'),
                      SizedBox(width: 5.0),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Koji Miura',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Rating',
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '5/5',
                        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    'Sypnosis',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    "Taiki Inomata is on the boys' badminton team at sports powerhouse Eimei Junior and Senior High. He's in love with basketball player Chinatsu Kano, the older girl he trains alongside every morning in the gym.\n\nOne Spring day, their relationship takes a sharp turn ... And thus begins this brand-new series of love, sports and youth!",
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.6,
                      height: 1.5,
                    ),
                  ),
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text(
                    'Genres',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: const [
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Romance',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Sports',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Comedy',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Shoujo',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Award-winning',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Slice of life',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'School life',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Action',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                    ]),
                  )
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Divider(
                      color: Colors.white24,
                    ),
                    Review(),
                    SizedBox(height: 15),
                    Review(),
                    SizedBox(height: 15),
                    Review(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

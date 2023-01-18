import 'package:flutter/material.dart';
import 'package:manga_reads/components/data_view/data_view.dart';
import 'package:manga_reads/components/drawer/drawer.dart';
import 'package:manga_reads/components/search/widget/search_section/search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const name = 'search';
  static const path = '/search';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('Search titles'),
          ),
        ),
        body: const CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: 50.0,
                  child: SearchSection(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 15),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              sliver: DataView(),
            ),
          ],
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}

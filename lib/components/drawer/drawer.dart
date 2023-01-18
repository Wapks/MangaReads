import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:manga_reads/components/drawer/provider/drawer_provider.dart';
import 'package:manga_reads/components/profile/profile.dart';
import 'package:manga_reads/components/search/widget/search_page/search.dart';
import 'package:manga_reads/components/settings/settings.dart';

class NavItem {
  String label;
  String path;
  // List<NavItem> children;

  NavItem({
    required this.label,
    required this.path,
    // this.children = const []
  });
}

final List<NavItem> navItems = [
  NavItem(label: 'Search Manga', path: SearchPage.path),
  NavItem(label: 'My Favorites', path: ProfilePage.path),
  NavItem(label: 'Settings', path: SettingsPage.path),
];

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Get.find<DrawerNavProvider>();
    return Container(
      width: clampDouble(MediaQuery.of(context).size.width * 0.65, 240, 300),
      child: Drawer(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 10.0,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(8.0, 64.0, 8.0, 8.0),
          physics: const BouncingScrollPhysics(),
          children: [
            ...navItems
                .mapIndexed(
                  (i, e) => Obx(
                    () => ListTile(
                      selected: provider.selectedIndex.value == i,
                      title: Text(e.label),
                      onTap: () {
                        provider.onSelectItem(i);
                      },
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}

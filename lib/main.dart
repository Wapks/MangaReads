import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:manga_reads/components/drawer/provider/drawer_provider.dart';
import 'package:manga_reads/components/search/widget/search_page/search.dart';
import 'package:manga_reads/core/router/router.dart';
import 'package:manga_reads/core/theme/theme.dart';

void main() {
  runApp(const MangaReadApp());
}

class MangaReadApp extends StatelessWidget {
  const MangaReadApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => DrawerNavProvider(), fenix: true);
      }),
      debugShowCheckedModeBanner: false,
      title: 'MangaReads',
      darkTheme: AppTheme.data,
      themeMode: ThemeMode.dark,
      initialRoute: SearchPage.path,
      getPages: getRoutes,
    );
  }
}

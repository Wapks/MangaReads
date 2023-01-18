import 'package:manga_reads/components/article_detail/article_detail.dart';
import 'package:manga_reads/components/feed/feed.dart';
import 'package:manga_reads/components/login/login.dart';
import 'package:manga_reads/components/profile/profile.dart';
import 'package:manga_reads/components/search/widget/search_page/search.dart';
import 'package:manga_reads/components/settings/settings.dart';
import 'package:get/route_manager.dart';

get getRoutes => [
      GetPage(name: LoginPage.path, page: () => const LoginPage(), title: LoginPage.name),
      GetPage(name: FeedPage.path, page: () => const FeedPage(), title: FeedPage.name),
      GetPage(name: SearchPage.path, page: () => const SearchPage(), title: SearchPage.name),
      GetPage(name: ArticleDetail.path, page: () => const ArticleDetail(), title: ArticleDetail.name),
      GetPage(name: ProfilePage.path, page: () => const ProfilePage(), title: ProfilePage.name),
      GetPage(name: SettingsPage.path, page: () => const SettingsPage(), title: SettingsPage.name),
    ];

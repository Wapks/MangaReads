import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Expanded(
          child: SearchInput(),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.filter_alt_outlined,
            color: Theme.of(context).inputDecorationTheme.iconColor,
            size: 28.0,
          ),
        ),
      ],
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Theme.of(context).inputDecorationTheme.iconColor,
          size: 24.0,
        ),
        hintText: 'Search title...',
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}

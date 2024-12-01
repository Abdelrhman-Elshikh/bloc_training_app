import 'default_app_bar.dart';
import 'searching_app_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  var _isSearching = false;
  @override
  Widget build(BuildContext context) {
    return _isSearching
        ? SearchingAppBar(
            onPressed: () {
              _isSearching = false;
              setState(() {});
            },
          )
        : DefaultAppBar(
            onPressed: () {
              _isSearching = true;
            
              setState(() {});
            },
          );
  }
}

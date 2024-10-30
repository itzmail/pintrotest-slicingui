import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

AppBar buildAppBar(BuildContext context, {String title = '', Widget? leading}) {
  return AppBar(
    title: Text(title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
    leading: leading ??
        IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 20,
          ),
          onPressed: () {
            context.pop();
          },
        ),
  );
}

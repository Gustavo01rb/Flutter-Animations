import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/AnimacoesImpricitas.dart';
import 'package:teste/Helpers/pages.dart';
import 'package:teste/tween.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({ Key? key }) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(_pageController),
      child: PageView(
        controller: _pageController,
        children: [
          TesteTweenBiulder(),
          Implicitas()
      
        ],
      ),
    );
  }
}
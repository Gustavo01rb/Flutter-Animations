import 'package:flutter/material.dart';
import 'package:teste/Helpers/core.dart';

class TesteTweenBiulder extends StatefulWidget {
  const TesteTweenBiulder({ Key? key }) : super(key: key);

  @override
  _TesteTweenBiulderState createState() => _TesteTweenBiulderState();
}

class _TesteTweenBiulderState extends State<TesteTweenBiulder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Biulder"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          TweenAnimationBuilder(
              duration: Duration(milliseconds: 500),
              tween: Tween<double>(begin: 0, end: 40),
              child: Text("Título do meu aplicativo", style: Core().titleStyle,),
              builder: (context, double altura, child) {
               return Container(
                child: child,
                height: altura,
              );
            }
          ),


          Center(
            child: TweenAnimationBuilder(
              duration: Duration(seconds: 2),
              tween: Tween<double>(begin: 0, end: 31.4),
              builder: (context, double angulo, child) {
                return ListTile(
                  leading: Transform.rotate(
                    angle: angulo,
                    child: Icon(Icons.check_circle),
                  ),
                  title: Text("Teste"),
                );
              } ,
            ),
          ),
        ],
      ),
    );
  }
}
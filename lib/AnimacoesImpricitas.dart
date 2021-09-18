import 'package:flutter/material.dart';
import 'package:teste/Helpers/core.dart';

class Implicitas extends StatefulWidget {
  const Implicitas({ Key? key }) : super(key: key);

  @override
  _ImplicitasState createState() => _ImplicitasState();
}

class _ImplicitasState extends State<Implicitas> {
  bool _selected = false;
  void changeState(){
    setState(() {
      _selected = !_selected;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animações Implícitas"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeState,
        child: Icon(Icons.change_circle),
        backgroundColor: _selected ? Colors.redAccent :  Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Text("AnimatedAlign", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: AnimatedAlign(
                  duration: Duration(seconds: 1),
                  alignment: _selected ? Alignment.center : Alignment.bottomRight,
                  child: Icon(Icons.public_rounded, size: 50,),
                  curve: Curves.bounceInOut,
                ),
              ),
              SizedBox(height: 50,),
        
              Text("AnimatedContainer", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: _selected ? 100 : 200,
                    height: _selected ? 120 : 180,
                    color: _selected ? Colors.red : Colors.green,
                    curve: Curves.bounceIn,
                  ),
                )
              ),
              SizedBox(height: 50,),
        
              Text("AnimatedDefaultTextStyle", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: AnimatedDefaultTextStyle(
                    duration: Duration(seconds: 1),
                    style: _selected ? TextStyle(fontSize: 32, fontWeight: FontWeight.w900) : TextStyle(fontSize: 14, fontWeight: FontWeight.w100, color: Colors.black),
                    child: Text("Gustavo"),
                    curve: Curves.bounceOut,
                  )
                )
              ),
              SizedBox(height: 50,),

              Text("AnimatedOpacity", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: AnimatedOpacity(
                    opacity: _selected ? 1.0 : 0,
                    child: Icon(Icons.person, size: 50,),
                    duration: Duration(seconds: 1),
                    curve: Curves.easeOutSine,
                  )
                )
              ),
              SizedBox(height: 50,),

              Text("AnimatedPadding", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: MediaQuery.of(context).size.width,),
                      AnimatedPadding(
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOutBack,
                        padding: _selected ? EdgeInsets.symmetric(horizontal: 20) : EdgeInsets.symmetric(horizontal: 140)  ,
                        child: Container(
                          width: 200,
                          height: 50,
                          color: Colors.pink,
                          alignment: Alignment.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 150,
                            height: 40,
                            child: Center(
                              child: Text("Padding: " + (_selected ? "20" : "140") ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                )
              ),
              SizedBox(height: 50,),

              Text("AnimatedPhysicalModel", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: AnimatedPhysicalModel(
                    duration: Duration(seconds: 1),
                    shape:  BoxShape.rectangle,
                    elevation: _selected ? 0 : 6,
                    color: Colors.black,
                    shadowColor: Colors.black,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    ),

                  )
                )
              ),
              SizedBox(height: 50,),

              Text("AnimatedPositioned", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        duration: Duration(seconds: 1),
                        width: _selected ? 50 : 100,
                        height: _selected ? 120 : 40,
                        top: _selected ? 20 : 150,
                        left: _selected ?160 : 30,
                        child: Container(
                          color: Colors.purple,
                        )
                      )
                    ],
                  )
                )
              ),
              SizedBox(height: 50,),

              Text("AnimatedCrossFade", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: 
                    AnimatedCrossFade(
                      firstChild: ListTile(leading: Icon(Icons.info), title: Text("Clique no botão de atualizar estado") ), 
                      secondChild: ListTile(leading: Icon(Icons.auto_awesome), title: Text("Parabéns!!") ), 
                      crossFadeState: _selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      duration: Duration(seconds: 1)
                      )
                )
              ),
              SizedBox(height: 50,),

              Text("AnimatedSwitcher", style: Core().titleStyle,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: Colors.blue.withOpacity(0.5),
                child: Center(
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder: (Widget child, Animation<double> animation ){
//                      return RotationTransition(child: child, turns: animation,);
                      return ScaleTransition(child: child, scale: animation,);

                    },
                    child: _selected 
                      ? Container( width: 150, height: 100, decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(20)), key: ValueKey(1),)
                      : Container (width: 100, height: 100,  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)), key: ValueKey(2))
                    
                    ,
                  )
                )
              ),
              SizedBox(height: 50,),
        
        
            ],
          ),
        ),
      ),
    
    );
  }
}
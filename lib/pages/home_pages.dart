

import 'package:flutter/material.dart';

import '../util/my_tabs.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  // my tabs

  List<Widget> myTabs = [
    //donut
     const Mytab(
      iconPath:'lib/icons/donut.png' ,
     ),
    //burger
    const Mytab(
      iconPath:'lib/icons/burger.png' ,
     ),

    //smoothie
    const Mytab(
      iconPath:'lib/icons/smoothie.png' ,
     ),
    //pancake
    const Mytab(
      iconPath:'lib/icons/pancakes.png' ,
     ),

    // pizza
    // const Mytab(
    //   iconPath:'lib/icons/pizza.png' ,
    //  ),


  ];






  @override
  Widget build(BuildContext context){
    return DefaultTabController (
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:  Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon:Icon(
              Icons.menu,
              color: Colors.grey.shade800,
              size: 36,
            ),
            onPressed: (){
              // open drawer
            },
            )
          ),
          actions:  [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon:Icon(
                Icons.person,
                color: Colors.grey.shade800,
                size: 36,
              ),
              onPressed: () {
                //open profile
              } ,)
            )
    
    
          ],
          ),
        body: Column(children:  [
          // wnt to eat
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0 , vertical: 18.0),
            child: Row(
              children: const [
                Text(
                  "I want to ",
                  style: TextStyle(fontSize: 24,),
                  ),
                  Text(
                  "EAT",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),
              ],
            ),
          ),
    
          const SizedBox(height: 24,),
    
          // tab bar
          TabBar(tabs: myTabs)
          // tab bar vie
        ]),  
          
    
          
    
      ),
    );
  }
}
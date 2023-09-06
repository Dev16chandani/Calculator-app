import 'package:calculator/Button.dart';
import 'package:calculator/CustomTextField.dart';
import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
import 'ButtonData.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25,vertical: 30);
    final decoration =  BoxDecoration(
        color: Colors.grey[900],borderRadius: BorderRadius.vertical(top: Radius.circular(30))
        );
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Calculator')),
        backgroundColor: Colors.black,

        ),
        body: Column(
        children: [
          CustomTextField(),
          Container(
            height:  screenHeight * 0.6,
            width: double.infinity,
            padding: padding,
            decoration: decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                    List.generate(4,(index) => buttonList[index]),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  List.generate(4, (index) => buttonList[index+4]),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  List.generate(4, (index) => buttonList[index+8]),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  List.generate(3, (index) => buttonList[index+12]),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  List.generate(3, (index) => buttonList[index+15]),

                ),

              ],
            ),
            )
        ],
        ),



    );
  }
}






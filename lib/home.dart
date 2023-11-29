import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:ytub_calculator_app/Components/buttons.dart';
class home_screen extends StatefulWidget {

  static const String id = 'home';
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {

  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(backgroundColor: Colors.teal,title: const Center(child: Text('Calculator'),),),

        body:  SafeArea(
          child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Align(
                    alignment:Alignment.bottomRight,
                    child: Text(userInput.toString(),style: const TextStyle(fontSize: 30,color: Colors.white,),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(answer.toString(),style: const TextStyle(fontSize: 30,color: Colors.white,),
                  ),
                ],
              ),
            ),

            Column(
              children: [
           Row(
            children: [
              MyButton(title: 'AC',onPress: (){
                userInput = '';
                answer = '';
                setState(() {

                });
              },),
              MyButton(title: '+/-',onPress: (){
                userInput+='+/-';
                setState(() {

                });
              },),
              MyButton(title: '%',onPress: (){
                userInput+='%';
                setState(() {

                });
              }),
              MyButton(title: '/',onPress: (){
                userInput+='/';
                setState(() {

                });
              },color: Colors.teal,),
            ],
          ),
            Row(
              children: [
                MyButton(title: '7',onPress: (){
                  userInput+='7';
                  setState(() {

                  });
                },),
                MyButton(title: '8',onPress: (){
                  userInput+='8';
                  setState(() {

                  });
                },),
                MyButton(title: '0',onPress: (){
                  userInput+='0';
                  setState(() {

                  });
                }),
                MyButton(title: '*',onPress: (){
                  userInput+='*';
                  setState(() {

                  });
                },color: Colors.teal,),
              ],
            ),
                Row(
                  children: [
                    MyButton(title: '4',onPress: (){
                      userInput+='4';
                      setState(() {

                      });
                    },),
                    MyButton(title: '5',onPress: (){
                      userInput+='5';
                      setState(() {

                      });
                    },),
                    MyButton(title: '6',onPress: (){
                      userInput+='6';
                      setState(() {

                      });
                    }),
                    MyButton(title: '-',onPress: (){
                      userInput+='-';
                      setState(() {

                      });
                    },color: Colors.teal,),
                  ],
                ),
                Row(
                  children: [
                    MyButton(title: '1',onPress: (){
                      userInput+='1';
                      setState(() {

                      });
                    },),
                    MyButton(title: '2',onPress: (){
                      userInput+='2';
                      setState(() {

                      });
                    },),
                    MyButton(title: '3',onPress: (){
                      userInput+='3';
                      setState(() {

                      });
                    }),
                    MyButton(title: '+',onPress: (){
                      userInput+='+';
                      setState(() {

                      });
                    },color: Colors.teal,),
                  ],
                ),
                Row(
                  children: [
                    MyButton(title: '0',onPress: (){
                      userInput+='0';
                      setState(() {

                      });
                    },),
                    MyButton(title: '.',onPress: (){
                      userInput+='.';
                      setState(() {

                      });
                    },),
                    MyButton(title: 'DEL',onPress: (){
                      userInput = userInput.substring(0,userInput.length-1);
                      setState(() {

                      });
                    }),
                    MyButton(title: '=',onPress: (){
                      equalPress();
                      setState(() {

                      });
                    },color: Colors.teal,),
                  ],
                ),

              ],
            ),



            //COMPONENTS PART...............:
            /*
            SizedBox(height: 20,),
              MyButton(title: 'Login',),
            MyButton(title: 'SignUp',),
            MyButton(title: 'SignOut',),
             */
          ],
        ),

        ),

      ),

    );
  }
  void equalPress(){
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
  }


// Here is COMPONENTS..................:
/*
class MyButton extends StatelessWidget {
  final String title;
  const MyButton({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height:50,
        width: 500,
        decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(20)),
        child:  Center(child: Text(title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
*/
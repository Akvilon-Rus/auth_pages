import 'package:auth_page/expanded_demo_screen.dart';
import 'package:auth_page/global_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle=OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide:BorderSide(
        color: const Color(0xFFbbbbbb), width:  2));

    const linkTextStyle= TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0));

    return MaterialApp(
      theme: globalTheme(),
      home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image:DecorationImage(
                image:AssetImage('assets/fon.jpg'),
                fit:BoxFit.cover,
              ),
            ),
            width: double.infinity,
             height: double.infinity,
             padding: EdgeInsets.symmetric(horizontal: 50),
             child: SingleChildScrollView(
               child: Column(children:   [
                 SizedBox(height: 150,),
            const SizedBox(width: 110,height: 84, child: Image(image:AssetImage('assets/dart-logo.png')),),
            SizedBox(height: 20,),
            Text('Введите логин в виде 10 цифр номера телефона',
                style: Theme.of(context).textTheme.headline5,),
            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.secondaryVariant,
                enabledBorder: borderStyle,
                focusedBorder: borderStyle,
                labelText: 'Телефон',

                       ),
                     ),
                         SizedBox(height: 20,),
                         TextField(
                           obscureText: true,
                           decoration: InputDecoration(
                             filled: true,
                             fillColor:Theme.of(context).colorScheme.secondaryVariant,
                             enabledBorder: borderStyle,
                             focusedBorder: borderStyle,
                             labelText: 'Пароль',

                           ),
                         ),
                         SizedBox(height: 28,),
                         SizedBox(width:154,height: 42,child:
                          ElevatedButton(onPressed: (){},
                            child: Text('Войти'),
                            style:ElevatedButton.styleFrom(
                               primary: Color(0xFF0079D0),
                              shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(36.0),
                              ),
                            ),
                          )
                         ),
                         SizedBox(height: 62,),
                         InkWell(child: const Text('Регистрация', style: linkTextStyle,),
                         onTap: () {}),
                         SizedBox(height: 20,),
                         InkWell(child: Text('Забыли пароль?', style: linkTextStyle,),
                         onTap: () {})
                       ],),
             )
         )
      ),
    );
  }
}

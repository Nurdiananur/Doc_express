import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/screens/main_screen.dart';

class SendPackage extends StatefulWidget {
  const SendPackage({Key? key}) : super(key: key);

  @override
  State<SendPackage> createState() => _SendPackageState();
}

class _SendPackageState extends State<SendPackage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(' Выберите регион',
        style: TextStyle(
        fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
    ),

    ), leading: IconButton(onPressed: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => MainScreen()));
    }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
    ),
    ),
    );
  }
}

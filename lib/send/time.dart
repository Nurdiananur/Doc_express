import 'package:doc_express/send/data.dart';
import 'package:doc_express/send/my_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {







  @override
  Widget build(BuildContext context) {
    final timeField = TextFormField(
        autofocus: false,
        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: InputBorder.none,
          // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: '11.01.2021г, 17:29',
        )
    );


    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyDetails()));
        },
        child: Text(
          'Далее',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Контакты',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Data()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),
      body: SingleChildScrollView(
      child: Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    Padding(
    padding: const EdgeInsets.symmetric(vertical:20, horizontal: 20),
    child: Text(
    'Данные получателя',
    style: TextStyle(fontSize: 16,color: Color(0xFF444444),fontWeight: FontWeight.w600),
    ),
    ),



      SizedBox(height: 15),


      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFEDEDEF),
        ),
        child: timeField,
      ),

SizedBox(height: 443,),

      loginButton
    ]
      ),
    )
    )


    );

  }
}

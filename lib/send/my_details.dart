import 'package:doc_express/send/time.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyDetails extends StatefulWidget {
  const MyDetails({Key? key}) : super(key: key);

  @override
  State<MyDetails> createState() => _MyDetailsState();
}

class _MyDetailsState extends State<MyDetails> {
  @override
  Widget build(BuildContext context) {

    final phoneField = TextFormField(
        autofocus: false,
        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: InputBorder.none,
          // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Дженалиев Азим',
        )
    );

    final companyField = TextFormField(
        autofocus: false,
        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: InputBorder.none,
          // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: '+99655910033',
        )
    );



    final emailField = TextFormField(
        autofocus: false,
        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: InputBorder.none,
          // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Название компании',
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
              context, MaterialPageRoute(builder: (context) => Time()));
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
        title: Text('Отправить посылку',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Time()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),


    body:  SingleChildScrollView(
      child: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

    Padding(
    padding: const EdgeInsets.symmetric(vertical:20, horizontal: 20),
    child: Text(
    'Мои данные',
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
        child: phoneField,
      ),
      SizedBox(height: 15),


      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFEDEDEF),
        ),
        child: companyField,
      ),
      SizedBox(height: 15),


      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xFFEDEDEF),
        ),
        child: emailField,
      ),
      SizedBox(height: 313),
      loginButton

    ]
    )
    )
    )
    );
  }
}

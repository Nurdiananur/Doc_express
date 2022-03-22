import 'package:doc_express/send/cargo.dart';
import 'package:doc_express/send/choose.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Контакты',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Cargo()));
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
              GestureDetector(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Choose()));
                },
                child: Container(
                  padding: EdgeInsets.only(
                      left: 20, top: 12, bottom: 12, right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFEDEDEF),
                  ),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Имия Фамилия',
                        style:
                        TextStyle(color: Color(0xFF444444),fontSize: 16),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFEDEDEF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Номер телефона',
                      style: TextStyle(color: Color(0xFF444444),fontSize: 16),
                    ),

            ],
          ),
        ),
        ]
      ),
    )
      ),
    );
  }
}

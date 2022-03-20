import 'package:flutter/material.dart';

class LinkScreen extends StatefulWidget {
  const LinkScreen({Key? key}) : super(key: key);

  @override
  State<LinkScreen> createState() => _LinkScreenState();
}

class _LinkScreenState extends State<LinkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:Center(
        child: Container(
            width: 345,
            height: 205,
            decoration: BoxDecoration(
              color:
                Colors.white, borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black12)

            ),
            child: Column(
              children:<Widget>[
                SizedBox(height: 25),
                Icon(Icons.perm_contact_calendar_sharp,
                size: 40,
                color:   Color(0xffFFB951),),
                SizedBox(height: 10),
                Text('''Ссылка успешно отправлена
  на ваш номер телефона''',
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 15),
                Text('''Если сообщение не пришло, можете 
 попробовать ещё через 5 минут''',style: TextStyle(
                    fontSize: 14
                ),),

                ]
            )
            ),
          ),
          );
  }
}


import 'package:flutter/material.dart';
import 'package:doc_express/home/search2.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(


      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        //... other code
        builder: (context, widget) {
          //add this line
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },

        home: Search1(),
      ),
    );
  }
}

class Search1 extends StatefulWidget {
  const Search1({Key? key}) : super(key: key);

  @override
  State<Search1> createState() => _Search1State();
}

final TextEditingController phoneController = new TextEditingController();

class _Search1State extends State<Search1> {
  @override
  Widget build(BuildContext context) {
    final phoneField = TextFormField(
      autofocus: false,
      controller: phoneController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          hintText: 'Введите трек номер',
          border: InputBorder.none
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Search2())),
        child: Text(
          'Отследить',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Отследить посылку',
          style: new TextStyle(color: Color(0xff444444), fontSize: 16),
        ),
        backgroundColor: Colors.white,
        leading: Container(
          width: 55,
          height: 22,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.asset('assets/doc.png'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
        child: Column(
          children: <Widget>[
            Text(
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit.Vestibulum phasellus cursus urna,donec mi semper tellus.''',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFEDEDEF),
              ),
              child: phoneField,
            ),
            SizedBox(height: 20),
            loginButton
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:doc_express/login.dart';
import 'package:doc_express/screens/last_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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

        home: RagistrationScreen1() ,
      ),
    );

  }
}




class RagistrationScreen1 extends StatefulWidget {
  const RagistrationScreen1({Key? key}) : super(key: key);

  @override
  State<RagistrationScreen1> createState() => _RagistrationScreen1State();
}

class _RagistrationScreen1State extends State<RagistrationScreen1> {
  final _formKey = GlobalKey<FormState>();
  final phoneNumberEditingController = new TextEditingController();
  final fioEditingController = new TextEditingController();
  final passwordController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  bool passwordObscured = true;

  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  bool check1 = false;
  bool check2 = false;

  @override
  Widget build(BuildContext context) {
    final phoneNumberField = TextFormField(
        autofocus: false,
        controller: phoneNumberEditingController,
        keyboardType: TextInputType.phone,
        onSaved: (value) {
          phoneNumberEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: 'Номер телефона',
          border: InputBorder.none,
        ));
    final fioField = TextFormField(
        autofocus: false,
        controller: fioEditingController,
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) {
          fioEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'ФИО',
        ));

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(

        border: InputBorder.none,
        hintText: 'Пароль',
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordObscured = !passwordObscured;
              });
            },
            icon: Icon(
              passwordObscured ? Icons.visibility_off : Icons.vignette,
            )),
      ),
    );

    final passwordEditingField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Повторите пароль',
        border: InputBorder.none,
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordObscured = !passwordObscured;
              });
            },
            icon: Icon(
              passwordObscured ? Icons.visibility_off : Icons.vignette,
            )),
      ),
    );

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LastScreen()));
        },
        child: Text(
          'Зарегистироваться',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 100),
            Image.asset(
              'assets/doc.png',
              fit: BoxFit.contain,
              width: 144,
              height: 58,
            ),
            SizedBox(height: 25),
            Text(
              'Регистрация',
              style: TextStyle(
                  color: Color(0xFF444444),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFEDEDEF),
              ),
              child: phoneNumberField,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFEDEDEF),
              ),
              child: fioField,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFEDEDEF),
              ),
              child: passwordField,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFEDEDEF),
              ),
              child: passwordEditingField,
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
//  Row(
//    crossAxisAlignment: CrossAxisAlignment.start,
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: [
//   Radio(
//  value: 1,
//  groupValue: 0,
//  activeColor: Colors.blue,
//  onChanged: (val){
// print('Radio$val');
//   },
//  ),
//     Text(
//  'Соглашеаюсь с политикой'),
//   SizedBox(height: 15),
//                                ],
//                              ),
//
//

                Row(
                  children: [

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          check1 = !check1;
                        });
                      },
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: check1 ? Color(0xFF3D8BFF) : Color(0xFFE0E0E0),
                        ),
                        child: check1
                            ? Center(
                            child: Icon(Icons.check,
                                color: Colors.white, size: 15))
                            : Center(),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Соглашаюсь с политикой конфиденциальности',
                      style: TextStyle(
                          color: Color(0xFF444444),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          check2 = !check2;
                        });
                      },
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: check2 ? Color(0xFF3D8BFF) : Color(0xFFE0E0E0),
                        ),
                        child: check2
                            ? Center(
                            child: Icon(Icons.check,
                                color: Colors.white, size: 15))
                            : Center(),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Соглашаюсь с условиями пользования',
                      style: TextStyle(
                          color: Color(0xFF444444),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
            signUpButton,
            SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('У вас есть аккаунт? '),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Войти',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xffFFB951)),
                  ),
                )
              ],
            ),
            SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}

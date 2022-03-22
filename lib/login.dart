import 'package:doc_express/screens/main_screen.dart';
import 'package:doc_express/screens/password.dart';
import 'package:doc_express/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  bool passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    final phoneField = TextFormField(
        autofocus: false,
        controller: phoneController,
        keyboardType: TextInputType.phone,
        onSaved: (value) {
          phoneController.text = value!;
        },
        textInputAction: TextInputAction.next,

        decoration: InputDecoration(

          border: InputBorder.none,
          // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Номер телефона',
        )
    );
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: passwordObscured,
      onSaved: (value) {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        border: InputBorder.none,

        // contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Пароль',

        // filled: true,
        // fillColor: Color(0xffEDEDEF),
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

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainScreen()));
        },
        child: Text(
          'Войти',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(),
              Column(
                children: [
                  Image.asset(
                    'assets/doc.png',
                    fit: BoxFit.contain,
                    width: 144,
                    height: 58,
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Вход',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFEDEDEF),
                    ),
                    child: phoneField,
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
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasswordState()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Забыли пароль?',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xff444444)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  loginButton,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'У вас нету аккаунта? ',
                    style: TextStyle(color: Color(0xff444444)),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  RegistrationScreen()));
                    },
                    child: Text(
                      'Зарегистрироваться',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xffFFB951)),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

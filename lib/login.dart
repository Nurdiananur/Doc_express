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
      keyboardType: TextInputType.emailAddress,
      onSaved: (value)
      {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Номер телефона',
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
          fillColor: Color(0xffEDEDEF)
      ),
    );
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: passwordObscured,
      onSaved: (value)
      {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(

        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Пароль',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        filled: true,
        fillColor: Color(0xffEDEDEF),
        suffixIcon: IconButton(
            onPressed: () {
              setState((){
                passwordObscured = !passwordObscured;
              });
            },
            icon: Icon(
              passwordObscured ? Icons.visibility_off
                  : Icons.vignette,
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MainScreen()));
        },
        child: Text('Войти',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),

    );
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 100),
                    SizedBox(height: 100,
                      child: Container(
                        width: 144,
                        height: 58,
                        child: Image.asset('assets/doc.jpg',
                          fit: BoxFit.contain,),
                      ),),
                    SizedBox(height: 50),
                    Text('Выход', style: TextStyle(fontSize: 18), ),
                    SizedBox(height: 50,),
                    phoneField,SizedBox(height: 10),
                    passwordField, SizedBox(height: 15),
                    GestureDetector(onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PasswordState()
                          ));
                    },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text('Забыли пароль?', style: TextStyle(

                            fontWeight:
                            FontWeight.w600,
                            fontSize: 15,
                            color: Color(0xff444444)
                        ),

                        ),
                      ),),

                    SizedBox(height: 15),
                    loginButton,SizedBox(height: 80),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('У вас нету аккаунта? ', style: TextStyle(color: Color(0xff444444)),),
                        GestureDetector(onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => RegistrationScreen()));
                        },
                          child: Text('Зарегистрироваться', style: TextStyle(
                              fontWeight:
                              FontWeight.w600, fontSize: 15,
                              color: Color(0xffFFB951)
                          ),

                          ),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
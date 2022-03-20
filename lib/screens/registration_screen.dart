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

  setSelectedRadio(int val){
    setState(() {
      selectedRadio = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    final phoneNumberField = TextFormField(
      autofocus: false,
      controller: phoneNumberEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value)
      {
        phoneNumberEditingController.text = value!;
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
    final fioField = TextFormField(
      autofocus: false,
      controller: fioEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value)
      {
        fioEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'ФИО',
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
      obscureText: true,
      onSaved: (value)
      {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
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



    final passwordEditingField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      onSaved: (value)
      {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Повторите пароль',
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

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(15),
      color: Color(0xffFFB951),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => LastScreen()));
        },
        child: Text('Зарегистироваться',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
          ),
        ),
      ),
    );



      return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Container(
              color: Colors.white,
              child: Form(
                key: _formKey,
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
                    SizedBox(height: 25),
                    Text('Регистрация'),
                    SizedBox(height: 50),
                    phoneNumberField,SizedBox(height: 25),
                    fioField, SizedBox(height: 15),
                    passwordField,SizedBox(height: 15),

                    passwordEditingField ,SizedBox(height: 21),
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
               Radio(
                 value: 1,
                 groupValue: 0,
                 activeColor: Colors.blue,
                 onChanged: (val){
                   print('Radio$val');

                 },
               ),
               Text(
                 'Соглашаюсь с условиями пользования'),
             ],
           ),
                         Row(

                           children: [
                             Radio(
                               value: 1,
                               groupValue: 0,
                               activeColor: Colors.blue,
                               onChanged: (val){
                                 print('Radio$val');

                               },
                             ),
                             Text(
                                 'Соглашаюсь с условиями пользования'),
                           ],
                         ),
                         SizedBox(height: 31),

                       ],
                      ),
                    signUpButton, SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('У вас есть аккаунт? '),
                        GestureDetector(onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                          child: Text('Войти', style: TextStyle(
                              fontWeight:
                              FontWeight.w600, fontSize: 15,
                            color: Color(0xffFFB951)
                          ),

                          ),)
                      ],
                    ),
                    SizedBox(height: 55),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ) ;
  }
}

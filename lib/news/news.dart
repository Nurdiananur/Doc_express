import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/news/news2.dart';
import 'package:doc_express/profile/profile.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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

        home: News1(),
      ),
    );
  }
}


class News1 extends StatefulWidget {
  const News1({Key? key}) : super(key: key);

  @override
  State<News1> createState() => _News1State();
}

class _News1State extends State<News1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Новости',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Profile()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 3, right: 3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(image: AssetImage('assets/Rec.png'),),
                   Padding(
                     padding: const EdgeInsets.only(left: 3),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                         TextButton(onPressed: (){
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) => NewsScreen()));
                         }, child: Text('News'),

                         ),
                          SizedBox(
                            height: 5,
                          ),

                          Text(
 '''Lorem ipsum dolor sit
amet, consectetur
adipiscing elit. ''',style: TextStyle(fontSize: 14),),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
 '''Dolor, amet in interdum leo. 
Tortor dui sit viverra fames
turpis semper est, tortor. 
Habitant interdum interdum 
tortor, et lectus sollicitudin sit 
lectus nunc...''')
                        ],
                      ),
                   ),


          ],
        ),
      ),
            Divider(color: Colors.black12,
              indent: 5,
              endIndent: 5,
              height: 40,
              thickness: 1,
            ),
            Row(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage('assets/Rectangle.png'),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 76,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff6DA8FF)
                        ),
                        child: Center(child: Text('Акция',style: TextStyle(color: Colors.white),)),
                      ),
                      Text(
                        '''Lorem ipsum dolor sit
amet, consectetur
adipiscing elit. ''',style: TextStyle(fontSize: 14),),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          '''Dolor, amet in interdum leo. 
Tortor dui sit viverra fames
turpis semper est, tortor. 
Habitant interdum interdum 
tortor, et lectus sollicitudin sit 
lectus nunc...'''),
                    ],
                  ),
                ),
              ],
            ),
      Divider(color: Colors.black12,
        indent: 5,
        endIndent: 5,
        height: 40,
        thickness: 1,
      ),
      Row(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('assets/img.png'),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 76,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff6DA8FF)
                    ),
                    child: Center(child: Text('Акция',style: TextStyle(color: Colors.white),)),
                  ),
                  Text(
                    '''Lorem ipsum dolor sit
amet, consectetur
adipiscing elit. ''',style: TextStyle(fontSize: 14),),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      '''Dolor, amet in interdum leo. 
Tortor dui sit viverra fames
turpis semper est, tortor. 
Habitant interdum interdum 
tortor, et lectus sollicitudin sit 
lectus nunc...'''),
                ],
              ),
            ),
      ]
    ),
      ]
    ),
      )
      );

  }
}

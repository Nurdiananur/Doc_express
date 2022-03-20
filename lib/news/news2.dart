import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/profile/profile.dart';


class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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

        home: NewsScreen1(),
      ),
    );
  }
}




class NewsScreen1 extends StatefulWidget {
  const NewsScreen1({Key? key}) : super(key: key);

  @override
  State<NewsScreen1> createState() => _NewsScreen1State();
}

class _NewsScreen1State extends State<NewsScreen1> {
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
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/Rec.png')),
              Text('Lorem ipsum dolor sit amet, sectetur adipiscing elit. ', style: TextStyle(
                fontSize: 20,
              ),),
              SizedBox(
                height: 5,
              ),

              Text('''Sed ut perspiciatis unde omnis iste natus error sit
 voluptatem accusantium doloremque laudantium, 
totam rem aperiam, eaque ipsa quae ab illo 
inventore veritatis et quasi architecto beatae vitae 
dicta sunt explicabo. Nemo enim ipsam voluptatem 
quia voluptas sit aspernatur aut odit aut fugit, sed
quia consequuntur magni dolores eos qui ratione 
 voluptatem sequi nesciunt. Neque porro quisquam 
est, qui dolorem ipsum quia dolor sit amet,
consectetur, adipisci velit, sed quia non numquam 
eius modi tempora incidunt ut labore et dolore 
magnam aliquam quaerat voluptatem. Ut enim ad 
minima veniam, quis nostrum exercitationem ullam
corporis suscipit laboriosam, nisi ut aliquid ex ea 
commodi consequatur? Quis autem vel eum iure
reprehenderit qui in ea voluptate velit esse quam nihil 
molestiae consequatur, vel illum qui dolorem eum 
fugiat quo voluptas nulla pariatur? ''', style: TextStyle(
                fontSize: 14,
              ),),
              Divider(color: Colors.black12,
                indent: 5,
                endIndent: 5,
                height: 40,
                thickness: 1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Другие новости', style: TextStyle(fontSize: 20),),
                  SizedBox(
                    height: 5,
                  ),
        Row(
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
      Divider(color: Colors.black12,
        indent: 5,
        endIndent: 5,
        height: 40,
        thickness: 1,
      ),

                  Row(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Image(image: AssetImage('assets/Rectangle.png'),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
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
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Image(image: AssetImage('assets/img.png'),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}














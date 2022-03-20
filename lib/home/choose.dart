import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/main_screen.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
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

        home: ChooseScreen(),
      ),
    );
  }
}



class ChooseScreen1 extends StatefulWidget {




  @override
  State<ChooseScreen1> createState() => _ChooseScreen1State();
}

class _ChooseScreen1State extends State<ChooseScreen1> {
          @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(' Выберите регион',
            style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

    ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MainScreen())
        );
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),


      body: Column(
        children: [


        ],
      ),);}
}
class Entry{
  final String title;
  final List<Entry>
       children;
  Entry (this.title, [this.children = const <Entry> []]);
}

final List<Entry> data = <Entry>[
  Entry(
    'г.Бишкек',
    <Entry>[

      Entry('Октябрьский район'),
      Entry('Первомайский район'),
      Entry('Ленинский район'),
      Entry('Свердловский район')
        ]
          
      ),
  Entry('г.Ош',
    <Entry>[
      Entry('Октябрьский район'),
      Entry('Первомайский район'),
      Entry('Ленинский район'),
      Entry('Свердловский район')
    ]
  ),
  Entry('г.Баткен',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Жалал Абад',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Нарын',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Нарын',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Алай',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Бакай Ата',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),

];
class EntryItem extends StatelessWidget {

  // bool selected = false;
  const EntryItem(this.entry);
 final Entry entry;

  Widget _buildTiles(Entry root) {

    if (root.children.isEmpty){
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),

      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildTiles(entry);
  }
}




















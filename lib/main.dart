import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secret_recipe/fragment/breakfast_fragment.dart';
import 'package:secret_recipe/fragment/desert_fragment.dart';
import 'package:secret_recipe/fragment/meal_fragment.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bahan Makanan',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() =>_MainPageState();
}

class _MainPageState extends State<MainPage>{

  final List<Widget> _children = [BreakfastScreen(), DesertScreen(), MealScreen()];
  String title = 'Breakfast';
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 2,
        centerTitle: true,
        title: Text(
            title,
            style: TextStyle(
              color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50.0,
        index: 0,
        items: <Widget>[
          Container(
            child: Icon(Icons.free_breakfast, size: 30,color: Colors.white,),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Icon(Icons.fastfood, size: 30, color: Colors.white,),
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Icon(Icons.add_comment, size: 30, color: Colors.white,),
            padding: EdgeInsets.all(5),
          )
        ],
        color: Color.fromRGBO(48, 46, 46, 1.0),
        buttonBackgroundColor: Color.fromRGBO(48, 46, 46, 1.0),
        backgroundColor: Colors.black,
        animationCurve: Curves.easeInOutCirc,
        animationDuration: Duration(milliseconds: 500),
        onTap: (index){
          switch (index){
            case 0:
              setState(() {
                page = 0;
                title = "Breakfast";
              });
              break;
            case 1:
              setState(() {
                page = 1;
                title = "Dessert";
              });
              break;
            case 2:
              setState(() {
                page = 2;
                title = "Other Meals";
              });
              break;
          }
        },
      ),
      body: _children[page],
    );
  }
}

//showSnackBar(BuildContext context, Meal meal) {
//  String strMeal = meal.title;
//  final snackBar = SnackBar(
//    content: Text('Do you want to see $strMeal details ?'),
//    action: SnackBarAction(
//      label: 'Yes',
//      onPressed: () {
//        Navigator.push(
//            context,
//            PageRouteBuilder(
//              transitionDuration: Duration(milliseconds: 800),
//              pageBuilder: (BuildContext context, Animation<double> animation,
//                  Animation<double> secondaryAnimation) =>
//                  DetailScreen(item: meal.title, item2: meal.image, item3: meal.desc,),
//            ));
//      },
//    ),
//  );
//  Scaffold.of(context).showSnackBar(snackBar);
//}
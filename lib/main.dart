import 'package:dyp/clubs.dart';
import 'package:dyp/examportal.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:get/get.dart';
import 'package:animated_drawer/views/animated_drawer.dart';
import 'quiz.dart';
import 'payments.dart';
import 'clubs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'DYP '
            'EDUCATION COMPLEX',
        home: AnimatedSplashScreen(
            duration: 1000,
            splash: 'IMAGES/DYP.jpg',
            splashIconSize: 150,
            nextScreen: Homepage(),
            splashTransition: SplashTransition.rotationTransition,
            backgroundColor: Colors.black));
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget image = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('IMAGES/IU .jpeg'),
          AssetImage('IMAGES/front.jpeg'),
          AssetImage('IMAGES/av.jpeg'),
          AssetImage('IMAGES/medical college.jpeg'),
          NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeJRJDqjaUrdKtg_1amMYI-i1oGdkntRoJag&usqp=CAU')
        ],
        dotSize: 3.0,
        dotColor: Colors.black,
        indicatorBgPadding: 5,
        showIndicator: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'DYP',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          image,
          SizedBox(
            height: 03,
          ),
          Column(
            children: [
              Center(
                child:
                Text(
                  'RECENT ALERTS',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w900,
                      fontSize: 30),
                ),
              ),
              Image(
                image: NetworkImage(
                    'https://media0.giphy.com/media/3otO6zntMrmhpvaYX6/200w.webp?cid=ecf05e47muzmxa93xuw6bm2dh4tlvsnkc0zus2nyjn7c65me&rid=200w.webp&ct=g'),
              ),
              Text('14 COLLEGES 1 BRAND ', style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red

              ),),

              Text(
                ' OUR DIGNITARIES ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Image(
                image: AssetImage('IMAGES/sanjay.jpeg'),
              ),
              Text('VICE CHANCELLOR',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              ),),
              Image(image: AssetImage('IMAGES/anupa.jpeg')),
              Text('DYPIEMR Principal', style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),)



            ],
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('MANAS LOHE'),
              accountEmail: Text('manu.lohe19@gmail.com'),
              currentAccountPicture: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                title: Text('Home Page'),
              ),
            ),
            InkWell(

              onTap: () {},
              child: ListTile(

                leading: Icon(
                  Icons.subject,
                  color: Colors.green,
                ),
                title: Text('Academics'),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(clubs());
              },
              child: ListTile(
                leading: Icon(
                  Icons.people,
                  color: Color.fromARGB(255, 55, 0, 255),
                ),
                title: Text('Clubs'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.assignment,
                  color: Colors.black,
                ),
                title: Text('Assignments'),
              ),
            ),
            InkWell(
              onTap: () => Get.to(welcomexam()),
              child: ListTile(
                leading: Icon(
                  Icons.pending_actions,
                  color: Colors.black,
                ),
                title: Text('Exams'),
              ),
            ),
            InkWell(
              onTap: () => Get.to(payments()),
              child: ListTile(
                leading: Icon(
                  Icons.payment,
                  color: Colors.blue,
                ),
                title: Text('Payments'),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
                title: Text('settings'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
                title: Text('about'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

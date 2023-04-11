import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:tic_tac_toe/SplashScreen.dart';
import 'package:tic_tac_toe/play1v1.dart';
import 'package:tic_tac_toe/playBotEasy.dart';
import 'package:tic_tac_toe/playBotHard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOption = <Widget>[
      settingPage(),
      homePage(),
      analysisPage(),
  ];
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 10,
            backgroundColor: Colors.black,
            color: Colors.white,
            tabBackgroundColor: Colors.white24,
            activeColor: Colors.white,
            padding: EdgeInsets.all(18),
            tabs: const [
              GButton(
                icon: Icons.settings,
                text: "Setting",
              ),
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.analytics,
                text: "Analysis"
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
    );
  }

  Widget homePage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50,bottom: 350),
            child: SizedBox(
              width: 350,
              height: 100,
              child: Lottie.asset('assets/animation/welcome.json'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        child: const Text("Play 1v1",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => play1v1()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        child: const Text("Play Online",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        onPressed: (){},
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 25),
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        child: const Text("Bot ( Easy )",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => playBotEasy()));
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,left: 25),
                    child: Container(
                      width: 150,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        child: const Text("Bot ( Hard )",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => playBotHard()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget settingPage(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    );
  }

  Widget analysisPage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    );
  }

}

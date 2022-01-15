import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trends_app/data/dummy_data.dart';
import 'package:trends_app/ui/second_screen.dart';
import 'package:trends_app/widget/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/greenbackground2.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 130),
          child: Column(
            children: [
              Text(
                "Browse",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "find prodcast that suit to your interest",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Color(0XFFF3F3F3),
                      ),
                    ),
                    hintText: "    type keyboard",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    fillColor: Colors.white54,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage:  AssetImage('assets/images/star.png',
                      ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Populer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/increase.png'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Trending",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage:AssetImage('assets/images/history.png'),

                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Recent",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/magic.png'),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Magic",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SecondScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 329,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(40),
                      topStart: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Text(
                          "Handpicked",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                            letterSpacing: 2.0,
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: AllPost.map((e) => PostWidget(e)).toList(),

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Container(
// width: 70,
// height: 70,
// decoration: BoxDecoration(
// color: Colors.white,
// image: DecorationImage(
// image:
// AssetImage('assets/images/increase.png'),
// ),
// borderRadius: BorderRadiusDirectional.all(
// Radius.circular(40))),
// ),
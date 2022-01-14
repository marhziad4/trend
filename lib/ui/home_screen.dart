import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // extendBodyBehindAppBar: true,

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
        child: Column(
          children: [
            // Image(image:AssetImage("images/greenbackground2.jpg")),

            Text(
              "Browse",
              style: TextStyle(fontSize: 40, color: Colors.white),
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
                  Column(
                    children: [
                      CircleAvatar(child: Text("0"),backgroundColor: Colors.white,),
                      Text("populer",style: TextStyle(color: Colors.white),),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(40),
                  topStart: Radius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

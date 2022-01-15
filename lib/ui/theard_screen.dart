import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trends_app/models/post_model.dart';

class TheardScreen extends StatelessWidget {
  postModel postmodel;
  TheardScreen(this.postmodel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
      body: Container(
        child: Column(
          children: [
            Image.network(postmodel.userImg,fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 30),
              child: Row(
                children: [
                  Text(postmodel.postTitle,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),

                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.play_arrow_rounded,color: Colors.white,),
                  )
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(22.0),
               child: Text(
                postmodel.postDescription,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
            ),
             ),
          ],
        ),
      ),
    );
  }
}

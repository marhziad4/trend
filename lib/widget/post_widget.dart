import 'package:flutter/material.dart';
import 'package:trends_app/models/post_model.dart';
import 'package:trends_app/ui/third_screen.dart';

class PostWidget extends StatelessWidget {
  postModel postmodel;

  PostWidget(this.postmodel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ThirdScreen(
                  postmodel
                );
              },
            ),
          );
        },
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(30)),
                image: DecorationImage(image: NetworkImage(postmodel.postImg),fit:BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    postmodel.postTitle,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 110),
                    child: Text(
                      postmodel.postCreator.userName,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

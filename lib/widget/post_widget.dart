import 'package:flutter/material.dart';
import 'package:trends_app/models/post_model.dart';

class PostWidget extends StatelessWidget {
  postModel postmodel;
  PostWidget(this.postmodel);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Container(
            width: 120,height: 120,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadiusDirectional.all(Radius.circular(30)),
           image: DecorationImage(
             image: NetworkImage(postmodel.userImg,)
           ),
            ),

           ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(postmodel.postTitle,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text(postmodel.userName,style: TextStyle(fontSize: 11,color: Colors.black54,),),

              ],
            ),
          )
        ],

    );
  }
}

import 'package:trends_app/models/user_model.dart';

class postModel{
  String postImg;
  String postTitle;
  String postDescription;
  userModel postCreator;
  postModel({this.postImg,this.postTitle,this.postDescription,this.postCreator});
}
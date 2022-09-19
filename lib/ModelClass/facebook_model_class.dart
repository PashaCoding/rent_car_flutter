import 'package:flutter/material.dart';
class FacebookModel{
  /*{
    "email" = "dsmr.apps@gmail.com",
    "id" = 3003332493073668,
    "name" = "Darwin Morocho",
    "picture" = {
        "data" = {
            "height" = 50,
            "is_silhouette" = 0,
            "url" = "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=3003332493073668",
            "width" = 50,
        },
    }
}
   */
 final String? email;
 final String? id;
 final String? name;
 final PictureModel? picture;

 const FacebookModel({this.email, this.id, this.name, this.picture});
 factory FacebookModel.fromJson(Map<String,dynamic> json){
   return FacebookModel(
   email:json['email'],
 id:json['id'] as String?,
 name:json['name'],
 picture:PictureModel.fromJson(json['picture']['data']));
 }


}
class PictureModel{
final String? url;
final double? height;
final double? width;

const PictureModel({this.url, this.height, this.width});
factory PictureModel.fromJson(Map<String,dynamic> json){
  return PictureModel(
    url:json['url'],
    height:json["height"],
    width:json['width']

  );
}
}
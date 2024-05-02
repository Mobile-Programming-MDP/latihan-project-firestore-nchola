import 'package:flutter/material.dart';
import 'package:flutter_gravatar/flutter_gravatar.dart';
import 'package:flutter_gravatar/utils.dart';
import 'package:latihanfirestore/userdata.dart';

class userItem extends StatefulWidget {
  userData UserData;
  userItem(this.UserData);

  @override
  State<userItem> createState() => _userItemState();
}

class _userItemState extends State<userItem> {
  Gravatar ? gravatar;

  @override
  void initState(){
    //nilai default yang digunakan untuk menampilkan
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    gravatar = Gravatar(widget.UserData.email);
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(gravatar!.imageUrl()), 
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.UserData.nama,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("NPM : " +
                    widget.UserData.umur.toString() +
                    " " +
                    "Email : " +
                    widget.UserData.email),
              ],
            ),
          )
        ],
      ),
    );
  }
}
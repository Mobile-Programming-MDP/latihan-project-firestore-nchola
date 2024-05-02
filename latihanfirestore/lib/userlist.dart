import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:latihanfirestore/firebase_service.dart';
import 'package:latihanfirestore/userdata.dart';
import 'package:latihanfirestore/useritem.dart';

import 'dart:developer';

class userList extends StatefulWidget {
  const userList({super.key});

  @override
  State<userList> createState() => _userListState();
}

class _userListState extends State<userList> {

  FirebaseService firebaseService = new FirebaseService();
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
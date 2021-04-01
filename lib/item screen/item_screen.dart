import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemScreen extends StatefulWidget {

  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white
      ),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Container(
                color: Colors.white,
                child: Container(
                  height: 300,
                  color: Colors.grey[600],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      BackButton(color: Colors.black),
                      Spacer(),
                      IconButton(onPressed: () {
                        setState(() {
                          liked = !liked;
                        });
                      },
                      icon: Icon(liked ? CupertinoIcons.heart_fill : CupertinoIcons.heart, color: liked ? Colors.red : Colors.grey[600], size: 32,))
                    ],
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
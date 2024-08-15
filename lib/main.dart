import 'dart:io';

import 'package:custom_widget/app_widgets/app_rounded_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
      ),
      body: Column(
        children: [
          AppRoundedBtn(
            mWidth: 100,
            bgColor: Colors.blueGrey,
            btnName: "Play",
            onTap: () {
              stdout.write("Playing...");
            },
          ),
          const SizedBox(height: 11),
          AppRoundedBtn(
            mIcon: Icons.login,
            bgColor: Colors.orange,
            btnName: "Login",
            onTap: () {
              stdout.write("Authenticating");
            },
          ),
          const SizedBox(height: 11),
          AppRoundedBtn(
            mWidth: 400,
            btnName: "Start",
            onTap: () {
              stdout.write("Starting....");
            },
          ),
          Expanded(
              child: ListView.builder(
                scrollDirection: S,
                  itemBuilder: (_,index){
            return Container(
              margin: EdgeInsets.all(11),
              height: 50,
              color: Colors.blue,
            );
          })
          ),

          Expanded(child: ListView.builder(itemBuilder: (_,index){
              return Container(
                margin: EdgeInsets.all(11),
                 height: 50,
                color: Colors.blue,
              );
          })
          )
        ],
      ),
    );
  }
}


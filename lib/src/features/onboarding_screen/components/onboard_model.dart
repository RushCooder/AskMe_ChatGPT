import 'package:flutter/material.dart';

class UnbordingContent {
  String image;
  String title;
  String discription;
  Color containerColor;

  UnbordingContent(
      {required this.image,
      required this.title,
      required this.discription,
      required this.containerColor});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Modern way to learn',
      image: 'assets/logo.png',
      containerColor: Color.fromARGB(255, 202, 172, 3),
      discription:
          "AskMe Chatgpt is a revolution platform. Interactive learning experience like no other."),
  UnbordingContent(
      title: 'The Pros',
      image: 'assets/logo.png',
      containerColor: Color(0xffC3D78A),
      discription:
          "AskMe ChatGpt is a invaluable tool for students, professionals, and lifelong learners alike. "),
  UnbordingContent(
      title: 'Accessible',
      image: 'assets/logo.png',
      containerColor: Color(0xff8AD7D7),
      discription:
          "AskMe ChatGpt brings education to the digital age, where access to information is limitless and learning is accessible anytime, anywhere"),
];

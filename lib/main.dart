import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookListPage(),
    );
  }
}

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 240, 237),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Book List'),
        backgroundColor: Color.fromARGB(255, 117, 172, 175),
      ),
      body: ListView(
        children: [
          BookCard(
              bookName: 'অবজেক্ট ওরিয়েন্টেড প্রোগ্রামিং এবং সি প্লাস প্লাস',
              authorName: 'মোঃ কামরুজ্জামান নিটন',
              rating: 4.5,
              imagePath: 'images/1.jpg',
              shortDescription:
                  'এই বইটি অবজেক্ট ওরিয়েন্টেড প্রোগ্রামিং এবং সি প্লাস প্লাস এর মৌলিক বিষয়গুলি সম্পর্কে আলোচনা করে।',
              price: '500'),
          BookCard(
              bookName: 'ডাটা স্ট্রাকচার ও এ্যলগরিদম',
              authorName: 'মাসুদ করিম',
              rating: 3.8,
              imagePath: 'images/2.png',
              shortDescription:
                  '“ডাটা স্ট্রাকচার ও এ্যলগরিদম" বইটির সম্পর্কে কিছু ধারণঃ ডেটা স্ট্রাকচার ও অ্যালগরিদম কমপিউটার বিজ্ঞানের একটি মৌলিক বিষয়। উচ্চতর ভাষায় প্রােগ্রাম রচনার ভিত হিসেবে শিক্ষা প্রতিষ্ঠানগুলােতে বিষয়টি অত্যন্ত গুরুত্ব সহকারে পড়ানাে হয়। কমপিউটারে ডেটা সংরক্ষণ ও উপস্থাপন এবং প্রােগ্রামিং কৌশল আয়ত্ত করতে ডেটা স্ট্রাকচার ও অ্যালগরিদম শিক্ষার বিকল্প নেই।পুস্তকটি রচনার জন্য অনেকগুলাে বিদেশী পুস্তক এবং পত্র-পত্রিকার সহায়তা নেয়া হয়েছে। এই পুস্তকে ডেটা স্ট্রাকচার ও এলগরিদম-এর মৌলিক বিষয়াদি আলােচনা করা হয়েছে। উপস্থাপিত তথ্যকে সহজবােধ্য করার জন্য পুস্তকটিতে শতাধিক চিত্র ব্যবহার করা হয়েছে।আর গুরুত্বপূর্ণ এলগরিদমসমূহ বাস্তবায়নের উদাহরণ হিসেবে প্রয়ােজনীয় সংখ্যক নমুনা প্রােগ্রাম দেয়া হয়েছে। এগুলাের অধ্যায়ন এবং বিশ্লেষণ একজন পাঠককে ডেটা স্ট্রাকচার ও অ্যালগ্রিদম বিষয়ে দক্ষ করে তুলতে সহায়ক হবে। ',
              price: '200'),
        ],
      ),
    );
  }
}
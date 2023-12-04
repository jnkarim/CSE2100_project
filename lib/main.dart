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

class BookCard extends StatelessWidget {
  final String bookName;
  final String authorName;
  final double rating;
  final String imagePath;
  final String shortDescription;
  final String price;

  const BookCard({
    required this.bookName,
    required this.authorName,
    required this.rating,
    required this.imagePath,
    required this.shortDescription,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 150,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(bookName, style: TextStyle(fontSize: 16)),
                      SizedBox(height: 5),
                      Text(authorName),
                      SizedBox(height: 5),
                      Text('Rating: $rating'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {
              // Navigate to Buy Now page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BuyNowPage(
                      bookName, imagePath, authorName, shortDescription, price),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
            label: Text('Buy Now'),
          ),
        ],
      ),
    );
  }
}

class BuyNowPage extends StatefulWidget {
  final String bookName;
  final String imagePath;
  final String authorName;
  final String shortDescription;
  final String price;

  const BuyNowPage(this.bookName, this.imagePath, this.authorName,
      this.shortDescription, this.price);

  @override
  _BuyNowPageState createState() => _BuyNowPageState();
}

class _BuyNowPageState extends State<BuyNowPage> {
  int selectedQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 240, 237),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Buy Now'),
        backgroundColor: Color.fromARGB(255, 117, 172, 175),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.bookName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Image.asset(
                  widget.imagePath,
                  width: 150,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text('Author: ${widget.authorName}'),
                SizedBox(height: 10),
                Text('Description: ${widget.shortDescription}'),
                SizedBox(height: 10),
                Text(
                  'Price: TK. ${widget.price}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 151, 97, 49),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Quantity: '),
                    DropdownButton<int>(
                      value: selectedQuantity,
                      onChanged: (value) {
                        setState(() {
                          selectedQuantity = value!;
                        });
                      },
                      items: List.generate(5, (index) => index + 1)
                          .map((value) => DropdownMenuItem<int>(
                                value: value,
                                child: Text(value.toString()),
                              ))
                          .toList(),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement Buy Now functionality
                    // You can access selectedQuantity here
                    print('Selected Quantity: $selectedQuantity');

                    // Show a SnackBar when Buy Now is pressed
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Your book is purchased!'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Text('Buy Now'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the first page
                    Navigator.pop(context);
                  },
                  child: Text('Go Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
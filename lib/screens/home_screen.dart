import 'package:flutter/material.dart';
import '../data/categories_data.dart';
import '../widgets/category_card.dart';
import '../widgets/news_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String newsTitle = "General News";
  String newsDescription = "Latest general news from around the world.";
  String newsImage = "assets/general.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "News",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextSpan(
                text: "Cloud",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(12),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "Categories",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              height: 100,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,

                itemBuilder: (context, index) {

                  return CategoryCard(

                    data: categories[index],

                    onTap: () {

                      setState(() {

                        newsTitle = categories[index]["title"];

                        newsDescription =
                        categories[index]["description"];

                        newsImage = categories[index]["image"];
                      });
                    },
                  );
                },
              ),
            ),

            SizedBox(height: 25),

            Text(
              "Breaking News",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            NewsCard(
              title: newsTitle,
              description: newsDescription,
              image: newsImage,
            ),
          ],
        ),
      ),
    );
  }
}
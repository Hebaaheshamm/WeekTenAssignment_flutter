import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: NewsScreen(),
    );
  }
}

class NewsScreen extends StatefulWidget {

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  List categories = [

    {
      "name": "General",
      "image": "assets/general.png",
      "title": "General News",
      "description": "This is General news",
    },

    {
      "name": "Business",
      "image": "assets/business.png",
      "title": "Business News",
      "description": "This is Business news",
    },

    {
      "name": "Sports",
      "image": "assets/sports.png",
      "title": "Sports News",
      "description": "This is Sports news",
    },

    {
      "name": "Technology",
      "image": "assets/technology.png",
      "title": "Technology News",
      "description": "This is Technology news",
    },
  ];

  String newsTitle = "General News";

  String newsDescription = "This is General news";

  String newsImage = "assets/general.png";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.white,

        centerTitle: true,

        title: Text(

          "News App",

          style: TextStyle(

            color: Colors.deepOrange,

            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(

        children: [

          SizedBox(

            height: 100,

            child: ListView.builder(

              scrollDirection: Axis.horizontal,

              itemCount: categories.length,

              itemBuilder: (context, index) {

                return GestureDetector(

                  onTap: () {

                    setState(() {

                      newsTitle =
                      categories[index]["title"];

                      newsDescription =
                      categories[index]["description"];

                      newsImage =
                      categories[index]["image"];
                    });
                  },

                  child: Container(

                    margin: EdgeInsets.all(8),

                    width: 140,

                    decoration: BoxDecoration(

                      borderRadius:
                      BorderRadius.circular(12),

                      image: DecorationImage(

                        image: AssetImage(
                          categories[index]["image"],
                        ),

                        fit: BoxFit.cover,
                      ),
                    ),

                    child: Container(

                      alignment: Alignment.center,

                      decoration: BoxDecoration(

                        borderRadius:
                        BorderRadius.circular(12),

                        color: Colors.black45,
                      ),

                      child: Text(

                        categories[index]["name"],

                        style: TextStyle(

                          color: Colors.white,

                          fontSize: 18,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 20),

          Container(

            margin: EdgeInsets.all(10),

            child: Column(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Image.asset(

                  newsImage,

                  height: 200,

                  fit: BoxFit.cover,
                ),

                SizedBox(height: 10),

                Text(

                  newsTitle,

                  style: TextStyle(

                    fontSize: 22,

                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(

                  newsDescription,

                  style: TextStyle(

                    color: Colors.grey,

                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
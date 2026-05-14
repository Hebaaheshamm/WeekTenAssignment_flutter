import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final Map data;
  final VoidCallback onTap;

  CategoryCard({
    required this.data,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return GestureDetector(

      onTap: onTap,

      child: Container(
        width: 160,
        margin: EdgeInsets.only(right: 10),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),

          image: DecorationImage(
            image: AssetImage(data["image"]),
            fit: BoxFit.cover,
          ),
        ),

        child: Container(
          alignment: Alignment.center,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black38,
          ),

          child: Text(
            data["name"],

            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
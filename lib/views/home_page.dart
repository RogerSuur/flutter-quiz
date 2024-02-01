// //  Displays the main page with category selections.
//     A GridView to display categories.
//     Each grid item will have an image and a name (from Category model).
//     On tapping a category, navigate to DetailedView.

import 'package:flutter/material.dart';
import 'package:quiz_app/utils/data.dart';
import 'package:quiz_app/views/detailed_view.dart';
import '../models/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QuizApp',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 26, 159, 94),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          },
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailedView(category: category)),
        );
      },
      child: Card(
          clipBehavior: Clip.antiAlias,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                category.imageUrl,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black.withOpacity(0.7),
                alignment: Alignment.center,
                child: Text(
                  category.name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 26, 159, 94)),
                ),
              )
            ],
          )),
    );
  }
}

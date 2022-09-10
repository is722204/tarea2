import 'package:flutter/material.dart';

class ItemMoovie extends StatelessWidget {
  final Map<String, String> movieData;
  ItemMoovie({key, required this.movieData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.network(
              "${movieData["image"]}",
              fit: BoxFit.fill,
            )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                // color: Colors.red,
                decoration: const BoxDecoration(
                    color: Color(0xEF4169d8),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(15))),
                child: Column(
                  children: [
                    Text(
                      "${movieData["title"]}",
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${movieData["description"]}",
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

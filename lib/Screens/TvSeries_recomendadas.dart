import 'package:app_laboflutter/Widget/Drawer_menu.dart';
import 'package:flutter/material.dart';

class TvSeriesRecomendada extends StatelessWidget {
  const TvSeriesRecomendada({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Recomendacion de TvSeries"),
        ),
        drawer: DrawerMenu(),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text("hola")]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButtonAnimator:
        floatingActionButton: Container(
          width: 250,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 133, 174, 240),
              borderRadius: BorderRadius.circular(15)),
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.all(10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            FloatingActionButton(
              heroTag: "fab_dislike",
              onPressed: () {},
              backgroundColor: Color.fromARGB(255, 170, 6, 6),
              child: const Icon(Icons.thumb_down_rounded),
            ),
            FloatingActionButton(
              heroTag: "fab_like",
              onPressed: () {
                print("hola");
              },
              backgroundColor: Color.fromARGB(255, 39, 123, 201),
              child: const Icon(Icons.thumb_up_alt_rounded),
            ),
            FloatingActionButton(
              heroTag: "fab_next",
              onPressed: () {
                print("Next");
              },
              child: const Icon(Icons.arrow_forward_outlined),
            )
          ]),
        ));
  }
}
import 'package:carousel_slider/carousel_slider.dart';
import 'package:departure_app/Provider/Home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class detail_page extends StatefulWidget {
  const detail_page({Key? key}) : super(key: key);

  @override
  State<detail_page> createState() => _detail_pageState();
}

class _detail_pageState extends State<detail_page> {
  TextStyle bigtext = TextStyle(fontSize: 22);
  TextStyle smalltext = TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    dynamic index = ModalRoute.of(context)!.settings.arguments;
    return Consumer<HomeProvider>(
        builder: (context,provider,child) => Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.red.shade400,
              title: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(provider.gitadata[index]['name']),
                  ),
                ],
              ),
            elevation: 0,
            leadingWidth: 30,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                      child: CarouselSlider(
                        items: provider.gitaimages[index].map(
                                (e) => Container(
                                  height: 250,
                                  width: double.infinity,
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(e),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                        ).toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          height: 250,
                          aspectRatio: 1.0,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) =>
                              provider.changeCurrentPageIndex(index),
                      ),
                      ),
                  ),
                )
                Center(
                  child: DotsIndicator(
                    dotsCount: provider.gitaimages[index].length,
                    position: provider.currentIndex,
                    decorator: DotsDecorator(
                      // activeColor: Provider.of<ThemeProvider>(context).isDark
                      //     ? Colors.green
                      //     : Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          )
          ),
    );
  }
}

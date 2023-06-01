import 'package:departure_app/Provider/Home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeProvider>(context).loanData();
    return Consumer<HomeProvider>(
        builder: (context,provider,child)=>Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:  const Text("श्रीमद भागवत गीता",
        ),
        elevation: 0,
        actions: [
          Switch(
              value: provider.isDark,
              onChanged: (value) => provider.isDark = value,
          )
        ],
      ),
          body: Column(
            children: [
              Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 8,
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                      ),
                      itemCount: provider.gitadata.length,
                      itemBuilder: (context,index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('detail_page',arguments: index);
                          },
                          child: Card(
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0)
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  const SizedBox(height: 15),
                                  Center(
                                    child: Image(image: NetworkImage(provider.gitadata[index]['imageName'],
                                    ),
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                  )
              )
              ],
          ),
        ),
    );
  }
}

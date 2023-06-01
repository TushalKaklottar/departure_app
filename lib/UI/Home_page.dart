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
        backgroundColor: Colors.red.shade400,
        title:  Padding(
          padding: const EdgeInsets.only(left: 10),
          child: const Text("श्रीमद भागवत गीता",
            style: TextStyle(fontSize: 18),
          ),
        ),
        elevation: 0,
        actions: [
          Switch(
              value: provider.isDark,
              onChanged: (value) => provider.isDark = value,
          )
        ],
      ),
          backgroundColor: Colors.red.shade50,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 30,
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          childAspectRatio: 1,
                        ),
                        itemCount: provider.gitadata.length,
                        itemBuilder: (context,index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed('detail_page',arguments: index);
                            },
                            child: Card(
                              elevation: 5,
                              shadowColor: Colors.white,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 15),
                                    Center(
                                      child: CircleAvatar(
                                        radius: 50,
                                        foregroundImage: NetworkImage(provider.gitadata[index]['imageName'],),),
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      "${provider.gitadata[index]['name']}",
                                      style: const TextStyle(
                                          fontSize: 14, color: Colors.red),
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
        ),
    );
  }
}

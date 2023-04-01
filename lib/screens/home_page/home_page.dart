import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const BackButton(color: Colors.transparent),
            title: const Text(
              "My Blog",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            radius: 21,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 20,
                              child: Image(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1542395975-d6d3ddf91d6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text("Person Name"),
                        ],
                      ),
                      Image.network(
                        "https://img.freepik.com/free-vector/night-rice-field-terraces-asian-mountains-landscape-with-paddy-plantation-cascades-chinese-agricultural-farm-dark-starry-sky-with-full-moon-glowing-fireflies-cartoon-vector-illustration_107791-10584.jpg?size=626&ext=jpg",
                        width: 300,
                        height: 200,
                        fit: BoxFit.fitWidth,
                      ),
                      Text(
                        "Title",
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "The sunset filled the entire sky with the deep color of rubies, setting the clouds ablaze. The waves crashed and danced along the shore, moving up and down in a graceful and gentle rhythm like they were dancing.",
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}

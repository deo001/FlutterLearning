import 'package:flutter/material.dart';

class DayTwo extends StatelessWidget {
  const DayTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Day 2",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        leading: Icon(Icons.menu_rounded),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_shopping_cart),
            color: Colors.white,
            highlightColor: Colors.green,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.white,
            highlightColor: Colors.green,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_rounded),
            color: Colors.white,
            highlightColor: Colors.green,
          ),
        ],
        backgroundColor: Colors.blue.shade400,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "day two",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Image(
                width: 200,
                height: 200,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Zm9vZHxlbnwwfHwwfHx8MA%3D%3D")),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              verticalDirection: VerticalDirection.down,
              spacing: 12.0,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      // child: Text("Let's Begin"),
                      label: Text("Cart"),
                      icon: (Icon(Icons.shopping_cart)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(12.0),
                        textStyle:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                        side: BorderSide(color: Colors.black26, width: 1),
                        alignment: Alignment.center,
                        elevation: 8,
                        shape: StadiumBorder(),
                      ),
                    ),
                    Text("data")
                  ],
                ),
                Column(
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {},
                      // child: Text("Let's Begin"),
                      label: Text("Navigate Through"),
                      icon: (Icon(Icons.shopping_cart)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(12.0),
                        textStyle:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                        side: BorderSide(color: Colors.black26, width: 1),
                        alignment: Alignment.center,
                        elevation: 8,
                        shape: StadiumBorder(),
                      ),
                    ),
                    Text("data")
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      // child: Text("Let's Begin"),
                      label: Text("Cart"),
                      icon: (Icon(Icons.shopping_cart)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(12.0),
                        textStyle:
                            TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                        side: BorderSide(color: Colors.black26, width: 1),
                        alignment: Alignment.center,
                        elevation: 8,
                        shape: StadiumBorder(),
                      ),
                    ),
                    Text("data")
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}

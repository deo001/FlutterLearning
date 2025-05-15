import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Text("Messages"),
      ),
      backgroundColor: Colors.grey.shade50,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    spacing: 10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Data",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Click Me"))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: [
                    ListTile(
                      title: Text("Hey, Check your Subscription"),
                      subtitle: Text(
                          "It will give directions to the Payments method to access our course"),
                      trailing: IconButton(
                        splashColor: Colors.red,
                        hoverColor: Colors.green,
                        iconSize: 50.0,
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {},
                        icon: Icon(Icons.play_circle_outline_outlined),
                      ),
                      hoverColor: Colors.white,
                      tileColor: Colors.grey.shade100,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        "images/WhatsApp Image 2025-05-06 at 10.33.48_5b6e5ccf.jpg"),
                  ),
                  color: Colors.blue.shade200,
                  // borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey, width: 6),
                ),
                // child: Image(
                //   fit: BoxFit.fill,
                //   image: AssetImage(
                //       "images/WhatsApp Image 2025-05-06 at 10.33.48_5b6e5ccf.jpg"),
                //   height: 300,
                //   width: 300,
                //
                // ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(


                  color: Colors.blue.shade200,
                  // borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey, width: 6),
                ),
                child: Center(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

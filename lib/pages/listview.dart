import 'dart:ffi';

import 'package:flutter/material.dart';

class MyListview extends StatelessWidget {
  MyListview({super.key});

  List<String> products = ["bed", "SOfa", "Chair"];
  List<String> productDetails = [
    "10-Inch Mattress",
    "Bigger for Gients",
    "Take that before i crush you"
  ];
  List<int> price = [1000, 2000, 10000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Page"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_shopping_cart_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("john.doe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.pravatar.cc/150?img=3"),
              ),
              decoration: BoxDecoration(color: Colors.deepPurple),
            ),
            _buildDrawerItem(
              icon: Icons.home,
              label: 'Home',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            _buildDrawerItem(
              icon: Icons.person,
              label: 'Profile',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            _buildDrawerItem(
              icon: Icons.settings,
              label: 'Settings',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
            Divider(),
            _buildDrawerItem(
              icon: Icons.logout,
              label: 'Logout',
              onTap: () {
                Navigator.pop(context);
                // Perform logout logic
              },
              color: Colors.redAccent,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black, // for icon
        backgroundColor: Colors.blue,
        onPressed: (){},

      child:
        Icon(Icons.add),

      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.grey,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("data"),
                Icon(Icons.add),
              ],
            ),
            Column(
              children: [
                Text("data"),
                Icon(Icons.add),
              ],
            ),Column(
              children: [
                Text("data"),
                Icon(Icons.add),
              ],
            ),
            Column(
              children: [
                Text("data"),
                Icon(Icons.add),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.grey.shade50),
        child: Column(
          verticalDirection: VerticalDirection.down,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 10,
              children: [
                Text("All Products at our Stores"),
                Icon(Icons.filter_list_rounded),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      hoverColor: Colors.grey,
                      leading: CircleAvatar(
                        child: Text(products[index][0]),
                      ),
                      title: Text(products[index]),
                      subtitle: Text(productDetails[index]),
                      trailing: Text(
                        price[index].toString(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildDrawerItem({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
  Color? color,
}) {
  return ListTile(
    leading: Icon(icon, color: color ?? Colors.black),
    title: Text(
      label,
      style: TextStyle(color: color ?? Colors.black),
    ),
    hoverColor: Colors.grey.shade200,
    onTap: onTap,
  );
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: GridTile(
                  child: Stack(children: [
                    Positioned(
                      top: -3, 
                      bottom: -9,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image.asset("assets/img/1.jpg"),
                      ),
                    ),
                  ]),
                  footer: GridTileBar( 
                    trailing: IconButton(
                        color: Color.fromARGB(255, 62, 94, 70),
                        onPressed: () {},
                        icon: Icon(Icons.add)),
                    leading: Text("\$12.99"),
                    title: Text( "",),
                  ),
                ),
              ); 
            }), 
      ), 
      drawer: Drawer(  
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/pk.jpg"),
                      fit: BoxFit.cover),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 55,  
                  backgroundImage: AssetImage ("assets/img/my.jpg"),
                ),
                accountEmail: Text("Abdallah@yahoo.com"),
                accountName: Text("Abdallah Mohamed",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    )), 
              ),
              ListTile(
                  title: Text("Home"), leading: Icon(Icons.home), onTap: () {}),
              ListTile(
                  title: Text("My products"),
                  leading: Icon(Icons.add_shopping_cart), 
                  onTap: () {}),
              ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {}),
              ListTile( 
                  title: Text("Logout"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {}), 
            ],
          ),
          Container( 
            margin: EdgeInsets.only(bottom: 12),
            child: Text("Developed by Ali Hassan © 2022",
                style: TextStyle(fontSize: 16)),
          )
        ],
      )),  
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 141, 95),
        title: Text("Home"),
        actions: [
          Row(
            children: [ 
              Stack( 
                children: [
                  Container(
                      child: Text( 
                        "8",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(211, 164, 255, 193),
                          shape: BoxShape.circle)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("\$ 128"),
              )
            ], 
          ) 
        ],
      ),
    );
  }
}

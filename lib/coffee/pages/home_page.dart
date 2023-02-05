import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon buttonSearch = const Icon(Icons.search);
  Widget titleAppBar = const Text("");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: _buildDrawer(),
      bottomNavigationBar: _builButtonAppBar(),
      body: _buildCoffeeCard(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 3.0,
      title: titleAppBar,
      centerTitle: false,
      backgroundColor: const Color.fromARGB(255, 1, 48, 25),
      actions: [
        IconButton(
          icon: buttonSearch,
          onPressed: () {
            setState(
              () {
                if (buttonSearch.icon == Icons.search) {
                  buttonSearch = const Icon(Icons.close);
                  titleAppBar = const TextField(
                    autofocus: true,
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  );
                } else {
                  buttonSearch = const Icon(Icons.search);
                  titleAppBar = const Text("");
                }
              },
            );
          },
        ),
      ],
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/photographer.jpg'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: ExpansionTile(
              title: Text('Favourites'),
              leading: Icon(Icons.favorite),
              children: <Widget>[],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: ExpansionTile(
              initiallyExpanded: false,
              title: Text('Orders'),
              leading: Icon(Icons.shop_2_outlined),
              children: <Widget>[],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: ExpansionTile(
              initiallyExpanded: false,
              title: Text('Profile'),
              leading: Icon(Icons.account_circle),
              children: <Widget>[],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: ExpansionTile(
              initiallyExpanded: false,
              title: Text('Addresss'),
              leading: Icon(Icons.location_on),
              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }

  Widget _builButtonAppBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 1, 48, 25),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      // onTap: (value) {},
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Group"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
    );
  }

  Widget _buildCoffeeCard() {
    return Stack(
      children: [
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/e/ed/Wet_Cappuccino_with_heart_latte_art.jpg',
            fit: BoxFit.fill,
            width: 600,
            height: 200,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: const EdgeInsets.all(8.0),
        ),
      ],
    ); //Card
  }
}

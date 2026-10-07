import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ShoppingHome(),
    );
  }
}

class ShoppingHome extends StatefulWidget {
  @override
  State<ShoppingHome> createState() => _ShoppingHomeState();
}

class _ShoppingHomeState extends State<ShoppingHome> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    ProductsScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Products',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping App'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 100,
              color: Colors.deepPurple,
            ),

            SizedBox(height: 20),

            Text(
              'Welcome to Shopping App',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text('Shop your favourite products'),
          ],
        ),
      ),
    );
  }
}

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Card(
            child: ListTile(
              leading: Icon(
                Icons.headphones,
                size: 40,
              ),
              title: Text('Wireless Headphones'),
              subtitle: Text('₹1,499'),
              trailing: Icon(Icons.add_shopping_cart),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.watch,
                size: 40,
              ),
              title: Text('Smart Watch'),
              subtitle: Text('₹2,999'),
              trailing: Icon(Icons.add_shopping_cart),
            ),
          ),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.phone_android,
                size: 40,
              ),
              title: Text('Smartphone'),
              subtitle: Text('₹14,999'),
              trailing: Icon(Icons.add_shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 90,
              color: Colors.deepPurple,
            ),

            SizedBox(height: 20),

            Text(
              'Your Cart',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text('No items added to cart'),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'My Profile',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text('Name: Student'),
            Text('Email: student@example.com'),
          ],
        ),
      ),
    );
  }
}
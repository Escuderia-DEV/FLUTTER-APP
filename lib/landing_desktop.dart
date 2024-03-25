import 'package:flutter/material.dart';

class LandingDesktop extends StatefulWidget {
  const LandingDesktop({super.key});

  @override
  State<LandingDesktop> createState() => _StateLandingDesktop();
}

class _StateLandingDesktop extends State<LandingDesktop> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Media'),
            SizedBox(width: 8.0), // Add some space between the two words
            Text('Master'),
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue, // Change this to your desired color
              child: const Column(
                children: [
                  Text('Some text'),
                  // Add your login screen widget here
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                // Lado derecho de la pantalla
                // Iconos seleccion busqueda
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        _onItemTapped(0);
                      },
                      child: Icon(
                        Icons.home,
                        color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
                        size: 30.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _onItemTapped(1);
                      },
                      child: Icon(
                        Icons.search,
                        color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                        size: 30.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _onItemTapped(2);
                      },
                      child: Icon(
                        Icons.notifications,
                        color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
                        size: 30.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _onItemTapped(3);
                      },
                      child: Icon(
                        Icons.settings,
                        color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
                // Barra de busqueda
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
                // Cuadro informacion resultado busqueda
                Expanded(
                  child: Container(
                    color: Colors.grey, // Change this to your desired color
                    child: const Center(
                      child: Text('Search results'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

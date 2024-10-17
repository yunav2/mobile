import 'package:flutter/material.dart';

class LandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landpage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10), // Jarak kiri
                _IconWidget(Icons.facebook),
                SizedBox(width: 10), // Jarak antara icon
                _IconWidget(Icons.person),
                SizedBox(width: 10), // Jarak kanan
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10), // Jarak kiri
                _IconWidget(Icons.home),
                SizedBox(width: 10), // Jarak antara icon
                _IconWidget(Icons.settings),
                SizedBox(width: 10), // Jarak kanan
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

class _IconWidget extends StatelessWidget {
  final IconData icon;

  const _IconWidget(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, size: 40, color: Colors.white),
    );
  }
}

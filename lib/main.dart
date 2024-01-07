import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table of Items'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: DataTable(
        columns: [
          DataColumn(label: Text('Image')),
          DataColumn(label: Text('Item')),
          DataColumn(label: Text('Description')),
          DataColumn(label: Text('Price')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Image.network('https://images.unsplash.com/photo-1461988320302-91bde64fc8e4?ixid=2yJhcHBfaWQiOjEyMDd9')),
            DataCell(Text('Item 1')),
            DataCell(Text('Description for Item 1')),
            DataCell(Text('\$19.99')),
          ]),
          DataRow(cells: [
            DataCell(Image.network('https://images.unsplash.com/photo-1461988320302-91bde64fc8e4?ixid=2yJhcHBfaWQiOjEyMDd9')),
            DataCell(Text('Item 2')),
            DataCell(Text('Description for Item 2')),
            DataCell(Text('\$29.99')),
          ]),
          DataRow(cells: [
            DataCell(Image.network('https://images.unsplash.com/photo-1461988320302-91bde64fc8e4?ixid=2yJhcHBfaWQiOjEyMDd9')),
            DataCell(Text('Item 3')),
            DataCell(Text('Description for Item 3')),
            DataCell(Text('\$39.99')),
          ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink[700],
        child: Text(
          'Items',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

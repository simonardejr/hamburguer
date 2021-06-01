import 'package:flutter/material.dart';
import 'package:hambuguer/ui/escolhido.dart';

class Hamburguer extends StatelessWidget
{
  final List sanduiches = [
    ['Big Mac', 'Loren Ipsum Loren Ipsum Loren', '30.99'],
    ['Quarteirão', 'Loren Ipsum Loren Ipsum', '12.00'],
    ['Cheddar McMelt', 'Loren Ipsum Loren Ipsum Loren', '17.50'],
    ['Chicken Supreme', 'Loren Ipsum', '27.90'],
    ['Big Tasty', 'Loren Ipsum Loren Ipsum', '32.80'],
    ['Big Mac', 'Loren Ipsum Loren Ipsum Loren', '30.99'],
    ['Quarteirão', 'Loren Ipsum Loren Ipsum', '12.00'],
    ['Cheddar McMelt', 'Loren Ipsum Loren Ipsum Loren', '17.50'],
    ['Chicken Supreme', 'Loren Ipsum', '27.90'],
    ['Big Tasty', 'Loren Ipsum Loren Ipsum', '32.80'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'MACDONALDE',
            style: TextStyle(color: Color(0xFFf99552))
        ),
        backgroundColor: Color(0xFF8e131b),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                size: 26.0,
              ),
            )
          ),
        ]
        ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: sanduiches.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print(sanduiches[index]);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (page) => Escolhido(sanduiche: sanduiches[index],))
              );
            },
            child: Container(
              height: 100,
              margin: EdgeInsets.all(2),
              color: Color(0xFFE4E4E5),
              child: Row(
                children: [
                  Image.asset('assets/sanduiche.png'),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 3),
                            child: Text(
                              '${sanduiches[index][0]}',
                              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '${sanduiches[index][1]}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              'R\$ ${sanduiches[index][2]}',
                              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ]
                    )
                  ),
                ],
              ),
            ),
          );
        }
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:hambuguer/ui/hamburguer.dart';

class Escolhido extends StatelessWidget
{
  List sanduiche = [];

  Escolhido({required this.sanduiche});

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
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                padding: new EdgeInsets.all(0.0),
                icon: new Icon(Icons.arrow_back, size: 38.0),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (page) => Hamburguer())
                  );
                },
                alignment: Alignment.topLeft,
              ),
            ),
          ),
          Image.asset('assets/big.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Text(
                  '${sanduiche[0]}',
                  style: TextStyle(
                      fontSize: 35
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Center(
                child: Text(
                  '${sanduiche[1]}',
                  style: TextStyle(
                      fontSize: 18
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
                child: Text(
                  'Preço: ${sanduiche[2]}',
                  style: TextStyle(
                      fontSize: 25
                  ),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55, right: 20, left: 20),
            child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    child: Text('COMPRAR AGORA'),
                    style: TextButton.styleFrom(
                      primary: Color(0xFF8E121A),
                      backgroundColor: Color(0xFFf99552),
                      onSurface: Colors.grey,
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: Text("Cancelar"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Confirmar"),
      onPressed:  () {
        Navigator.of(context).pop();
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(""),
      content: Text("Deseja confirmar o pedido?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

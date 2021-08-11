import 'package:flutter/material.dart';

class HomePageTemp extends StatefulWidget {
  @override
  _HomePageTempState createState() => _HomePageTempState();
}

class _HomePageTempState extends State<HomePageTemp> {
  int _paginaActual = 0;
  final opciones = [
    'Remy - Dueño de Ok Computer',
    'Remy - Dueño de Ok Computer',
    'Ing Yudmir',
    'Ing Yudmir',
    'Ing Yudmir',
    'David Bustamante',
    'Ing Noema',
    'David Bustamante',
    'David Bustamante',
    'David Bustamante',
    'Ing Noema',
    'David Bustamante',
    'David Bustamante'
  ];
  final tabs = [
    Center(child: Text("PAGE ESTRLLITAS")),
    Center(child: Text("PAGE TIJERITTAS")),
    Center(child: Text("PAGE MENUS")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.perm_phone_msg,
          size: 45.0,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Call',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Text(
              'Recorder',
              style: TextStyle(
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                size: 35.0,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.more_vert,
                size: 35.0,
              ),
              onPressed: () {}),
        ],
      ),
      body: //tabs[_paginaActual],
          ListView(
        // children: _crearItems()
        children: _crearItemsCorta(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tty,
            ),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grade,
            ),
            label: 'Guardado',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.content_cut,
            ),
            label: 'Editados',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Más',
          ),
        ],
        iconSize: 40.0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black45,
        selectedFontSize: 20.0,
        unselectedFontSize: 18.0,
        //showUnselectedLabels: true,
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((item) {
      return Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(8.0),
            leading: Icon(Icons.account_circle, size: 60.0),
            title: Text(
              item,
              style: TextStyle(fontSize: 21, color: Colors.grey),
            ),
            subtitle: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.forward,
                    size: 20.0,
                    color: Colors.green,
                  ),
                ),
                Text(
                  'Ayer 17:30',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                )
              ],
            ),
            trailing: Container(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                '6:07',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {},
          ),
        ],
      );
    }).toList();
    return widgets;
  }
}

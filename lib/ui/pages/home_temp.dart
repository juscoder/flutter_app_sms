import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Remy - Dueño de Ok Computer',
    'Remy - Dueño de Ok Computer',
    'Ing Yudmir',
    'Ing Yudmir',
    'Ing Yudmir',
    'David Bustamante',
    'Ing Noema',
    'David Bustaante'
  ];
  final tabs = [
    Center(child: Text("PAGE INBOXS")),
    Center(child: Text("PAGE ESTRELLAS")),
    Center(child: Text("PAGE TARJETAS")),
    Center(child: Text("PAGE MENUS")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.perm_phone_msg,
            size: 40.0,
          ),
          title: Column(
            children: [
              Text(
                "Call",
                textAlign: TextAlign.start,
              ),
              Text(
                "Recorder",
                textAlign: TextAlign.center,
              ),
            ],
          ),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => null,
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () => null,
            ),
          ],
        ),
        body: ListView(
            // children: _crearItems()
            children: _crearItemsCorta()),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              title: Text('Inbox'),
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              title: Text('Guardado'),
              icon: Icon(Icons.music_note),
            ),
            BottomNavigationBarItem(
              title: Text('Editadas'),
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              title: Text('Más'),
              icon: Icon(Icons.library_books),
            ),
          ],
        ));
  }

  // Primera Forma
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

  // Otra Forma
  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((item) {
      return Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.account_circle,
              size: 50.0,
            ),
            title: Text(item),
            subtitle: Text('Ayer 17:30'),
            trailing: Text("6:07",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            //trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
    return widgets;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Colors.brown,
      ),
      accountName: Text(
        'Pass College',
      ),
      accountEmail: Text(
        'julius.coffee',
      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Image(
          image: AssetImage('assets/pass-logo.png'),
        ),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text(
            'Home',
          ),
          leading: const Icon(Icons.favorite),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text(
            'Row & Column',
          ),
          leading: const Icon(Icons.rowing_rounded),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/rowcol');

          },
        ),

        ListTile(
          title: const Text('About'),
          leading: const Icon(Icons.info),
          onTap: (){
            Navigator.pop(context);
            Navigator.pushNamed(context, '/about');
          },
        )
      ],
    );

    final FloatingActionButton btn = FloatingActionButton(
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: const Text('test'),
          action: SnackBarAction(
            label: 'Clickme',
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                'U Click me',
              )));
            },
          ),
        ));
      },
      backgroundColor: Colors.grey[600],
      child: const Icon(Icons.add),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        title: const Text('Coffee Codes'),
        elevation: 0.0,
        actions: [
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {

                  },
                  child: const Text(
                    'About',
                  ),
                ),
                PopupMenuItem(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: const Text('Exit'),
                ),
              ];
            },
          )
        ],
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
      floatingActionButton: btn,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: const Text(
                  'Flutter Tutorial',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: const Text(
                  'By Julius Biascan',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Colors.deepOrange),
                ),
              ),
              const Divider(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

import 'package:store_futures/count_store.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(_) => Provider<CountStore>(
        create: (_) => CountStore(),
        child: MaterialApp(
          routes: {'/': (_) => Home(), 'page': (_) => Page()},
          debugShowCheckedModeBanner: false,
        ),
      );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();

    final store = Provider.of<CountStore>(context, listen: false);
    final countIs = (num) => (_) => store.state == num;
    final nav = Navigator.of(context);

    when(countIs(5), () => nav.pushNamed('page'));
    when(countIs(10), nav.pop);
  }

  @override
  Widget build(context) => Consumer<CountStore>(
        builder: (_, store, __) => Scaffold(
          body: Observer(
            builder: (context) => ModalProgressHUD(
              inAsyncCall:
                  store.future?.status == FutureStatus.pending ?? false,
              child: Center(child: Text('${store.state}')),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: store.next,
          ),
        ),
      );
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<CountStore>(
        builder: (_, store, __) => Scaffold(
          body: Center(
            child: Observer(builder: (_) => Text("${store.state}")),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: store.next,
          ),
        ),
      );
}

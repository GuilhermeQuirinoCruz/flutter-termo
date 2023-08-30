import 'package:flutter/material.dart';
import 'package:termo/app/views/modo_diario.dart';
import 'package:termo/app/views/modo_infinito.dart';

enum Mode { daily, endless }

class Termo extends StatefulWidget {
  const Termo({super.key});

  @override
  State<Termo> createState() => _TermoState();
}

class _TermoState extends State<Termo> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Mode currentMode = Mode.daily;

  getCurrentMode() {
    switch (currentMode) {
      case Mode.daily:
        return const DailyMode();
      case Mode.endless:
        return const EndlessMode();
    }
  }

  closeModeDrawer() {
    if (scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.closeDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Termo',
        theme: ThemeData.dark(),
        home: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            elevation: 5,
            title: const Text('Termo'),
          ),
          drawer: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Drawer(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                children: [
                  const DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Text('Modos')),
                  ListTile(
                    leading: const Icon(Icons.hourglass_top_rounded),
                    title: const Text('Clássico'),
                    onTap: () {
                      setState(() {
                        currentMode = Mode.daily;
                      });
          
                      closeModeDrawer();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.change_circle_sharp),
                    title: const Text('Infinito'),
                    onTap: () {
                      setState(() {
                        currentMode = Mode.endless;
                      });
          
                      closeModeDrawer();
                    },
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            child: getCurrentMode(),
          ),
        ));
  }
}

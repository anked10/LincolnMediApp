import 'package:flutter/material.dart';
import 'package:form_validation/src/bloc/provider.dart';
import 'package:form_validation/src/pages/citas_page.dart';
import 'package:form_validation/src/pages/home_page.dart';
import 'package:form_validation/src/pages/login_page.dart';
import 'package:form_validation/src/pages/navtab_page.dart';
import 'package:form_validation/src/pages/paciente_page.dart';
import 'package:form_validation/src/pages/registro_page.dart';
import 'package:form_validation/src/preferencias_usuario/preferencias_usuario.dart';

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = new PreferenciasUsuario();
    print(prefs.token );

    return Provider(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'navegacion': (BuildContext context) => NavtabPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'login': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage(),
        'paciente': (BuildContext context) => PacientePage(),
        'citas': (BuildContext context) => CitasPage(),
      },
      theme: ThemeData(primaryColor: Colors.teal),
      // home: NavtabPage(),
    ));
  }
}

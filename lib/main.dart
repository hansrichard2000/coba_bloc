import 'package:coba_bloc/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/rajaongkir_bloc.dart';
import 'views/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: BlocProvider(
        create: (context) => RajaongkirBloc(),
        child: const OngkirPage(),
      ),
    );
  }
}

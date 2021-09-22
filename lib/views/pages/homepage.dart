part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coba Bloc"),
      ),
      body: BlocBuilder<ColorBloc, Color>(
        builder: (context, mycolor) {
          return Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Changing Text",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: mycolor),
                ),
                ElevatedButton(
                    onPressed: () {
                      mycolor == Colors.black
                          ? context.read<ColorBloc>().add(ColorEvent.red)
                          : context.read<ColorBloc>().add(ColorEvent.black);
                    },
                    child: const Text("Click Me")),
              ],
            ),
          );
        },
      ),
    );
  }
}

part of 'blocs.dart';

enum ColorEvent {
  red,
  black,
}

enum MahasiswaEvent { add, del, edit }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.black);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    // TODO: implement mapEventToState
    switch (event) {
      case ColorEvent.black:
        yield Colors.black;
        break;
      case ColorEvent.red:
        yield Colors.red;
        break;
    }

    // if (event == DataEvent.add) {
    //   MahasiswaService.addData();

    // }
  }
}

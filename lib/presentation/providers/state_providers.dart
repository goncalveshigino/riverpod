import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;



  void increaseByOne() {
    state++;
  }
}


@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() {
    state = !state;
  }

}

@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  String build() => "Goncalves Higino";


  void changeName( String name ) {
    state = name;
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  Future<void> onTransition(Bloc bloc, Transition transition) async {
    // ignore: prefer_interpolation_to_compose_strings, avoid_print
    print('AppBlocObserver' + transition.toString());
    super.onTransition(bloc, transition);
  }

  @override
  Future<void> onError(BlocBase bloc, Object error, StackTrace stackTrace) async {
    // ignore: avoid_print
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}

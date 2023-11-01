import 'package:flutter_modular/flutter_modular.dart';

import 'characters/presentation/bloc/character/character_bloc.dart';
import 'characters/presentation/pages/characters_page/characters_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.get<CharactersBloc>();
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const CharactersListPage());
  }
}

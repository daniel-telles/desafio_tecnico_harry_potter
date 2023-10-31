import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/bloc/character/character_bloc.dart';
import 'package:desafio_tecnico_harry_potter/modules/harry_potter/presentation/pages/characters_page/characters_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

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

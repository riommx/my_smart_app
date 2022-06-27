import 'modules/pages.dart';

class AppModule extends Module {
  //
  @override
  List<Bind> get binds => [];
  //
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => HomePage()),
        ChildRoute('/auth', child: (context, args) => AuthPage()),
      ];
}

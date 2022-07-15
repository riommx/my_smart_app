import 'modules/pages.dart';

class AppModule extends Module {
  //
  @override
  List<Bind> get binds => [];
  //
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/auth', child: (context, args) => const AuthPage()),
        ChildRoute('/form', child: (context, args) => const FormPage()),
      ];
}

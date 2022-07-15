import 'package:my_smart_app/model/library.dart';

import 'modules/pages.dart';

class AppModule extends Module {
  //
/*   @override
  List<Bind> get binds => []; */
  //
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute(
          '/auth',
          child: (context, args) => AuthPage(
            Person.fromMap(
              map: {
                'name': 'Sidx',
                'birthDate': '09/05/1974',
                'uid': '',
              },
            ),
          ),
        ),
        ChildRoute('/form', child: (context, args) => const FormPage()),
      ];
}

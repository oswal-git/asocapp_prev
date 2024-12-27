import 'package:asocapp/app/data/repositories/repositories.dart';

// class LoginIn implements AuthRepository {
//   @override
//   Future<Either<Failure, UserAsocResult>> login(String username, int asociationId, String password) {
//     throw UnimplementedError();
//   }

//   @override
//   Future<Either<Failure, UserAsocResult>> registerGenericUser(
//       String username, int asociationId, String password, String question, String answer) async {
//     return authApiRest.login(username, asociationId, password);
//   }
// }

class LoginIn {
  final AuthRepository authRepository;

  LoginIn(this.authRepository);
}

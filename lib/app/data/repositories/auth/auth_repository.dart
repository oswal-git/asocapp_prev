import 'package:asocapp/app/core/error/failures.dart';
import 'package:asocapp/app/data/models/user_asoc_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserAsocResult>> registerGenericUser(
    String username,
    int asociationId,
    String password,
    String question,
    String answer,
  );

  // Reset password
  // Future<HttpResult<UserResetResponse>?> reset(String email);

  // Login user
  Future<Either<Failure, UserAsocResult>> login(String username, int asociationId, String password);

// Change password
  // Future<UserAsocResponse?>? change(String username, int asociationId, String password, String newPassword, String token);

  // end class
}

class UserAsocResult {
  final DataUser dataUser;
  final DataAsoc dataAsoc;

  UserAsocResult({
    required this.dataUser,
    required this.dataAsoc,
  });
}

class DataUser {
  final int idUser;
  final int idAsociationUser;
  final String userNameUser;
  final String emailUser;
  final int recoverPasswordUser;
  final String tokenUser;
  final int tokenExpUser;
  final String questionUser;
  final String answerUser;
  final String profileUser;
  final String statusUser;
  final String nameUser;
  final String lastNameUser;
  final String avatarUser;
  final String phoneUser;
  final String dateDeletedUser;
  final String dateCreatedUser;
  final String dateUpdatedUser;
  final int timeNotificationsUser;
  final String languageUser;

  DataUser({
    required this.idUser,
    required this.idAsociationUser,
    required this.userNameUser,
    required this.emailUser,
    required this.tokenUser,
    required this.tokenExpUser,
    required this.recoverPasswordUser,
    required this.questionUser,
    required this.answerUser,
    required this.profileUser,
    required this.statusUser,
    required this.nameUser,
    required this.lastNameUser,
    required this.avatarUser,
    required this.phoneUser,
    required this.dateDeletedUser,
    required this.dateCreatedUser,
    required this.dateUpdatedUser,
    required this.timeNotificationsUser,
    required this.languageUser,
  });
}

class DataAsoc {
  final int idAsociation;
  final String longNameAsociation;
  final String shortNameAsociation;
  final String logoAsociation;
  final String emailAsociation;
  final String nameContactAsociation;
  final String phoneAsociation;
  final String dateDeletedAsociation;
  final String dateCreatedAsociation;
  final String dateUpdatedAsociation;
  DataAsoc({
    required this.idAsociation,
    required this.longNameAsociation,
    required this.shortNameAsociation,
    required this.logoAsociation,
    required this.emailAsociation,
    required this.nameContactAsociation,
    required this.phoneAsociation,
    required this.dateDeletedAsociation,
    required this.dateCreatedAsociation,
    required this.dateUpdatedAsociation,
  });
}

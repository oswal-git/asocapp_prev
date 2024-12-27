import 'package:asocapp/app/config/config.dart';
import 'package:asocapp/app/ui/routes/router_name.dart';
import 'package:asocapp/app/ui/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              ' {context.watch<SessionService>().userConnected.userNameUser}',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.primaryTextTextColor,
              ),
            ),
            accountEmail: const Text(
              ' {context.watch<SessionService>().userConnected.shortNameAsoc}',
              style: TextStyle(
                fontSize: 20,
                color: AppColors.primaryTextTextColor,
              ),
            ),
            currentAccountPicture: InkWell(
              onTap: () {
                context.pop();
                context.go(profileRoute);
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.blue.shade900,
                // backgroundImage: context.watch<SessionService>().userConnected.avatarUser == ''
                //     ? null
                //     : NetworkImage(context.watch<SessionService>().userConnected.avatarUser),
                radius: 30,
                child: null,
                // context.watch<SessionService>().userConnected.userNameUser == ''
                //     ? null
                //     : context.watch<SessionService>().userConnected.avatarUser == ''
                //         ? Text(
                //             context.watch<SessionService>().userConnected.userNameUser.substring(0, 2).toUpperCase(),
                //             style: const TextStyle(fontSize: 30),
                //           )
                //         : null,
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                // background bar
                image: NetworkImage(EglImagesPath.iconBackgroundDrawer),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // if (context.watch<SessionService>().userConnected.profileUser == 'admin')
          ListTile(
            leading: const Icon(Icons.person_3),
            title: Text('cUsersList'.tr()),
            onTap: () {
              context.pop();
              context.go(listUsersRoute);
            },
          ),
          ListTile(
            leading: const Icon(Icons.note_add_outlined),
            title: Text('cNewArticle'.tr()),
            onTap: () {
              context.pop();
              context.go(listUsersRoute);
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('cNotifications'),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: const Center(
                  child: Text(
                    // context.watch<SessionService>().listUserMessages.isEmpty
                    // ?
                    '',
                    // : context.watch<SessionService>().listUserMessages.length.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text('cSettings'.tr()),
            onTap: () {
              context.pop();
              context.go(profileRoute);
            },
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: Text('cPolices'.tr()),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.key),
            title: Text('cChangePassword'.tr()),
            onTap: () {
              context.pop();
              context.go(changeRoute);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Text('cExit'.tr()),
            onTap: () {
              // context.read<SessionService>().exitSession();
              context.pop();
              Router.neglect(context, () => context.go(loginRoute));
            },
          ),
        ],
      ),
    );
  }
}

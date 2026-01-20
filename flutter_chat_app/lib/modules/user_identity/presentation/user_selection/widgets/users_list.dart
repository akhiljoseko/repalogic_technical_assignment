import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/router/app_routes.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/add_user/add_user_bottom_sheet.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/add_user/cubit/add_user_cubit.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/cubit/active_user_cubit.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/user_selection/cubit/user_selection_cubit.dart';
import 'package:flutter_chat_app/shared/widgets/primary_button.dart';
import 'package:flutter_chat_app/shared/widgets/spacing.dart';
import 'package:go_router/go_router.dart';

class UsersList extends StatelessWidget {
  const UsersList({required this.users, super.key});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    if (users.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('No users'),

            PrimaryButton(
              buttonLabel: 'Add User',
              onPressed: () {
                _showAddUserBottomSheet(context);
              },
            ),
          ],
        ),
      );
    }
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                onTap: () {
                  context.read<ActiveUserCubit>().setActiveUser(users[index]);
                  context.go(const ConversationsRoute().location);
                },
                leading: CircleAvatar(
                  child: Text(user.name[0]),
                ),
                title: Text(user.name),
              );
            },
          ),
        ),
        const Vspace(12),
        PrimaryButton(
          buttonLabel: 'Add User',
          onPressed: () {
            _showAddUserBottomSheet(context);
          },
        ),
      ],
    );
  }

  Future<void> _showAddUserBottomSheet(BuildContext context) async {
    final isUserAdded = await showModalBottomSheet<bool?>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) {
        return BlocProvider(
          create: (context) => AddUserCubit(
            usersRepository: context.read<UsersRepository>(),
          ),
          child: const AddUserBottomSheet(),
        );
      },
    );
    if ((isUserAdded ?? false) && context.mounted) {
      final _ = context.read<UserSelectionCubit>().loadUsers();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/entities/user.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/add_user/add_user_bottom_sheet.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/cubit/active_user_cubit.dart';
import 'package:flutter_chat_app/shared/widgets/primary_button.dart';

class UsersList extends StatelessWidget {
  const UsersList({required this.users, super.key});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    if (users.isEmpty) {
      return Center(
        child: Column(
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
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            context.read<ActiveUserCubit>().setActiveUser(users[index]);
          },
          leading: CircleAvatar(
            child: Text(users[index].name[0]),
          ),
          title: Text(users[index].name),
        );
      },
    );
  }

  void _showAddUserBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) {
        return const AddUserBottomSheet();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/l10n/l10n.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/user_selection/cubit/user_selection_cubit.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/user_selection/widgets/users_list.dart';
import 'package:flutter_chat_app/shared/widgets/screen_padding.dart';

class UserSelectionCompactLayout extends StatelessWidget {
  const UserSelectionCompactLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select User'),
      ),
      body: ScreenHorizontalPadding(
        child: SafeArea(
          child: BlocBuilder<UserSelectionCubit, UserSelectionState>(
            builder: (context, state) {
              switch (state) {
                case UsersLoading():
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case UsersLoadSuccess():
                  return UsersList(users: state.users);
                case UsersLoadError():
                  return Center(
                    child: Text(state.error.localize(context.l10n)),
                  );

                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}

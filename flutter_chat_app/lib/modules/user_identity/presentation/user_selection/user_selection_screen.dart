import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/user_selection/cubit/user_selection_cubit.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/user_selection/layouts/user_selection_compact_layout.dart';
import 'package:flutter_chat_app/shared/widgets/responsive_builder.dart';

class UserSelectionScreen extends StatelessWidget {
  const UserSelectionScreen({super.key});

  static const routeName = 'user-selection';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          UserSelectionCubit(usersRepository: context.read())..loadUsers(),
      child: ResponsiveBuilder(
        compactLayout: (context, width, height) {
          return const UserSelectionCompactLayout();
        },
      ),
    );
  }
}

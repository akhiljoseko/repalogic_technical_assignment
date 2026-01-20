import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/chat_rooms_repository.dart';
import 'package:flutter_chat_app/modules/chat/presentation/create_chat_room/cubit/create_chat_room_cubit.dart';
import 'package:flutter_chat_app/modules/chat/presentation/create_chat_room/layouts/create_chat_room_compact_layout.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/cubit/active_user_cubit.dart';
import 'package:flutter_chat_app/shared/widgets/responsive_builder.dart';

class CreateChatRoomScreen extends StatelessWidget {
  const CreateChatRoomScreen({super.key});

  static const routeName = '/create-chat-room';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateChatRoomCubit(
        usersRepository: context.read<UsersRepository>(),
        chatRoomsRepository: context.read<ChatRoomsRepository>(),
        activeUserId: context.read<ActiveUserCubit>().state!.id,
      ),
      child: ResponsiveBuilder(
        compactLayout: (_, _, _) => const CreateChatRoomCompactLayout(),
      ),
    );
  }
}

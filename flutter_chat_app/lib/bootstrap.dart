import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/modules/chat/data/data_sources/chat_room_local_data_source_impl.dart';
import 'package:flutter_chat_app/modules/chat/data/data_sources/message_local_data_source_impl.dart';
import 'package:flutter_chat_app/modules/chat/data/models/chat_room_model.dart';
import 'package:flutter_chat_app/modules/chat/data/models/message_model.dart';
import 'package:flutter_chat_app/modules/chat/data/repositories/chat_rooms_repository_impl.dart';
import 'package:flutter_chat_app/modules/chat/data/repositories/messages_repository_impl.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/chat_rooms_repository.dart';
import 'package:flutter_chat_app/modules/chat/domain/repositories/message_repository.dart';
import 'package:flutter_chat_app/modules/user_identity/data/data_sources/users_local_data_source_impl.dart';
import 'package:flutter_chat_app/modules/user_identity/data/models/user_model.dart';
import 'package:flutter_chat_app/modules/user_identity/data/repositories/users_repository_impl.dart';
import 'package:flutter_chat_app/modules/user_identity/domain/repositories/users_repository.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/cubit/active_user_cubit.dart';
import 'package:flutter_chat_app/services/hive/hive_local_database.dart';
import 'package:flutter_chat_app/services/hive/hive_registrar.g.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await Hive.initFlutter();
  Hive.registerAdapters();

  // Add cross-flavor configuration here

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UsersRepository>(
          create: (_) => UsersRepositoryImpl(
            usersLocalDataSource: UsersLocalDataSourceImpl(
              usersDatabase: HiveBoxLocalDatabase<UserModel>('users'),
            ),
          ),
        ),
        RepositoryProvider<ChatRoomsRepository>(
          create: (_) => ChatRoomsRepositoryImpl(
            chatRoomLocalDataSource: ChatRoomLocalDataSourceImpl(
              chatRoomsDatabase: HiveBoxLocalDatabase<ChatRoomModel>(
                'chat_rooms',
              ),
            ),
          ),
        ),
        RepositoryProvider<MessageRepository>(
          create: (_) => MessagesRepositoryImpl(
            messageLocalDataSource: MessageLocalDataSourceImpl(
              messagesDatabase: HiveBoxLocalDatabase<MessageModel>('messages'),
            ),
          ),
        ),
      ],
      child: BlocProvider(
        lazy: false,
        create: (context) => ActiveUserCubit(),
        child: await builder(),
      ),
    ),
  );
}

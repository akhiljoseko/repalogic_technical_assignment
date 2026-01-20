import 'package:flutter/material.dart';
import 'package:flutter_chat_app/modules/chat/presentation/conversations/conversations_screen.dart';
import 'package:flutter_chat_app/modules/chat/presentation/create_chat_room/create_chat_room_screen.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/user_selection/user_selection_screen.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.g.dart';

@TypedGoRoute<UserSelectionRoute>(
  path: '/',
  name: UserSelectionScreen.routeName,
)
class UserSelectionRoute extends GoRouteData with $UserSelectionRoute {
  const UserSelectionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const UserSelectionScreen();
}

@TypedGoRoute<ConversationsRoute>(
  path: '/conversations',
  name: ConversationsScreen.routeName,
  routes: [
    TypedGoRoute<CreateChatRoomRoute>(
      path: 'create-chat-room',
      name: CreateChatRoomScreen.routeName,
    ),
  ],
)
class ConversationsRoute extends GoRouteData with $ConversationsRoute {
  const ConversationsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ConversationsScreen();
}

class CreateChatRoomRoute extends GoRouteData with $CreateChatRoomRoute {
  const CreateChatRoomRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const CreateChatRoomScreen();
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$userSelectionRoute, $conversationsRoute];

RouteBase get $userSelectionRoute => GoRouteData.$route(
  path: '/',
  name: 'user-selection',
  factory: $UserSelectionRoute._fromState,
);

mixin $UserSelectionRoute on GoRouteData {
  static UserSelectionRoute _fromState(GoRouterState state) =>
      const UserSelectionRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $conversationsRoute => GoRouteData.$route(
  path: '/conversations',
  name: 'conversations',
  factory: $ConversationsRoute._fromState,
  routes: [
    GoRouteData.$route(
      path: 'create-chat-room',
      name: '/create-chat-room',
      factory: $CreateChatRoomRoute._fromState,
    ),
    GoRouteData.$route(
      path: 'chat/:chatroomId',
      name: 'chat',
      factory: $ChatRoute._fromState,
    ),
  ],
);

mixin $ConversationsRoute on GoRouteData {
  static ConversationsRoute _fromState(GoRouterState state) =>
      const ConversationsRoute();

  @override
  String get location => GoRouteData.$location('/conversations');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $CreateChatRoomRoute on GoRouteData {
  static CreateChatRoomRoute _fromState(GoRouterState state) =>
      const CreateChatRoomRoute();

  @override
  String get location =>
      GoRouteData.$location('/conversations/create-chat-room');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ChatRoute on GoRouteData {
  static ChatRoute _fromState(GoRouterState state) => ChatRoute(
    chatroomId: state.pathParameters['chatroomId']!,
    chatRoomName: state.uri.queryParameters['chat-room-name']!,
  );

  ChatRoute get _self => this as ChatRoute;

  @override
  String get location => GoRouteData.$location(
    '/conversations/chat/${Uri.encodeComponent(_self.chatroomId)}',
    queryParams: {'chat-room-name': _self.chatRoomName},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

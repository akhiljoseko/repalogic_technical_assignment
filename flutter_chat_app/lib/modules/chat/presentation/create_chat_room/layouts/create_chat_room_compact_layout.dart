import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/router/app_routes.dart';
import 'package:flutter_chat_app/core/utils/form_validators.dart';
import 'package:flutter_chat_app/l10n/l10n.dart';
import 'package:flutter_chat_app/modules/chat/presentation/create_chat_room/cubit/create_chat_room_cubit.dart';
import 'package:flutter_chat_app/shared/widgets/primary_button.dart';
import 'package:flutter_chat_app/shared/widgets/screen_padding.dart';
import 'package:flutter_chat_app/shared/widgets/spacing.dart';

class CreateChatRoomCompactLayout extends StatefulWidget {
  const CreateChatRoomCompactLayout({super.key});

  @override
  State<CreateChatRoomCompactLayout> createState() =>
      _CreateChatRoomCompactLayoutState();
}

class _CreateChatRoomCompactLayoutState
    extends State<CreateChatRoomCompactLayout> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  late final _roomNameController = TextEditingController();

  @override
  void dispose() {
    _roomNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Chat Room'),
      ),
      body: BlocListener<CreateChatRoomCubit, CreateChatRoomState>(
        listener: (context, state) {
          if (state is CreateChatRoomStateChatRoomCreated) {
            ChatRoute(
              chatroomId: state.chatRoom.id,
              chatRoomName: state.chatRoom.name,
            ).go(context);
          } else if (state is CreateChatRoomStateChatRoomCreationFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error.errorMessage)),
            );
          }
        },
        child: ScreenHorizontalPadding(
          child: SafeArea(
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  autovalidateMode: _autovalidateMode,
                  child: TextFormField(
                    controller: _roomNameController,
                    decoration: const InputDecoration(
                      hintText: 'Room Name',
                      helperText: '',
                    ),
                    validator: (value) => FormValidators.validateRequired(
                      value,
                      'Room Name',
                      context.l10n,
                    ),
                  ),
                ),
                const Vspace(16),

                Expanded(
                  child: BlocBuilder<CreateChatRoomCubit, CreateChatRoomState>(
                    builder: (context, state) {
                      if (state
                          is CreateChatRoomStateLoadingInitialDataSuccess) {
                        return ListView.builder(
                          itemCount: state.users.length,
                          itemBuilder: (context, index) {
                            final user = state.users[index];
                            return CheckboxListTile(
                              title: Text(user.name),

                              value: state.selectedUsers.contains(
                                user,
                              ),
                              onChanged: (value) {
                                context
                                    .read<CreateChatRoomCubit>()
                                    .toggleUserSelection(
                                      user: user,
                                      selected: value ?? false,
                                    );
                              },
                            );
                          },
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ),
                const Vspace(16),
                PrimaryButton(
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      setState(
                        () => _autovalidateMode =
                            AutovalidateMode.onUserInteraction,
                      );
                      return;
                    }
                    context.read<CreateChatRoomCubit>().createChatRoom(
                      roomName: _roomNameController.text,
                    );
                  },
                  buttonLabel: 'Create Chat Room',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

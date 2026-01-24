import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/utils/form_validators.dart';
import 'package:flutter_chat_app/l10n/l10n.dart';
import 'package:flutter_chat_app/modules/user_identity/presentation/add_user/cubit/add_user_cubit.dart';
import 'package:flutter_chat_app/shared/widgets/primary_button.dart';
import 'package:flutter_chat_app/shared/widgets/screen_padding.dart';
import 'package:flutter_chat_app/shared/widgets/spacing.dart';

class AddUserBottomSheet extends StatefulWidget {
  const AddUserBottomSheet({super.key});

  @override
  State<AddUserBottomSheet> createState() => _AddUserBottomSheetState();
}

class _AddUserBottomSheetState extends State<AddUserBottomSheet> {
  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddUserCubit, AddUserState>(
      listener: (context, state) {
        if (state is AddUserSuccess) {
          Navigator.pop(context, true);
          return;
        }
        if (state is AddUserError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error.localize(context.l10n))),
          );
          return;
        }
      },
      child: SafeArea(
        child: ScreenHorizontalPadding(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: .min,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: context.l10n.fullNameLabel,
                    helperText: '',
                  ),
                  validator: (value) => FormValidators.validateRequired(
                    value,
                    context.l10n.fullNameLabel,
                    context.l10n,
                  ),
                ),
                const Vspace(24),
                SizedBox(
                  width: double.maxFinite,
                  child: PrimaryButton(
                    buttonLabel: context.l10n.addUserButton,
                    onPressed: () {
                      context.read<AddUserCubit>().addUser(
                        name: _nameController.text.trim(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

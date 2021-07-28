import 'package:animated_appear/animated_appear.dart';
import 'package:flutter/material.dart';
import 'package:social_ui/social_ui.dart';

class CheckBoxFormField extends StatefulWidget {
  const CheckBoxFormField({
    Key? key,
    required this.checked,
    this.autovalidateMode = AutovalidateMode.disabled,
    this.enabled = true,
    this.validator,
    this.onSaved,
  }) : super(key: key);

  final bool checked;
  final bool enabled;
  final AutovalidateMode autovalidateMode;
  final String? Function(bool? value)? validator;
  final Function(bool? value)? onSaved;

  @override
  CheckBoxFormFieldState createState() => CheckBoxFormFieldState();
}

class CheckBoxFormFieldState extends State<CheckBoxFormField> {
  late FormFieldState<bool> _state;

  @override
  Widget build(BuildContext context) {
    return FormField<bool>(
      initialValue: widget.checked,
      autovalidateMode: widget.autovalidateMode,
      validator: widget.validator,
      enabled: widget.enabled,
      onSaved: widget.onSaved,
      builder: (FormFieldState<bool> state) {
        _state = state;

        Color backgroundColor = SocialUiColor.lightGrey;
        Icon? icon;
        if (state.value!) {
          backgroundColor = SocialUiColor.lightGreen;
          icon = Icon(Icons.check, color: SocialUiColor.white);
        }

        if (state.hasError) {
          backgroundColor = SocialUiColor.lightRed;
        }

        if (!widget.enabled) {
          backgroundColor = SocialUiColor.lightGrey;
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: widget.enabled
                  ? () => state.didChange(!(state.value!))
                  : null,
              child: AnimatedContainer(
                width: 24,
                height: 24,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: state.value! == true
                    ? AnimatedAppear(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.fastLinearToSlowEaseIn,
                        slideBeginOffset: const Offset(0, 10),
                        child: icon!,
                      )
                    : Container(),
              ),
            ),
          ],
        );
      },
    );
  }

  didChange(bool state) => _state.didChange(state);
}

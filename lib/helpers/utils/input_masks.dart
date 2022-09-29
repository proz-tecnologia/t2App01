import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomInputFormatters {
  static MaskTextInputFormatter phoneMaskFormatter = MaskTextInputFormatter(
    mask: '+55 (00) 0000-0000',
    filter: {"0": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  static MaskTextInputFormatter cpfMask = MaskTextInputFormatter(
    mask: '000.000.000-00',
    filter: {"0": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );
}

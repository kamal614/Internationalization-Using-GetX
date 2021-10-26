import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello_key': 'Hello'},
        'hi_IN': {'hello_key': 'नमस्कार'},
        'fr_FR': {'hello_key': 'Salut'},
      };
}

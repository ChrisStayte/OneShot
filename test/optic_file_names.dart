import 'package:oneshot/extensions.dart';
import 'package:oneshot/models/optic.dart';
import 'package:oneshot/providers/attachments_provider.dart';

void main() {
  for (Optic optic in AttachmentsProvider().optics) {
    print(optic.name.toLowerCaseStripped());
  }
  ;
}

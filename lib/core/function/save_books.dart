import 'package:template_workflow/features/test_1/domain/entities/template_entitiy.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<TemplateEntity> books, String boxName) {
  var box = Hive.box<TemplateEntity>(boxName);
  box.addAll(books);
}

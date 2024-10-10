// import 'package:bookly/constants.dart';
import 'package:template_workflow/features/test_1/domain/entities/template_entitiy.dart';
import 'package:hive/hive.dart';

abstract class TemplateLocalDataSource {
  List<TemplateEntity> fetchTemplate();
}

class TemplateLocalDataSourceImpl extends TemplateLocalDataSource {
  @override
  List<TemplateEntity> fetchTemplate() {
    var box = Hive.box<TemplateEntity>('kNewestBox');
    return box.values.toList();
  }
}

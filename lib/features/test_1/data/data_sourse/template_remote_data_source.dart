import 'package:template_workflow/core/function/save_books.dart';
import 'package:template_workflow/core/networking/api/api_consumer.dart';
import 'package:template_workflow/features/test_1/data/models/template_model.dart';
import 'package:template_workflow/features/test_1/domain/entities/template_entitiy.dart';

abstract class TemplateRemoteDataSource {
  Future<List<TemplateEntity>> templateFetch();
}

class TemplateRemoteDataSourceImpl extends TemplateRemoteDataSource {
  final ApiConsumer apiConsumer;

  TemplateRemoteDataSourceImpl({required this.apiConsumer});
  @override
  Future<List<TemplateEntity>> templateFetch() async {
    var data = await apiConsumer
        .get('volumes?Filtering=free-ebooks&Sorting=newest&q=programming');
    List<TemplateEntity> books = getBooksList(data);
    saveBooksData(books, 'boxName');
    return books;
  }

  List<TemplateEntity> getBooksList(Map<String, dynamic> data) {
    List<TemplateEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(TemplateModel.fromJson(bookMap));
    }
    return books;
  }
}

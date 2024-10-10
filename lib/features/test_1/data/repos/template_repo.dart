import 'package:template_workflow/core/errors/failure.dart';
import 'package:template_workflow/features/test_1/data/data_sourse/template_local_data_source.dart';
import 'package:template_workflow/features/test_1/data/data_sourse/template_remote_data_source.dart';
import 'package:template_workflow/features/test_1/domain/entities/template_entitiy.dart';
import 'package:template_workflow/features/test_1/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class TemplateRepo extends HomeRepo {
  final TemplateRemoteDataSource templateRemoteDataSource;
  final TemplateLocalDataSource templateLocalDataSource;

  TemplateRepo(
      {required this.templateRemoteDataSource,
      required this.templateLocalDataSource});

  @override
  Future<Either<Failure, List<TemplateEntity>>> test1Fetch() {
    throw UnimplementedError("");
  }
}

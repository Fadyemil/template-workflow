import 'package:template_workflow/core/errors/failure.dart';
import 'package:template_workflow/features/test_1/domain/entities/template_entitiy.dart';
import 'package:template_workflow/features/test_1/domain/repo/home_repo.dart';
import 'package:template_workflow/features/test_1/domain/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class Test1UseCase extends UseCase<List<TemplateEntity>, void> {
  final HomeRepo homeRepo;

  Test1UseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<TemplateEntity>>> call([void param]) async {
    return await homeRepo.test1Fetch();
  }
}

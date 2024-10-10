import 'package:template_workflow/core/errors/failure.dart';
import 'package:template_workflow/features/test_1/domain/entities/template_entitiy.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<TemplateEntity>>> test1Fetch();
}

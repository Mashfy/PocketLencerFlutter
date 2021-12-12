import 'package:pocket_lencer/models/models.dart';

abstract class BaseProductRepository {
  Stream<List<Product>> getAlllProducts();
}

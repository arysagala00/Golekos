import 'package:submission_pemula/model/tenant_model.dart';

class KosModel {
  String image;
  String name;
  String category;
  String price;
  String beds;
  String bathrooms;
  String kitchen;
  List<TenantModel> tenant;

  KosModel({
    this.image,
    this.name,
    this.category,
    this.price,
    this.beds,
    this.bathrooms,
    this.kitchen,
    this.tenant,
  });
}

import 'package:locator/locator.dart';
import 'package:justin/domain/contact_viewmodel.dart';
import 'package:justin/services/implementation/impl_contact_service.dart';

const locator = Locator();
class Injection{
  static void setUp(){
    locator.put(ImplContactService());
    locator.put(ContactViewModel(service: locator.get<ImplContactService>()));
  }
}
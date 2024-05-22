import 'package:justin/data/model/contact.dart';

abstract class ContactService{
  Future<void> sendMessage(Contact contact);
}
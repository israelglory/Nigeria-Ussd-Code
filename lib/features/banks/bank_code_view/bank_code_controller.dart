import 'package:nigeria_ussd_codes/utils/exports.dart';

class BankCodeController extends GetxController {
  List<BankUssd> ussdList = [];

  void updateBank(List<BankUssd> bankList) {
    ussdList = bankList;
    update();
  }
}

import 'package:nigeria_ussd_codes/data/confirm_network_data.dart';
import 'package:nigeria_ussd_codes/models/confirm_network_model.dart';
import 'package:nigeria_ussd_codes/utils/exports.dart';

class ConfirmNetworkController extends GetxController {
  ConfirmNetworkModel selectedValue = confirmNetworkList[0];
  void onSelected(ConfirmNetworkModel value) {
    selectedValue = value;
    update();
  }
}

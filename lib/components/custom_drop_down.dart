import 'package:nigeria_ussd_codes/models/confirm_network_model.dart';

import '../utils/exports.dart';

class CustomDropDown extends StatelessWidget {
  final ConfirmNetworkModel value;
  final List<ConfirmNetworkModel> itemsList;
  final Color dropdownColor;
  final Function(dynamic value) onChanged;
  const CustomDropDown({
    super.key,
    required this.value,
    required this.itemsList,
    required this.dropdownColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 3, bottom: 3, right: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: DropdownButtonHideUnderline(
          child: Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14),
            child: DropdownButton(
              isExpanded: true,
              dropdownColor: dropdownColor,
              value: value,
              items: itemsList
                  .map((ConfirmNetworkModel item) =>
                      DropdownMenuItem<ConfirmNetworkModel>(
                        value: item,
                        child: AppText(
                          item.numberPrefix,
                          size: 18,
                        ),
                      ))
                  .toList(),
              onChanged: (value) => onChanged(value),
            ),
          ),
        ),
      ),
    );
  }
}

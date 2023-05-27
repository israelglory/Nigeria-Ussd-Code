import '../utils/exports.dart';

class UssdListItem extends StatelessWidget {
  final Function() onCall;
  final Function() onCopy;
  final String code;
  final String description;
  const UssdListItem(
      {super.key,
      required this.onCall,
      required this.onCopy,
      required this.code,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppText(
                        description,
                      ),
                      AppText(code),
                    ],
                  ),
                ),
                GestureDetector(onTap: onCall, child: const Icon(Icons.call)),
                const SizedBox(
                  width: 16.0,
                ),
                GestureDetector(onTap: onCopy, child: const Icon(Icons.copy)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

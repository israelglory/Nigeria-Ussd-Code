import 'package:nigeria_ussd_codes/utils/exports.dart';

class HomeItem extends StatelessWidget {
  final String image;
  final String text;
  final Function() onTap;
  const HomeItem(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 40,
              ),
              const SizedBox(
                height: 16.0,
              ),
              AppText(text),
            ],
          ),
        ),
      ),
    );
  }
}

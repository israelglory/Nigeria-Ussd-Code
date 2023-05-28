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
              AppText(
                text,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeItemLong extends StatelessWidget {
  final String image;
  final String text;
  final Function() onTap;
  const HomeItemLong(
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
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 40,
                ),
                const SizedBox(
                  height: 16.0,
                ),
                AppText(
                  text,
                  fontWeight: FontWeight.bold,
                  size: 14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

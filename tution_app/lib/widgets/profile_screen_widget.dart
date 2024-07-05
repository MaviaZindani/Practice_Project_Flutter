import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailOptionBox extends StatelessWidget {
  final Icon detailOptionIcon;
  final String detailOptionname;
  const DetailOptionBox({
    super.key,
    required this.detailOptionIcon,
    required this.detailOptionname,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: const Color(0xffFAFAFA),
      leading: detailOptionIcon,
      title: Text(
        detailOptionname,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
      trailing: const Icon(Icons.arrow_left_outlined),
    );
  }
}

class ProfileDetailBox extends StatelessWidget {
  final IconData profileDetailIcon;
  final String profileDetailtitle;
  final String profileDetail;
  const ProfileDetailBox(
      {super.key,
      required this.profileDetailIcon,
      required this.profileDetailtitle,
      required this.profileDetail});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
          child: Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 216, 216),
                    borderRadius: BorderRadius.circular(50)),
                child: Center(child: Icon(profileDetailIcon)),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                profileDetailtitle,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0)),
              )
            ],
          ),
        ),
        Text(
          profileDetail,
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0)),
        )
      ],
    );
  }
}

class DetailBox extends StatelessWidget {
  final String? number;
  final String? email;
  final String? position;
  const DetailBox({super.key, this.email, this.number, this.position});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 187, 187, 187),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileDetailBox(
                profileDetailIcon: Icons.phone,
                profileDetailtitle: 'Phone',
                profileDetail: number!),
            ProfileDetailBox(
                profileDetailIcon: Icons.email,
                profileDetailtitle: 'E-mail',
                profileDetail: email!),
            ProfileDetailBox(
                profileDetailIcon: Icons.email,
                profileDetailtitle: 'Position',
                profileDetail: position!)
          ],
        ),
      ),
    );
  }
}

class ProfileBox extends StatelessWidget {
  final String personName;
  final String personsubtitle;
  const ProfileBox(
      {super.key, required this.personName, required this.personsubtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35, right: 40, left: 40),
          child: const Align(
            alignment: Alignment.bottomRight,
            child: Icon(Icons.notification_add),
          ),
        ),
        const Padding(
          padding: const EdgeInsets.only(top: 12.0, bottom: 15.0),
          child: const Text(
            'CapSys',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProfilePopelariti(
                  Popelaritinumber: 86, popelaritiName: 'Followers'),
              ProfilePopelariti(
                  Popelaritinumber: 24, popelaritiName: 'Reportes')
            ],
          ),
        ),
        Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://c.pxhere.com/photos/08/7a/male_portrait_profile_social_media_cv_young_elegant_suit-459413.jpg!d")),
                  border: Border.all(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(25)),
            ),
            Text(personName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
            Text(
              personsubtitle,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 197, 195, 195),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class ProfilePopelariti extends StatelessWidget {
  final int Popelaritinumber;
  final String popelaritiName;
  const ProfilePopelariti(
      {super.key,
      required this.Popelaritinumber,
      required this.popelaritiName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Popelaritinumber.toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          popelaritiName,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 206, 203, 203),
          ),
        ),
      ],
    );
  }
}

class Tringle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0025000, size.height * 0.0033333);
    path_0.lineTo(0, size.height * 0.6647667);
    path_0.quadraticBezierTo(size.width * 0.1252250, size.height * 1.0002333,
        size.width * 0.5083500, size.height * 1.0027333);
    path_0.quadraticBezierTo(size.width * 0.8696000, size.height * 0.9919000,
        size.width * 1.0008250, size.height * 0.6490000);
    path_0.lineTo(size.width, size.height * 0.0066667);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}


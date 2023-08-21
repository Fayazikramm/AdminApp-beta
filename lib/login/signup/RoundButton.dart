import 'package:flutter/material.dart';

class Roundbutton extends StatelessWidget {
  final String tittle;
  final VoidCallback onTap;
  final bool loading;
  const Roundbutton(
      {Key? key,
      required this.tittle,
      required this.onTap,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 300,
        decoration: const BoxDecoration(
            color: Color(0xff47a04a),
            borderRadius: BorderRadiusDirectional.all(Radius.circular(40))),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                )
              : Text(
                  tittle,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
        ),
      ),
    );
  }
}

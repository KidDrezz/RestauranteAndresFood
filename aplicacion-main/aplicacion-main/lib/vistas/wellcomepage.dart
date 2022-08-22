import 'package:flutter/material.dart';
import 'package:menu/vistas/menu.dart';
import 'package:menu/vistas/menu_p.dart';
import 'package:menu/vistas/sedes.dart';
import 'package:menu/vistas/signinpage.dart';
import 'package:menu/widgets/wcWidgets.dart';

class wellcomepage extends StatelessWidget {
  wellcomepage({Key? key}) : super(key: key);

  double screenHeight = 0.0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: 280,
        height: screenHeight * 9,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 216, 195),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Spacer(flex: 2),
            titleText("Bienvenido"),
            const Spacer(flex: 1),
            subTitleText(
                "Restaurante AndresFood la comida de la felicidad"),
            const Spacer(flex: 2),
            const Image(image: AssetImage("assets/imagen.png")),
            const Spacer(),
            largeButton(() {
              //Aqui va la función
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return signinpage();
                  },
                ),
              );
            }, Colors.transparent, "Registro"),
            const Spacer(flex: 1),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const menu();
                  },
                ),
              );
            }, Color.fromARGB(255, 229, 245, 4), "Menu (Platos Fuertes)"),
            const Spacer(),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const menu_p();
                  },
                ),
              );
            }, Color.fromARGB(255, 229, 245, 4), "Menu Postres"),
            const Spacer(),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const sedes();
                  },
                ),
              );
            }, Colors.transparent, "Puntos De Venta"),
          ],
        ),
      ),
    );
  }
}

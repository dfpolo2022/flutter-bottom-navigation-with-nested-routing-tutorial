import 'package:flutter/material.dart';
import 'package:e_park/ui/mapa/mapa_page.dart';

class PostTile extends StatelessWidget {
  final Color tileColor;
  final String postTitle;
  final void Function() onTileTap;

  const PostTile({
    Key? key,
    required this.tileColor,
    required this.postTitle,
    required this.onTileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            color: tileColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: const Color(0xFFC4261D),
            )),
        height: 100,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              postTitle,
              style: const TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class ParqueoWidget extends StatelessWidget {
  final Color parqueoColor;
  final int parqueoId;
  final int numeroParqueo;
  final int cupoParqueo;
  final int tiempoParqueo;
  final void Function()? onParqueoTap;
  const ParqueoWidget({
    Key? key,
    required this.parqueoColor,
    required this.parqueoId,
    required this.numeroParqueo,
    required this.cupoParqueo,
    required this.tiempoParqueo,
    this.onParqueoTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onParqueoTap,
        child: Container(
            margin: const EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFC4261D),
                ),
                color: const Color(0xFFC4261D),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20), right: Radius.circular(0)),
                      color: parqueoColor,
                      border: Border.all(
                        color: const Color(0xFFC4261D),
                      ),
                    ),
                    height: 100.0,
                    child: Text(
                      numeroParqueo.toString(),
                      style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.access_time_filled,
                            color: parqueoColor,
                          ),
                          Text(
                            '$tiempoParqueo minutos',
                            style: TextStyle(color: parqueoColor),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.local_parking_outlined,
                            color: parqueoColor,
                          ),
                          Text(
                            '$cupoParqueo cupos',
                            style: TextStyle(color: parqueoColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    child: IconButton(
                      alignment: Alignment.center,
                      iconSize: 70,
                      icon: Icon(
                        Icons.location_on,
                        color: parqueoColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MapaPage()),
                        );
                      },
                    ),
                  ),
                )
              ],
            )));
  }
}

class CodigoQR extends StatelessWidget {
  const CodigoQR({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xFFC4261D),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: const [
          Icon(
            Icons.qr_code_2,
            size: 350.0,
          ),
          Text(
            'Puede escanear este código QR en cualquier estación de pago del servicio de parqueo.',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final Color avatarColor;
  final String username;
  final Color textColor;
  final void Function()? onAvatarTap;
  const UserAvatar({
    Key? key,
    required this.avatarColor,
    required this.username,
    required this.textColor,
    this.onAvatarTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: GestureDetector(
        onTap: onAvatarTap,
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: avatarColor,
              radius: 65,
              child: const Icon(
                Icons.person,
                size: 65,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              username,
              style: TextStyle(fontSize: 14, color: textColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DigitalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2424),
      appBar: AppBar(
        backgroundColor: Color(0xFF5C3D2E),
        foregroundColor: Colors.white,
        title: Text('Digital Card'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Tampilan horizontal (lebar > 600 pixel)
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: buildHAvatar(),
                ),
                Expanded(
                  flex: 1,
                  child: buildhorizontal(),
                ),
              ],
            );
          } else {
            // Tampilan vertikal (lebar < 600 pixel)
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildVAvatar(),
                buildvertikal(),
              ],
            );
          }
        },
      ),
    );
  }

  Widget buildvertikal() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 40, 40, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            'Nama:',
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.grey,
            ),
          ),
          Text(
            'Wikan Gandang Palgunadi',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Jabatan:',
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.grey,
            ),
          ),
          Text(
            'Mahasiswa',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.phone, color: Colors.grey),
              SizedBox(width: 10),
              Text(
                '+62-8516-1655-774',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.email, color: Colors.grey),
              SizedBox(width: 10),
              Text(
                'wikangp10@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/qr.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildhorizontal() {
  return Padding(
    padding: const EdgeInsets.only(top: 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          'Nama:',
          style: TextStyle(
            letterSpacing: 2,
            color: Colors.grey,
          ),
        ),
        Text(
          'Wikan Gandang Palgunadi',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Jabatan:',
          style: TextStyle(
            letterSpacing: 2,
            color: Colors.grey,
          ),
        ),
        Text(
          'Mahasiswa',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.phone, color: Colors.grey),
            SizedBox(width: 10),
            Text(
              '+62-8516-1655-774',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            )
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.email, color: Colors.grey),
            SizedBox(width: 5),
            Text(
              'wikangp10@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 0),
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage('assets/qr.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildVAvatar() {
  return Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/wikan.jpg'),
      ),
    ),
  );
}

Widget buildHAvatar() {
  return LayoutBuilder(
    builder: (context, constraints) {
      return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.contain,
            alignment: Alignment.center,
            image: AssetImage('assets/wikan.jpg'),
          ),
        ),
      );
    },
  );
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Evolution extends StatelessWidget {
  const Evolution({Key? key, required this.numero}) : super(key: key);
  final int numero;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          if (numero == 1) getImage(numero1: '2', numero2: '3'),
          if (numero == 2) getImage(numero1: '3'),
          if (numero == 3) getImage(Status: ' Has no evolution! '),
          if (numero == 4) getImage(numero1: '5', numero2: '6'),
          if (numero == 5) getImage(numero1: '6'),
          if (numero == 6) getImage(Status: ' Has no evolution! '),
          if (numero == 7) getImage(numero1: '8', numero2: '9'),
          if (numero == 8) getImage(numero1: '9'),
          if (numero == 9) getImage(Status: ' Has no evolution! '),
          if (numero == 10) getImage(numero1: '11', numero2: '12'),
          if (numero == 11) getImage(numero1: '12'),
          if (numero == 12) getImage(Status: ' Has no evolution! '),
          if (numero == 13) getImage(numero1: '14', numero2: '15'),
          if (numero == 14) getImage(numero1: '15'),
          if (numero == 15) getImage(Status: ' Has no evolution! '),
          if (numero == 16) getImage(numero1: '17', numero2: '18'),
          if (numero == 17) getImage(numero1: '18'),
          if (numero == 18) getImage(Status: ' Has no evolution! '),
          if (numero == 19) getImage(numero1: '20'),
          if (numero == 20) getImage(Status: ' Has no evolution! '),
          if (numero == 21) getImage(numero1: '22'),
          if (numero == 22) getImage(Status: ' Has no evolution! '),
          if (numero == 23) getImage(numero1: '24'),
          if (numero == 24) getImage(Status: ' Has no evolution! '),
          if (numero == 25) getImage(numero1: '26'),
          if (numero == 26) getImage(Status: ' Has no evolution! '),
          if (numero == 27) getImage(numero1: '28'),
          if (numero == 28) getImage(Status: ' Has no evolution! '),
          if (numero == 29) getImage(numero1: '30', numero2: '31'),
          if (numero == 30) getImage(numero1: '31'),
          if (numero == 31) getImage(Status: ' Has no evolution! '),
          if (numero == 32) getImage(numero1: '33', numero2: '34'),
          if (numero == 33) getImage(numero1: '34'),
          if (numero == 34) getImage(Status: ' Has no evolution! '),
          if (numero == 35) getImage(numero1: '36'),
          if (numero == 36) getImage(Status: ' Has no evolution! '),
          if (numero == 37) getImage(numero1: '38'),
          if (numero == 38) getImage(Status: ' Has no evolution! '),
          if (numero == 39) getImage(numero1: '40'),
          if (numero == 40) getImage(Status: ' Has no evolution! '),
          if (numero == 41) getImage(numero1: '42'),
          if (numero == 42) getImage(Status: ' Has no evolution! '),
          if (numero == 43) getImage(numero1: '44', numero2: '45'),
          if (numero == 44) getImage(numero1: '45'),
          if (numero == 45) getImage(Status: ' Has no evolution! '),
          if (numero == 46) getImage(numero1: '47'),
          if (numero == 47) getImage(Status: ' Has no evolution! '),
          if (numero == 48) getImage(numero1: '49'),
          if (numero == 49) getImage(Status: ' Has no evolution! '),
          if (numero == 50) getImage(numero1: '51'),
          if (numero == 51) getImage(Status: ' Has no evolution! '),
          if (numero == 52) getImage(numero1: '53'),
          if (numero == 53) getImage(Status: ' Has no evolution! '),
          if (numero == 54) getImage(numero1: '55'),
          if (numero == 55) getImage(Status: ' Has no evolution! '),
          if (numero == 56) getImage(numero1: '57'),
          if (numero == 57) getImage(Status: ' Has no evolution! '),
          if (numero == 58) getImage(numero1: '59'),
          if (numero == 59) getImage(Status: ' Has no evolution! '),
          if (numero == 60) getImage(numero1: '61', numero2: '62'),
          if (numero == 61) getImage(numero1: '62'),
          if (numero == 62) getImage(Status: ' Has no evolution! '),
          if (numero == 63) getImage(numero1: '64', numero2: '65'),
          if (numero == 64) getImage(numero1: '65'),
          if (numero == 65) getImage(Status: ' Has no evolution! '),
          if (numero == 66) getImage(numero1: '67', numero2: '68'),
          if (numero == 67) getImage(numero1: '68'),
          if (numero == 68) getImage(Status: ' Has no evolution! '),
          if (numero == 69) getImage(numero1: '70', numero2: '71'),
          if (numero == 70) getImage(numero1: '71'),
          if (numero == 71) getImage(Status: ' Has no evolution! '),
          if (numero == 72) getImage(numero1: '73'),
          if (numero == 73) getImage(Status: ' Has no evolution! '),
          if (numero == 74) getImage(numero1: '75', numero2: '76'),
          if (numero == 75) getImage(numero1: '76'),
          if (numero == 76) getImage(Status: ' Has no evolution! '),
          if (numero == 77) getImage(numero1: '78'),
          if (numero == 78) getImage(Status: ' Has no evolution! '),
          if (numero == 79) getImage(numero1: '80'),
          if (numero == 80) getImage(Status: ' Has no evolution! '),
          if (numero == 81) getImage(numero1: '82'),
          if (numero == 82) getImage(Status: ' Has no evolution! '),
          if (numero == 83) getImage(numero1: 'Has no evolution!'),
          if (numero == 84) getImage(numero1: '85'),
          if (numero == 85) getImage(Status: ' Has no evolution! '),
          if (numero == 86) getImage(numero1: '87'),
          if (numero == 87) getImage(Status: ' Has no evolution! '),
          if (numero == 88) getImage(numero1: '89'),
          if (numero == 89) getImage(Status: ' Has no evolution! '),
          if (numero == 90) getImage(numero1: '91'),
          if (numero == 91) getImage(Status: ' Has no evolution! '),
          if (numero == 92) getImage(numero1: '93', numero2: '94'),
          if (numero == 93) getImage(numero1: '94'),
          if (numero == 94) getImage(Status: ' Has no evolution! '),
          if (numero == 95) getImage(Status: ' Has no evolution! '),
          if (numero == 96) getImage(numero1: '97'),
          if (numero == 97) getImage(Status: ' Has no evolution! '),
          if (numero == 98) getImage(numero1: '99'),
          if (numero == 99) getImage(Status: ' Has no evolution! '),
          if (numero == 100) getImage(numero1: '101'),
          if (numero == 101) getImage(Status: ' Has no evolution! '),
          if (numero == 102) getImage(numero1: '103'),
          if (numero == 103) getImage(Status: ' Has no evolution! '),
          if (numero == 104) getImage(numero1: '105'),
          if (numero == 105) getImage(Status: ' Has no evolution! '),
          if (numero == 106) getImage(Status: ' Has no evolution! '),
          if (numero == 107) getImage(Status: ' Has no evolution! '),
          if (numero == 108) getImage(Status: ' Has no evolution! '),
          if (numero == 109) getImage(numero1: '110'),
          if (numero == 110) getImage(Status: ' Has no evolution! '),
          if (numero == 111) getImage(numero1: '112'),
          if (numero == 112) getImage(Status: ' Has no evolution! '),
          if (numero == 113) getImage(Status: ' Has no evolution! '),
          if (numero == 114) getImage(Status: ' Has no evolution! '),
          if (numero == 115) getImage(Status: ' Has no evolution! '),
          if (numero == 116) getImage(numero1: '117'),
          if (numero == 117) getImage(Status: ' Has no evolution! '),
          if (numero == 118) getImage(numero1: '119'),
          if (numero == 119) getImage(Status: ' Has no evolution! '),
          if (numero == 120) getImage(numero1: '121'),
          if (numero == 121) getImage(Status: ' Has no evolution! '),
          if (numero == 122) getImage(Status: ' Has no evolution! '),
          if (numero == 123) getImage(Status: ' Has no evolution! '),
          if (numero == 124) getImage(Status: ' Has no evolution! '),
          if (numero == 125) getImage(Status: ' Has no evolution! '),
          if (numero == 126) getImage(Status: ' Has no evolution! '),
          if (numero == 127) getImage(Status: ' Has no evolution! '),
          if (numero == 128) getImage(Status: ' Has no evolution! '),
          if (numero == 129) getImage(numero1: '130'),
          if (numero == 130) getImage(Status: ' Has no evolution! '),
          if (numero == 131) getImage(Status: ' Has no evolution! '),
          if (numero == 132) getImage(Status: ' Has no evolution! '),
          if (numero == 133) getImage(numero1: '134', numero2: '135', numero3: '136'),
          if (numero == 134) getImage(numero1: '135', numero2: '136'),
          if (numero == 135) getImage(numero1: '136'),
          if (numero == 136) getImage(Status: ' Has no evolution! '),
          if (numero == 137) getImage(Status: ' Has no evolution! '),
          if (numero == 138) getImage(numero1: '139'),
          if (numero == 139) getImage(Status: ' Has no evolution! '),
          if (numero == 140) getImage(numero1: '141'),
          if (numero == 141) getImage(Status: ' Has no evolution! '),
          if (numero == 142) getImage(Status: ' Has no evolution! '),
          if (numero == 143) getImage(Status: ' Has no evolution! '),
          if (numero == 144) getImage(Status: ' Has no evolution! '),
          if (numero == 145) getImage(Status: ' Has no evolution! '),
          if (numero == 146) getImage(Status: ' Has no evolution! '),
          if (numero == 147) getImage(numero1: '148', numero2: '149'),
          if (numero == 148) getImage(numero1: '149'),
          if (numero == 149) getImage(Status: ' Has no evolution! '),
          if (numero == 150) getImage(Status: ' Has no evolution! '),
          if (numero == 151) getImage(Status: ' Has no evolution! '),

        ],
      ),
    );
  }
}

class getImage extends StatelessWidget {
  const getImage({Key? key, this.numero1 = '', this.numero2 = '', this.Status = '', this.numero3 = ''}) : super(key: key);
  final String? numero1;
  final String? numero2;
  final String? numero3;
  final String? Status;

  @override
  Widget build(BuildContext context) {
    if (numero1 != '' && numero2 != '') {
      return Column(
        children: [
          Center(
            child: SizedBox(
              height: 175,
              width: 175,
              child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                        color: Colors.transparent,
                      ),
                  imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$numero1.png'),
            ),
          ),
          Center(
            child: SizedBox(
              height: 175,
              width: 175,
              child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                        color: Colors.transparent,
                      ),
                  imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$numero2.png'),
            ),
          ),
        ],
      );
    }
    if (numero1 != '' && numero2 == '') {
      return Center(
        child: SizedBox(
          height: 175,
          width: 175,
          child: CachedNetworkImage(
              placeholder: (context, url) => Container(
                    color: Colors.transparent,
                  ),
              imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$numero1.png'),
        ),
      );
    }
    if (numero1 != '' && numero2 != '' && numero3 != '') {
      return Column(
        children: [
          Center(
            child: SizedBox(
              height: 175,
              width: 175,
              child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                        color: Colors.transparent,
                      ),
                  imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$numero1.png'),
            ),
          ),
          Center(
            child: SizedBox(
              height: 175,
              width: 175,
              child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                        color: Colors.transparent,
                      ),
                  imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$numero2.png'),
            ),
          ),
          Center(
            child: SizedBox(
              height: 175,
              width: 175,
              child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                        color: Colors.transparent,
                      ),
                  imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$numero3.png'),
            ),
          ),
        ],
      );
    } else {
      return Center(
        child: Text(
          Status!,
          style: GoogleFonts.lato(color: Colors.black, fontSize: 40, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
        ),
      );
    }
  }
}

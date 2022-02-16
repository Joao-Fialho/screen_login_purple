class CPFValidate {
  String cpf;

  CPFValidate(this.cpf);
  String text = '';

  int sev() {
    int num1 = int.parse(cpf[0]);
    int num2 = int.parse(cpf[1]);
    int num3 = int.parse(cpf[2]);
    int num4 = int.parse(cpf[3]);
    int num5 = int.parse(cpf[4]);
    int num6 = int.parse(cpf[5]);
    int num7 = int.parse(cpf[6]);
    int num8 = int.parse(cpf[7]);
    int num9 = int.parse(cpf[8]);

    int sev = (num1 * 10) +
        (num2 * 9) +
        (num3 * 8) +
        (num4 * 7) +
        (num5 * 6) +
        (num6 * 5) +
        (num7 * 4) +
        (num8 * 3) +
        (num9 * 2);
    return sev;
  }

  int calcX() {
    int vezesdez = sev() * 10;
    int sobra = vezesdez % 11;

    int resultx;

    sobra == 10 ? resultx = 0 : resultx = sobra;
    // print(resultx);
    return resultx;
  }

  int calcY() {
    int num1 = int.parse(cpf[0]);
    int num2 = int.parse(cpf[1]);
    int num3 = int.parse(cpf[2]);
    int num4 = int.parse(cpf[3]);
    int num5 = int.parse(cpf[4]);
    int num6 = int.parse(cpf[5]);
    int num7 = int.parse(cpf[6]);
    int num8 = int.parse(cpf[7]);
    int num9 = int.parse(cpf[8]);
    int num10 = int.parse(cpf[9]);

    int sev = (num10 * 11) +
        (num9 * 10) +
        (num8 * 9) +
        (num7 * 8) +
        (num6 * 7) +
        (num5 * 6) +
        (num4 * 5) +
        (num3 * 4) +
        (num2 * 3) +
        (num1 * 2);
    int vezesdez = sev * 10;
    int sobra = vezesdez % 11;

    int resultY;
    sobra == 10 ? resultY = 0 : resultY = sobra;
    // print(resultY);

    return resultY;
  }

  bool isValid() {
    int numx = int.parse(cpf[9]);
    int numy = int.parse(cpf[10]);
    return numx == calcX() && numy == calcY() && cpf.isNotEmpty;
  }
}

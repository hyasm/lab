double t;
int x;
double f = 0;
do {
    t = Double.parseDouble(JOptionPane.showInputDialog("ادخل درجة الحرارة"));
    if (t < -60 || t > 210) {
        JOptionPane.showMessageDialog(null, "Try again!");
    }
} while (t < -60 || t > 210);
do {
    x = Integer.parseInt(JOptionPane.showInputDialog("اختر اختيارك"));
    if (x >= 3) {
        JOptionPane.showMessageDialog(null, "ERROR");
    }
} while (x >= 3);
{
    switch (x) {
        case 1:
            f = (t * 1.8) + 32;
            break;
        case 2:
            f = (t - 32) * 0.5556;
            break;
    }
}
JOptionPane.showMessageDialog(null, "ناتج التحويل هو" + f);

//
double sum = 0;
for (int i = 0; i < 5; i++) {
    double random = 1 + (int) (Math.random() * 100);
    JOptionPane.showMessageDialog(null, random);
    sum += random;
}
double result = Double.parseDouble(JOptionPane.showInputDialog("ادخل الناتج"));
if (sum == result) {
    JOptionPane.showMessageDialog(null, "الناتج صحيح");
} else {
    JOptionPane.showMessageDialog(null, "الناتج خطأ الناتج الصحيح هو " + sum);
}

//
int i = 1;
while (i <= 50) {
    if (i % 2 == 0) {
        System.out.print(i);
    }
    i++;
}
int x;
for (x = 1; x <= 50; x++) {
    if (x % 2 == 0) {
        System.out.print(x);
    }
}

//

String a = JOptionPane.showInputDialog("Name 1");
String b = JOptionPane.showInputDialog("Name 2");
if (a.equals(b)) {
    JOptionPane.showMessageDialog(null, "تستطيع الدخول");
} else {
    JOptionPane.showMessageDialog(null, "لا تستطيع الدخول");
}

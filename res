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

//

int type = 1;
int r_type = 1;
double salary = 0;
int years = 0;
double f_amount = 0;
String name;
do {
    name = JOptionPane.showInputDialog("اسم العميل");

    if (name.isEmpty()) {
        JOptionPane.showMessageDialog(null, "الرجاء ادخال اسم العميل");
    }
} while (name.isEmpty());
do {
    salary = Double.parseDouble(JOptionPane.showInputDialog("راتب العميل", "0"));
    if (salary <= 5000) {
        JOptionPane.showMessageDialog(null, "الرجاء ادخال راتب العميل");
    }
} while (salary <= 5000);

do {
    r_type = Integer.parseInt(JOptionPane.showInputDialog("نوع التمويل: شخصي (1) - عقار (2)", "1"));
    if (r_type < 1 || r_type > 2) {
        JOptionPane.showMessageDialog(null,
                "نوع التمويل يجب ان يكون  - شخصي (1) - عقار (2)");
    }
} while (r_type < 1 || r_type > 2);
do {
    type = Integer.parseInt(JOptionPane.showInputDialog("نوع العميل: حكومي مدني (1) - حكومي عسكري (2) - قطاع خاص (3)", "1"));
    if (type < 1 || type > 3) {
        JOptionPane.showMessageDialog(null, "نوع العميل يجب ان يكون  - حكومي مدني (1) - حكومي عسكري (2) - قطاع خاص (3)");
    }
} while (type < 1 || type > 3);

do {
    years = Integer.parseInt(JOptionPane.showInputDialog("عدد سنوات التمويل"));
    if (years <= 0) {
        JOptionPane.showMessageDialog(null, "الرجاء ادخال عدد سنوات التمويل");
    } else if (years > 25) {
        JOptionPane.showMessageDialog(null, "عدد سنوات التمويل يجب ان تكون اصغر من او يساوي 25 سنوات");
    }
} while (years <= 0 || years > 25);

switch (type) {
    case 1:
        f_amount = (salary * (r_type == 1 ? 0.33 : 0.65) * (years * 12) / 1.15);
        break;

    case 2:
        f_amount = (salary * (r_type == 1 ? 0.33 : 0.65) * (years * 12) / 1.20);
        break;

    case 3:
        f_amount = (salary * (r_type == 1 ? 0.33 : 0.65) * (years * 12) / 1.30);
        break;
}
double r_amount = (salary * 0.33 * (years * 12));
double a_fee = f_amount * 0.01;
double fees = a_fee + (a_fee * 0.15);
r_amount += fees;
JOptionPane.showMessageDialog(null,
        "اسم العميل: " + name
        + "\n نوع التمويل: " + (r_type == 1 ? "شخصي" : "عقاري")
        + "\n نوع العميل: " + (type == 1 ? "حكومي مدني" : (type == 2 ? "حكومي عسكري" : (type == 3 ? "قطاع خاص" : "")))
        + "\n را تب العميل: " + salary
        + "\n عدد سنوات التمويل: " + years
        + "\n مبلغ التمويل: " + String.format("%.2f", f_amount)
        + "\n المبلغ المطلوب سدادة " + String.format("%.2f", r_amount)
        + "\n الرسم الإدارية " + String.format("%.2f", fees)
);

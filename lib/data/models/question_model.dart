class QuestionModel{
  String question;
  String option1;
  String option2;
  String option3;
  String option4;
  int trueAnswer;

  QuestionModel({
    required this.question,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    this.trueAnswer=1
    });

  static final questions=[
    QuestionModel(question: "4*104∗10 yozuvdagi yulduzchani shunday raqam bilan almashtiringki, hosil bo‘lgan son 4545 ga qoldiqsiz bo‘linsin.", option1: "5", option2: "4", option3: "6", option4: "0", trueAnswer: 2),
    QuestionModel(question: "1, 5 · (6x + 8) = 12x − 3 tenglamani yeching.", option1: "5", option2: "15", option3: "3", option4: "4", trueAnswer: 1),
    QuestionModel(question: "Eng katta to‘rt xonali juft sondan eng kichik uch xonali natural toq sonni ayiring", option1: "9899", option2: "9897", option3: "9876", option4: "9898", trueAnswer: 2),
    QuestionModel(question: "2x2", option1: "5", option2: "4", option3: "14", option4: "15", trueAnswer: 2),
    QuestionModel(question: "Kasrni ustki qismi nima deb ataladi?", option1: "mahraj", option2: "ustki kasr", option3: "surat", option4: "hammasi togri", trueAnswer: 3),

  ];
  static final questions2=[
    QuestionModel(question: "Qaysi mamlakat eng ko'p tovuq goshti istemol qildi", option1: "AQSH", option2: "Xitoy", option3: "Hindiston", option4: "O'zbekiston", trueAnswer: 1),
    QuestionModel(question: "Korea so'zini ma'nosi nima?", option1: "Salom", option2: "Tong", option3: "ovqat", option4: "Tonggi ovqat", trueAnswer: 4),
    QuestionModel(question: "Qaysi davlatning rasmiy poytahti yo'q hisoblanadi", option1: "Chili", option2: "Kualampur", option3: "Nauru", option4: "Urugvay", trueAnswer: 3),
    QuestionModel(question: "Qaysi hayvon umrini 70%ni uhlash bilan o'tkazadi", option1: "Sichqon", option2: "Mushuk", option3: "Olmaxon", option4: "unaqasi yoq", trueAnswer: 2),
    QuestionModel(question: "Nima uchun odam orqasiga qaraydi?", option1: "qaragisi kegani uchun", option2: "qaramasayam boladi", option3: "qaremidyu", option4: "orqasida kozi yoqligi uchun", trueAnswer: 4),

  ];

  static final questions3=[
    QuestionModel(question: "Virezat, kopirovat, vstavit buyruqlari quyidagi menyular bo`limining qaysi biriga tegishli?", option1: "fayl", option2: "spravka", option3: "vstavka", option4: "pravka", trueAnswer: 2),
    QuestionModel(question: "Grafik muharrirlar qanday dastur?", option1: "matnning grafikdagi aksini hosil qilish", option2: "shriftning ko`rinishi va hsaklini tahrir qilish", option3: "grafik tasvirlar bilan ishlash", option4: "diagramma tuzish", trueAnswer: 3),
    QuestionModel(question: "Paint grafik muharriri qanday ishga tushiriladi?", option1: "Pusk – Programmi – Standartniye – Razvlecheniya – Paint", option2: "Pusk – Programmi – Paint", option3: "Pusk – Programmi – Standartniye – Paint", option4: "Pusk – Programmi – Avtozagruzka – Paint", trueAnswer: 1),
    QuestionModel(question: "“Otmenit” buyrug`i qaysi punktda joylashgan?", option1: "Pravka", option2: "fayl", option3: "vid", option4: "plita", trueAnswer: 3),
    QuestionModel(question: "Axborot tizimlari yoki axborot resurslariga kim egalik qilishi mumkin?", option1: "Yuridik va jismoniy shaxslar", option2: "tarmoq adminstratori", option3: "kompaniya direktori", option4: "tashkilot raxbari", trueAnswer: 1),

  ];
}
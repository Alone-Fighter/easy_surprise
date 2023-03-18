import 'package:dotted_border/dotted_border.dart';
import 'package:easy_surprise/constant.dart';
import 'package:easy_surprise/widgets/custom_dropdown.dart';
import 'package:easy_surprise/widgets/custom_textfield2.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController address = TextEditingController();

  List<DropdownMenuItem> genderList = [];
  var genderSelected = "";
  List<DropdownMenuItem> stateList = [];
  var stateSelected = "";

  final _formKey = GlobalKey<FormState>();
  var nameValid =
      (String? value) => value!.isNotEmpty ? null : "وارد کردن نام اجباری است";
  var addressValid =
      (String? value) => value!.isNotEmpty ? null : "ثبت آدرس اجباری است";
  var genderValid =
      (dynamic value) => value != null ? null : "انتخاب جنسیت اجباری است";
  var stateValid =
      (dynamic value) => value != null ? null : "انتخاب استان اجباری است";

  @override
  void initState() {
    genderList.add(
      DropdownMenuItem(
        value: "0",
        child: Text(
          'مرد',
          style: txt.txtYekanBakh.txtMedium.textBlack.txtLg,
        ),
      ),
    );
    genderList.add(
      DropdownMenuItem(
        value: "1",
        child: Text(
          'زن',
          style: txt.txtYekanBakh.txtMedium.textBlack.txtLg,
        ),
      ),
    );
    stateList.add(
      DropdownMenuItem(
        value: "0",
        child: Text(
          'اصفهان',
          style: txt.txtYekanBakh.txtMedium.textBlack.txtLg,
        ),
      ),
    );
    stateList.add(
      DropdownMenuItem(
        value: "1",
        child: Text(
          'تهران',
          style: txt.txtYekanBakh.txtMedium.textBlack.txtLg,
        ),
      ),
    );
    stateList.add(
      DropdownMenuItem(
        value: "2",
        child: Text(
          'شیراز',
          style: txt.txtYekanBakh.txtMedium.textBlack.txtLg,
        ),
      ),
    );
    stateList.add(
      DropdownMenuItem(
        value: "3",
        child: Text(
          'اهواز',
          style: txt.txtYekanBakh.txtMedium.textBlack.txtLg,
        ),
      ),
    );
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'اطلاعات فردی',
                      style: txt.txtYekanBakh.txtBold.textColor1.txt2Xl,
                    ),
                    const Spacer(),
                    Text(
                      '۳/',
                      style: txt.txtYekanBakh.txtMedium.textColor2.txtMd,
                    ),
                    Text(
                      '۱',
                      style: txt.txtYekanBakh.txtBold.textColor2.txt2Xl,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  animation: true,
                  isRTL: true,
                  lineHeight: 8.0,
                  animationDuration: 2500,
                  percent: 0.35,
                  barRadius: const Radius.circular(10),
                  progressColor: Colors.green,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField2(
                  height: 90,
                  validator: nameValid,
                  controller: name,
                  text: 'نام *',
                  maxLine: 1,
                ),
                CustomDropDown(
                  myCallBack: (val) {
                    print('$val============');
                  },
                  validator: genderValid,
                  height: 90,
                  text: 'جنسیت *',
                  menuItem: genderList,
                  selectedId: genderSelected,
                ),
                CustomDropDown(
                  myCallBack: (val) {
                    print('$val============');
                  },
                  validator: stateValid,
                  text: 'استان *',
                  height: 90,
                  menuItem: stateList,
                  selectedId: stateSelected,
                ),
                CustomTextField2(
                  height: 210,
                  validator: addressValid,
                  controller: address,
                  text: 'آدرس *',
                  inputType: TextInputType.multiline,
                  maxLine: 7,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder( // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(32),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            height: MediaQuery.of(context).size.height,
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Text('لیست مدارس',style: txt.txtYekanBakh.txtBold.txtLg.textColor2,),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text('لطفا مدرسه مورد نظر را انتخاب کنید',style: txt.txtYekanBakh.txtMedium.txtMd.textColor3,),
                                const SizedBox(
                                  height: 5,
                                ),
                                const CustomTextField2(text: 'جستجو', height: 53,prefixIcon: Icon(Icons.search,color: kHintColor,)),
                                const SizedBox(
                                  height: 25,
                                ),
                                Expanded(
                                  child: ListView(
                                    children: [
                                      createList(),
                                      createList(),
                                      createList(),
                                      createList(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  child: DottedBorder(
                    dashPattern: const [8, 4],
                    strokeWidth: 1,
                    color: Colors.grey,
                    child: Container(
                      height: 77,
                      color: kBackColorProgress,
                      child: Center(
                        child: Text(
                          'تعیین موقعیت مکانی روی نقشه',
                          style: txt.txtYekanBakh.txtMedium.textColor4.txtLg,
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'ادامه',
                        style: txt.txtYekanBakh.txtMedium.textWhite.txtLg,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
Widget createList(){
  return Row(
    crossAxisAlignment:CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 5),
        height: 15,
        width: 15,
        color: kHintColor,
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('تیزهوشان پسران علامه حلی(۱۲۳۴۵)',style: txt.txtYekanBakh.txtMedium.textColor2.txtLg,),
          const SizedBox(
            height: 20,
          ),
          Text('مشهد، خیابان امام رضا، کوچه جواد،پلاک ۷،نوالزهرا،\n طبقه ۱۲، واحد ۳ ',style: txt.txtYekanBakh.txtRegular.textColor2.txtMd,),

        ],
      ),
      const Spacer(),
      const Icon(Icons.arrow_back_ios_new,color: kArrowColor,size: 18,),
    ],
  );
}

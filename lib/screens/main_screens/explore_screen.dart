import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/back_button_opacity.dart';
import 'package:travel_in/widgets/images/explore_image_scroller.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final List<String> imagePaths1 = [
    'assets/explore/a/0.jpg',
    'assets/explore/a/1.jpg',
    'assets/explore/a/2.jpg',
   'assets/explore/a/3.jpg',
   'assets/explore/a/4.jpg',
   'assets/explore/a/5.jpg',
   'assets/explore/a/6.jpg',
   'assets/explore/a/7.jpg',
   'assets/explore/a/8.jpg',
   'assets/explore/a/10.jpg',
   'assets/explore/a/11.jpg',
   'assets/explore/a/12.jpg',

  ];

  final List<String> imagePaths2 = [
   'assets/explore/b/1.jpg',
   'assets/explore/b/2.jpg',
   'assets/explore/b/3.jpg',
   'assets/explore/b/4.jpg',
   'assets/explore/b/5.jpg',
   'assets/explore/b/6.jpg',
   'assets/explore/b/7.jpg',
   'assets/explore/b/8.jpg',
   'assets/explore/b/9.jpg',
   'assets/explore/b/10.jpg',
   'assets/explore/b/11.jpg',
   'assets/explore/b/12.jpg',
  ];

  final List<String> imagePaths3 = [
   'assets/explore/c/0.jpg',
   'assets/explore/c/1.jpg',
   'assets/explore/c/2.jpg',
   'assets/explore/c/3.jpg',
   'assets/explore/c/4.jpg',
   'assets/explore/c/5.jpg',
   'assets/explore/c/6.jpg',
  ];

  final List<String> imagePaths4 = [
   'assets/explore/d/0.jpg',
   'assets/explore/d/1.jpg',
   'assets/explore/d/2.jpg',
   'assets/explore/d/3.jpg',
   'assets/explore/d/4.jpg',
   'assets/explore/d/5.jpg',
  ];

    final List<String> imagePaths5 = [
    'assets/explore/e/0.jpg',
    'assets/explore/e/1.jpg',
    'assets/explore/e/2.jpg',
   'assets/explore/e/3.jpg',
   'assets/explore/e/4.jpg',
   'assets/explore/e/5.jpg',
   'assets/explore/e/6.jpg',
  ];

  final List<String> imagePaths6 = [
   'assets/explore/f/0.jpg',
   'assets/explore/f/1.jpg',
   'assets/explore/f/2.jpg',
   'assets/explore/f/3.jpg',
   'assets/explore/f/11.jpg',
   'assets/explore/f/12.jpg',
   'assets/explore/f/13.jpg',
   'assets/explore/f/6.jpg',
   'assets/explore/f/4.jpg',
   'assets/explore/f/10.jpg',
   'assets/explore/f/5.jpg',
   'assets/explore/f/7.jpg',
    'assets/explore/f/8.jpg',
   'assets/explore/f/9.jpg',

  ];

  final List<String> imagePaths7 = [
       'assets/explore/g/0.jpg',
   'assets/explore/g/1.jpg',
   'assets/explore/g/2.jpg',
   'assets/explore/g/3.jpg',
   'assets/explore/g/4.jpg',
   'assets/explore/g/5.jpg',
   'assets/explore/g/6.jpg',
   'assets/explore/g/7.jpg',
   'assets/explore/g/8.jpg',
   'assets/explore/g/9.jpg',
   'assets/explore/g/10.jpg',
   'assets/explore/g/11.jpg',
   'assets/explore/g/12.jpg',
    'assets/explore/g/13.jpg',
   'assets/explore/g/14.jpg',

  ];
  
  final List<String> imagePaths8 = [
       'assets/explore/h/0.jpg',
   'assets/explore/h/1.jpg',
   'assets/explore/h/2.jpg',
   'assets/explore/h/3.jpg',
   'assets/explore/h/4.jpg',
   'assets/explore/h/5.jpg',
   'assets/explore/h/6.jpg',
   'assets/explore/h/7.jpg',
  ];
 
  final List<String> imagePaths9 = [
    'assets/explore/i/0.jpg',
    'assets/explore/i/1.jpg',
    'assets/explore/i/2.jpg',
   'assets/explore/i/3.jpg',
   'assets/explore/i/4.jpg',
   'assets/explore/i/5.jpg',
   'assets/explore/i/6.jpg',
  ];

  final List<String> imagePaths10 = [
    'assets/explore/j/0.jpg',
    'assets/explore/j/1.jpg',
    'assets/explore/j/2.jpg',
   'assets/explore/j/3.jpg',
   'assets/explore/j/4.jpg',
   'assets/explore/j/5.jpg',
   'assets/explore/j/6.jpg',
    'assets/explore/j/7.jpg',
   'assets/explore/j/8.jpg',
   'assets/explore/j/9.jpg',
   'assets/explore/j/10.jpg',

  ];

  final List<String> imagePaths11 = [
    'assets/explore/k/0.jpg',
    'assets/explore/k/1.jpg',
    'assets/explore/k/2.jpg',
   'assets/explore/k/3.jpg',
   'assets/explore/k/4.jpg',
   'assets/explore/k/5.jpg',
   'assets/explore/k/6.jpg',
    'assets/explore/k/7.jpg',
   'assets/explore/k/8.jpg',
   'assets/explore/k/9.jpg',
    'assets/explore/k/10.jpg',
   'assets/explore/k/11.jpg',


  ];

  final List<String> imagePaths12 = [
    'assets/explore/l/00.png',
    'assets/explore/l/000.jpg',
    'assets/explore/l/0000.png',
   'assets/explore/l/11.jpg',
   'assets/explore/l/22.jpg',
   'assets/explore/l/0.jpg',
   'assets/explore/l/1.jpg',
    'assets/explore/l/2.jpg',
   'assets/explore/l/3.jpg',
   'assets/explore/l/4.jpg',
   'assets/explore/l/5.jpg',
   'assets/explore/l/6.jpg',
   'assets/explore/l/7.jpg',
   'assets/explore/l/8.jpg',
   'assets/explore/l/9.jpg',
   'assets/explore/l/10.jpg',
   'assets/explore/l/11.jpg',
   'assets/explore/l/12.jpg',
   'assets/explore/l/13.jpg',

  ];

  final List<String> imagePaths13 = [
    'assets/explore/m/0.jpg',
    'assets/explore/m/1.jpg',
    'assets/explore/m/2.jpg',
   'assets/explore/m/3.jpg',
   'assets/explore/m/4.jpg',
   'assets/explore/m/5.jpg',
   'assets/explore/m/6.jpg',
    'assets/explore/m/7.jpg',
   'assets/explore/m/8.jpg',
   'assets/explore/m/9.jpg',
    'assets/explore/m/10.jpg',
   'assets/explore/m/11.jpg',
   'assets/explore/m/12.jpg',

  ];

  final List<String> imagePaths14 = [
    'assets/explore/n/0.jpg',
    'assets/explore/n/1.jpg',
    'assets/explore/n/2.jpg',
   'assets/explore/n/3.jpg',
   'assets/explore/n/4.jpg',
   'assets/explore/n/7.jpg',
   'assets/explore/n/9.jpg',
    'assets/explore/n/10.jpg',
   'assets/explore/n/11.jpg',
   'assets/explore/n/12.jpg',
    'assets/explore/n/13.jpg',
   'assets/explore/n/14.jpg',
   'assets/explore/n/16.jpg',
   'assets/explore/n/17.jpg',
  ];

  final List<String> imagePaths15 = [
    'assets/explore/o/0.jpg',
    'assets/explore/o/1.jpg',
    'assets/explore/o/2.jpg',
   'assets/explore/o/3.jpg',
   'assets/explore/o/4.jpg',
   'assets/explore/o/5.jpg',
   'assets/explore/o/6.jpg',
    'assets/explore/o/7.jpg',
   'assets/explore/o/8.jpg',
   'assets/explore/o/9.jpg',
    'assets/explore/o/10.jpg',
   'assets/explore/o/11.jpg',
   'assets/explore/o/12.jpg',
   'assets/explore/o/13.jpg',
   'assets/explore/o/14.jpg',
   'assets/explore/o/16.jpg',
   'assets/explore/o/17.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    List<Widget> reel = [];

    final List<ImageProvider> imageProviders1 = imagePaths1.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders2 = imagePaths2.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders3 = imagePaths3.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders4 = imagePaths4.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders5 = imagePaths5.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders6 = imagePaths6.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders7 = imagePaths7.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders8 = imagePaths8.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders9 = imagePaths9.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders10 = imagePaths10.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders11 = imagePaths11.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders12 = imagePaths12.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders13 = imagePaths13.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders14 = imagePaths14.map(_getImageProvider).toList();
    final List<ImageProvider> imageProviders15 = imagePaths15.map(_getImageProvider).toList();


    reel.add(ExploreImageSlider(
      images: imageProviders1,
      title: "المغامرة تنتظرك",
      description: 
                              "حينما يصبح المشهد كاملاً من الجبال العملاقة، اعلم أنك داخل أودية اكاكوس الساحرة ... من قلب أوباري، نعلن عن بدء رحلتنا لاستكشاف أسرار أكاكوس وجمالها الآسر، برفقة نخبة من الخبراء الطوارق، نسعى من خلال هذه الرحلة لاكتشاف ما تخبئه هذه الأرض من كنوز طبيعية وتاريخية، ونقل صورة حية عن روعة معالمها. تابعونا في مغامرتنا الشيّقة لاكتشاف ما لم يُكتشف بعد" ,
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders2,
      title: "رحلة الي لبدة الكبري Lipts Magna ",
      description: 
                              "رحلة عبر الزمن الي ماضي عمره أكثر من 2000 سنة, أكبر مدينة رومانية في حوض البحر الأبيض المتوسط ماتزال تحتفظ بمعالمها الحضارية التاريخية. من قوس سبتيموس سيفيروس وشارع الديكومانوس والبالاسيترا وحمامات هدريان والنفيوم وشارع الاعمدة والفوروم السفيري والبازيليكا والفوروم القديم والمسرح والسوق البونيقي مرورا بشوارع وأقواس لبدة الكبري " ,
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders3,
      title: "واو الناموس لغز الصحراء",
      description: 
                              " عش أجواء المشي فوق الرماد البركاني والتخييم بجوار فوهة بركان واو الناموس بعد غروب الشمس في قلب الصحراء الليبية"  ,
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders4,
      title: "شواطئ الأثرون الجميلة",
      description: 
                              " معنى الاسم يعود إلى الإغريقية ويعني التربة الحمراء وهو ما تتميز به المنطقة بصفة عامة .. الاثرون مكان تاريخي قبل النواحي الجمالية حيث يحوي الكنائس والمقابر بالإضافة إلى امتداد وادي الإنجيل وقصة الحواري مرقص المعروفة .. "  ,
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders5,
      title: " رحلة الشرق الليبي",
      description: 
                              " بأجمل وأروع مناطق وتلال ومرتفعات وشواطيء جبلنا الأخضر الاشم هناك فالشرق حيث الطبيعة الخلابة تبارك الرحمن والاخضرار والوديان والعيون والآثار "  ,
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders6,
      title: " رحلة المدينة القديمة غدامس",
      description: 
                              " تعرف على مدينة غدامس الليبية وتجول في أزقة المنازل التقليدية داخل المدينة القديمة غدامس ثم الذهاب لمنطقة الرمال بالصحراء والتمتع بمشاهدة غروب الشمس من أعلى الكثبان الرملية  "  ,
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders7,
      title: " المنظمة الليبية للرحلات السياحية",
      description: 
                              " تعلن المنظمة الليبية للرحلات السياحية عن بداية تسيير رحلات سياحية للجنوب عن طريق الطيران  يعني تبي تمشي وتبي توصل عالسريع ومتبيش طول الطريق بيش تتمتع بأكثر وقت غادي .. نوفر لكم رحلات عائلية وشبابية عبر الطيران لزيارة بحيرات الجنوب وجبال اكاكوس  ونوفر أيضا مسار سياحي متكامل مع توفير سيارات رباعية الدفع بالإعاشة : فطور غداء عشاء طيلة فترة الرحلة…  يعني ارفع حقيبتك وكاميراتك لإلتقاط الصور واستمتع بقضاء أروع اللحظات الجميلة في أحضان الطبيعة الصحراوية الخلابة   "  ,
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders8,
      title: " عبق التاريخ",
      description: "رحلة إلى الرائعة الأثرية والموروث التاريخي مدينة قورينا شحات "
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders9,
      title: " رحلات الاثرون",
      description: "وادي مرقص الاثرون حيث تلتقي الجبال والبحر والطبيعة الخلابة "
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders10,
      title: "وقت المغامرة والحماس",
      description: "فرصة تجربة الدراجات البحرية في شواطئ الاثرون الزرقاء"
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders11,
      title: "رحلات للكهوف البحرية",
      description: "  "
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders12,
      title: "رحلة سفاري برقة الربيعية",
      description: "  تعرف على محمية الطيور المهاجرة ضواحي مدينة المرج "
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders13,
      title: "رحلات سفاري برقة",
      description: " إلى وادي مرقص .. هذا الوادي المملوء بالقصص والروايات وقيمته التاريخية  .. كل ما يهم هو الإستمتاع بالطبيعة وأجواء التخييم .. والتأمل في خلق الله ..  المسير على الأقدام .. والإستجمام والسباحة تحت الشلال .. التجمع والسمر حول نار المخيم .. تبادل القصص والحكايات .. تغذية البصر بجمال الوادي .. لحظات السكون وسماع أصوات الحيوانات والطيور .. أجواء عاشها المشاركون في الرحلة وتمنو أن لاتنتهي "
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders14,
      title: "فريق سفاري برقة",
      description: " لمن يرغب استكشاف أودية ساحل الجبل الأخضر .. من يود خوض مغامر اختبار قدراته البدنية والذهنية  .. لعُشّاق المسافات الطويلة سيراً على الأقدام ومُحِبّي تسلُّق الجبال  .. هُواة ومحترفي الترحال  ... هذي رحلتكم ... نضمن لكم المتعة .. التحدي .. المغامرة"
    ));

    reel.add(ExploreImageSlider(
      images: imageProviders15,
      title: "رحلة المغامر الصغير ",
      description: " عيش جو الخلا مع الصغار وخُوض معاهم تجربة جديدة عليك وعليهم مع فريقنا   تخييم .. مسير ..  مغامرات .. ترفيه .. زيارات لمعالم طبيعية ومواقع أثرية .. أنشطة وألعاب ومسابقات للصغار .. تشجير وزرع شتلات .. اختبار حقيقي لقوة الإرادة وتحمل مشاق الإستكشاف وخوض المغامرة ، وجود الأب مع ابنائه ومبيته معهم والتخييم في مكان نائي والطهي طيلة ايام الرحلة على نار الحطب تجربة فريدة من نوعها "
    ));

    reel.shuffle(); 

    return Container(
        child: Stack(children: [
          PageView(
            scrollDirection: Axis.vertical,
            children: reel,
            controller: controller,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: CustomBackButtonwithOpacity(),
                ),
              ],
            ),
          ),
        ]),
      
    );
  }

  ImageProvider _getImageProvider(String imagePath) {
    if (imagePath.startsWith('assets/')) {
      return AssetImage(imagePath);
    } else {
      return NetworkImage(imagePath);
    }
  }
}
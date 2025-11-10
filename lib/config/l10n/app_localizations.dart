import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @webinar.
  ///
  /// In en, this message translates to:
  /// **'Rocket LMS'**
  String get webinar;

  /// No description provided for @splashDesc.
  ///
  /// In en, this message translates to:
  /// **'Сурах хамгийн ухаалаг, хамгийн хялбар арга.'**
  String get splashDesc;

  /// No description provided for @introTitle1.
  ///
  /// In en, this message translates to:
  /// **'Одоо суралцаж эхэл!'**
  String get introTitle1;

  /// No description provided for @introTitle2.
  ///
  /// In en, this message translates to:
  /// **'Хувийн уулзалт товлоорой'**
  String get introTitle2;

  /// No description provided for @introTitle3.
  ///
  /// In en, this message translates to:
  /// **'Ур чадвараа бусдад заа'**
  String get introTitle3;

  /// No description provided for @introTitle4.
  ///
  /// In en, this message translates to:
  /// **'Хүссэн зүйлээ одоо суралц'**
  String get introTitle4;

  /// No description provided for @introDesc1.
  ///
  /// In en, this message translates to:
  /// **'Дэлхийн өнцөг булан бүрийн шилдэг багш нараас онлайн суралцаарай.'**
  String get introDesc1;

  /// No description provided for @introDesc2.
  ///
  /// In en, this message translates to:
  /// **'Чамд өдөр бүр чиглүүлэх хувийн багш хэрэгтэй байна уу? Одоо уулзалтаа захиалаад хичээллэ.'**
  String get introDesc2;

  /// No description provided for @introDesc3.
  ///
  /// In en, this message translates to:
  /// **'Өөрийн мэдлэг, туршлагаа бусадтай хуваалцаж, багш болж орлогоо нэмэгдүүлээрэй.'**
  String get introDesc3;

  /// No description provided for @introDesc4.
  ///
  /// In en, this message translates to:
  /// **'Янз бүрийн сэдвээр монгол болон гадаад багш нараас системтэйгээр суралц.'**
  String get introDesc4;

  /// No description provided for @getStart.
  ///
  /// In en, this message translates to:
  /// **'Эхлэх'**
  String get getStart;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Нэвтрэх'**
  String get login;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Бүртгүүлэх'**
  String get signup;

  /// No description provided for @skipLogin.
  ///
  /// In en, this message translates to:
  /// **'Зочны горимоор үргэлжлүүлэх'**
  String get skipLogin;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Шинэ бүртгэл үүсгэх'**
  String get createAccount;

  /// No description provided for @createAccountDesc.
  ///
  /// In en, this message translates to:
  /// **'Одоо нэгдээд суралцаж, бусдад зааж эхлээрэй.'**
  String get createAccountDesc;

  /// No description provided for @yourEmail.
  ///
  /// In en, this message translates to:
  /// **'Имэйл хаяг'**
  String get yourEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Нууц үг'**
  String get password;

  /// No description provided for @retypePassword.
  ///
  /// In en, this message translates to:
  /// **'Нууц үгийг дахин оруулах'**
  String get retypePassword;

  /// No description provided for @createAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэл үүсгэх'**
  String get createAnAccount;

  /// No description provided for @termsPoliciesDesc.
  ///
  /// In en, this message translates to:
  /// **'Манай үйлчилгээг ашигласнаар та\nНөхцөл, Бодлогыг зөвшөөрч байна.'**
  String get termsPoliciesDesc;

  /// No description provided for @haveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Өмнө нь бүртгүүлсэн үү?'**
  String get haveAnAccount;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Дахин тавтай морил!'**
  String get welcomeBack;

  /// No description provided for @welcomeBackDesc.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэлдээ нэвтэрч, суралцах аяллаа үргэлжлүүлээрэй.'**
  String get welcomeBackDesc;

  /// No description provided for @emailOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Имэйл эсвэл утасны дугаар'**
  String get emailOrPhone;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэлгүй байна уу?'**
  String get dontHaveAnAccount;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Нууц үгээ мартсан?'**
  String get forgetPassword;

  /// No description provided for @forgetPasswordDesc.
  ///
  /// In en, this message translates to:
  /// **'Санаа зоволтгүй, таны нууц үгийг шинэчлэхэд тусалъя.'**
  String get forgetPasswordDesc;

  /// No description provided for @haventReceiveTheCode.
  ///
  /// In en, this message translates to:
  /// **'Код ирээгүй юу?'**
  String get haventReceiveTheCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Кодыг дахин илгээх'**
  String get resendCode;

  /// No description provided for @verifyMyAccount.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэл баталгаажуулах'**
  String get verifyMyAccount;

  /// No description provided for @accountVerification.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэл баталгаажуулалт'**
  String get accountVerification;

  /// No description provided for @accountVerificationDesc.
  ///
  /// In en, this message translates to:
  /// **'Танд ирсэн баталгаажуулах кодыг оруулна уу.'**
  String get accountVerificationDesc;

  /// No description provided for @selectlanguage.
  ///
  /// In en, this message translates to:
  /// **'Хэл сонгох'**
  String get selectlanguage;

  /// No description provided for @searchCountry.
  ///
  /// In en, this message translates to:
  /// **'Улс эсвэл хэлээр хайх'**
  String get searchCountry;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Болих'**
  String get cancel;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэлтэй юу?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Утасны дугаар'**
  String get phoneNumber;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Нүүр'**
  String get home;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Хяналтын самбар'**
  String get dashboard;

  /// No description provided for @classes.
  ///
  /// In en, this message translates to:
  /// **'Хичээл'**
  String get classes;

  /// No description provided for @meetings.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт'**
  String get meetings;

  /// No description provided for @assignments.
  ///
  /// In en, this message translates to:
  /// **'Даалгавар'**
  String get assignments;

  /// No description provided for @quizzes.
  ///
  /// In en, this message translates to:
  /// **'Шалгалт'**
  String get quizzes;

  /// No description provided for @certificates.
  ///
  /// In en, this message translates to:
  /// **'Сертификат'**
  String get certificates;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Таалагдсан'**
  String get favorites;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл'**
  String get comments;

  /// No description provided for @financial.
  ///
  /// In en, this message translates to:
  /// **'Санхүү'**
  String get financial;

  /// No description provided for @subscription.
  ///
  /// In en, this message translates to:
  /// **'Гишүүнчлэл'**
  String get subscription;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Дэмжлэг'**
  String get support;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Гарах'**
  String get logOut;

  /// No description provided for @hi.
  ///
  /// In en, this message translates to:
  /// **'Сайн уу, '**
  String get hi;

  /// No description provided for @letsStartLearning.
  ///
  /// In en, this message translates to:
  /// **'өнөөдөр юу сурмаар байна?'**
  String get letsStartLearning;

  /// No description provided for @searchInputDesc.
  ///
  /// In en, this message translates to:
  /// **'Юуг хайж байна вэ?'**
  String get searchInputDesc;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'Бүгдийг харах'**
  String get viewAll;

  /// No description provided for @featuredClasses.
  ///
  /// In en, this message translates to:
  /// **'Онцлох хичээлүүд'**
  String get featuredClasses;

  /// No description provided for @newestClasses.
  ///
  /// In en, this message translates to:
  /// **'Шинэ хичээлүүд'**
  String get newestClasses;

  /// No description provided for @bestRated.
  ///
  /// In en, this message translates to:
  /// **'Өндөр үнэлгээтэй'**
  String get bestRated;

  /// No description provided for @bestSelling.
  ///
  /// In en, this message translates to:
  /// **'Хамгийн их зарагдсан'**
  String get bestSelling;

  /// No description provided for @discountedClasses.
  ///
  /// In en, this message translates to:
  /// **'Хямдралтай хичээлүүд'**
  String get discountedClasses;

  /// No description provided for @freeClasses.
  ///
  /// In en, this message translates to:
  /// **'Үнэгүй хичээлүүд'**
  String get freeClasses;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Дууссан'**
  String get finished;

  /// No description provided for @notConducted.
  ///
  /// In en, this message translates to:
  /// **'Явагдаагүй'**
  String get notConducted;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'Явагдаж байна'**
  String get inProgress;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'Идэвхгүй'**
  String get off;

  /// No description provided for @liveClass.
  ///
  /// In en, this message translates to:
  /// **'Шууд хичээл'**
  String get liveClass;

  /// No description provided for @course.
  ///
  /// In en, this message translates to:
  /// **'Курс'**
  String get course;

  /// No description provided for @textClass.
  ///
  /// In en, this message translates to:
  /// **'Текст хичээл'**
  String get textClass;

  /// No description provided for @featured.
  ///
  /// In en, this message translates to:
  /// **'Онцгой'**
  String get featured;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'цаг'**
  String get hours;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Ангилал'**
  String get categories;

  /// No description provided for @providers.
  ///
  /// In en, this message translates to:
  /// **'Үйлчилгээ үзүүлэгчид'**
  String get providers;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Блог'**
  String get blog;

  /// No description provided for @myClassess.
  ///
  /// In en, this message translates to:
  /// **'Миний хичээлүүд'**
  String get myClassess;

  /// No description provided for @yourName.
  ///
  /// In en, this message translates to:
  /// **'Таны нэр'**
  String get yourName;

  /// No description provided for @refCode.
  ///
  /// In en, this message translates to:
  /// **'Урилгын код'**
  String get refCode;

  /// No description provided for @continue_.
  ///
  /// In en, this message translates to:
  /// **'Үргэлжлүүлэх'**
  String get continue_;

  /// No description provided for @finalizeYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэлээ баталгаажуулах'**
  String get finalizeYourAccount;

  /// No description provided for @free.
  ///
  /// In en, this message translates to:
  /// **'Үнэгүй'**
  String get free;

  /// No description provided for @trending.
  ///
  /// In en, this message translates to:
  /// **'Трэнд'**
  String get trending;

  /// No description provided for @browseCategories.
  ///
  /// In en, this message translates to:
  /// **'Ангиллуудыг харах'**
  String get browseCategories;

  /// No description provided for @courses.
  ///
  /// In en, this message translates to:
  /// **'Курсууд'**
  String get courses;

  /// No description provided for @options.
  ///
  /// In en, this message translates to:
  /// **'Сонголт'**
  String get options;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Шүүлтүүр'**
  String get filters;

  /// No description provided for @dataNotFound.
  ///
  /// In en, this message translates to:
  /// **'Өгөгдөл алга'**
  String get dataNotFound;

  /// No description provided for @dataNotFoundDesc.
  ///
  /// In en, this message translates to:
  /// **'Энд харагдуулах зүйл одоогоор алга байна.'**
  String get dataNotFoundDesc;

  /// No description provided for @upcomingClasses.
  ///
  /// In en, this message translates to:
  /// **'Удахгүй эхлэх хичээлүүд'**
  String get upcomingClasses;

  /// No description provided for @downloadableContent.
  ///
  /// In en, this message translates to:
  /// **'Татаж авах контент'**
  String get downloadableContent;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Эрэмбэлэх'**
  String get sortBy;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'Бүгд'**
  String get all;

  /// No description provided for @newest.
  ///
  /// In en, this message translates to:
  /// **'Шинэ эхэлсэн'**
  String get newest;

  /// No description provided for @highestPrice.
  ///
  /// In en, this message translates to:
  /// **'Өндөр үнэтэй'**
  String get highestPrice;

  /// No description provided for @lowestPrice.
  ///
  /// In en, this message translates to:
  /// **'Бага үнэтэй'**
  String get lowestPrice;

  /// No description provided for @bestSellers.
  ///
  /// In en, this message translates to:
  /// **'Их зарагдсан'**
  String get bestSellers;

  /// No description provided for @applyOptions.
  ///
  /// In en, this message translates to:
  /// **'Сонголтыг хэрэгжүүлэх'**
  String get applyOptions;

  /// No description provided for @filterItems.
  ///
  /// In en, this message translates to:
  /// **'Шүүлтүүр сонгох'**
  String get filterItems;

  /// No description provided for @level.
  ///
  /// In en, this message translates to:
  /// **'Түвшин'**
  String get level;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Хэл'**
  String get language;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Төрөл'**
  String get type;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Хайх'**
  String get search;

  /// No description provided for @searchResultDesc.
  ///
  /// In en, this message translates to:
  /// **'Үр дүн олдлоо: '**
  String get searchResultDesc;

  /// No description provided for @suggestedRandom.
  ///
  /// In en, this message translates to:
  /// **'Санамсаргүй санал'**
  String get suggestedRandom;

  /// No description provided for @users.
  ///
  /// In en, this message translates to:
  /// **'Хэрэглэгчид'**
  String get users;

  /// No description provided for @organizations.
  ///
  /// In en, this message translates to:
  /// **'Байгууллагууд'**
  String get organizations;

  /// No description provided for @resultNotFound.
  ///
  /// In en, this message translates to:
  /// **'Үр дүн алга'**
  String get resultNotFound;

  /// No description provided for @tryMoreAccurateWordsToReachResults.
  ///
  /// In en, this message translates to:
  /// **'Илүү тодорхой түлхүүр үг ашиглаарай.'**
  String get tryMoreAccurateWordsToReachResults;

  /// No description provided for @instrcutors.
  ///
  /// In en, this message translates to:
  /// **'Багш нар'**
  String get instrcutors;

  /// No description provided for @consultants.
  ///
  /// In en, this message translates to:
  /// **'Зөвлөхүүд'**
  String get consultants;

  /// No description provided for @noInstructor.
  ///
  /// In en, this message translates to:
  /// **'Багш байхгүй байна'**
  String get noInstructor;

  /// No description provided for @noInstructorDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ хэсэгт багш бүртгэгдээгүй байна.'**
  String get noInstructorDesc;

  /// No description provided for @noOrganization.
  ///
  /// In en, this message translates to:
  /// **'Байгууллага байхгүй байна'**
  String get noOrganization;

  /// No description provided for @noOrganizationDesc.
  ///
  /// In en, this message translates to:
  /// **'Одоогоор байгууллага бүртгэгдээгүй байна.'**
  String get noOrganizationDesc;

  /// No description provided for @noConsultants.
  ///
  /// In en, this message translates to:
  /// **'Зөвлөх алга'**
  String get noConsultants;

  /// No description provided for @noConsultantsDesc.
  ///
  /// In en, this message translates to:
  /// **'Одоогоор зөвлөх бүртгэлгүй байна.'**
  String get noConsultantsDesc;

  /// No description provided for @availableForMeetings.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт авах боломжтой'**
  String get availableForMeetings;

  /// No description provided for @blogPost.
  ///
  /// In en, this message translates to:
  /// **'Блог нийтлэл'**
  String get blogPost;

  /// No description provided for @leaveAComment.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл үлдээх'**
  String get leaveAComment;

  /// No description provided for @submitComment.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл илгээх'**
  String get submitComment;

  /// No description provided for @submitCommentDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ багштай хичээллэх туршлагаа хуваалцаарай.'**
  String get submitCommentDesc;

  /// No description provided for @commentOptions.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдлийн сонголт'**
  String get commentOptions;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'Хариулах'**
  String get reply;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Мэдэгдэх'**
  String get report;

  /// No description provided for @replyToComment.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэлд хариулах'**
  String get replyToComment;

  /// No description provided for @selectReportReason.
  ///
  /// In en, this message translates to:
  /// **'Шалтгаан сонгох'**
  String get selectReportReason;

  /// No description provided for @messageToReviewer.
  ///
  /// In en, this message translates to:
  /// **'Хянагчид явуулах мессеж'**
  String get messageToReviewer;

  /// No description provided for @in_.
  ///
  /// In en, this message translates to:
  /// **' -д'**
  String get in_;

  /// No description provided for @blogCategories.
  ///
  /// In en, this message translates to:
  /// **'Блогийн ангилал'**
  String get blogCategories;

  /// No description provided for @noComments.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл алга'**
  String get noComments;

  /// No description provided for @noCommentsDesc.
  ///
  /// In en, this message translates to:
  /// **'Анхны сэтгэгдлээ үлдээгээрэй.'**
  String get noCommentsDesc;

  /// No description provided for @noBlogPosts.
  ///
  /// In en, this message translates to:
  /// **'Нийтлэл алга'**
  String get noBlogPosts;

  /// No description provided for @noBlogPostsDesc.
  ///
  /// In en, this message translates to:
  /// **'Одоогоор блог нийтлэл байхгүй байна.'**
  String get noBlogPostsDesc;

  /// No description provided for @selectACurrency.
  ///
  /// In en, this message translates to:
  /// **'Валют сонгох'**
  String get selectACurrency;

  /// No description provided for @courseDetails.
  ///
  /// In en, this message translates to:
  /// **'Курсын мэдээлэл'**
  String get courseDetails;

  /// No description provided for @information.
  ///
  /// In en, this message translates to:
  /// **'Мэдээлэл'**
  String get information;

  /// No description provided for @content.
  ///
  /// In en, this message translates to:
  /// **'Агуулга'**
  String get content;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл'**
  String get reviews;

  /// No description provided for @subscribe.
  ///
  /// In en, this message translates to:
  /// **'Гишүүн болох'**
  String get subscribe;

  /// No description provided for @enrollOnClass.
  ///
  /// In en, this message translates to:
  /// **'Курсэд бүртгүүлэх'**
  String get enrollOnClass;

  /// No description provided for @certificate.
  ///
  /// In en, this message translates to:
  /// **'Сертификат'**
  String get certificate;

  /// No description provided for @included.
  ///
  /// In en, this message translates to:
  /// **'Багтсан'**
  String get included;

  /// No description provided for @quiz.
  ///
  /// In en, this message translates to:
  /// **'Тест'**
  String get quiz;

  /// No description provided for @supported.
  ///
  /// In en, this message translates to:
  /// **'Дэмжигдсэн'**
  String get supported;

  /// No description provided for @class_.
  ///
  /// In en, this message translates to:
  /// **'Хичээл'**
  String get class_;

  /// No description provided for @specialOffer.
  ///
  /// In en, this message translates to:
  /// **'Онцгой\nсанал'**
  String get specialOffer;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Өдөр'**
  String get day;

  /// No description provided for @hr.
  ///
  /// In en, this message translates to:
  /// **'Цаг'**
  String get hr;

  /// No description provided for @min.
  ///
  /// In en, this message translates to:
  /// **'Минут'**
  String get min;

  /// No description provided for @sec.
  ///
  /// In en, this message translates to:
  /// **'Секунд'**
  String get sec;

  /// No description provided for @students.
  ///
  /// In en, this message translates to:
  /// **'Суралцагч'**
  String get students;

  /// No description provided for @capacity.
  ///
  /// In en, this message translates to:
  /// **'Багтаамж'**
  String get capacity;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Эхлэх огноо'**
  String get startDate;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Үргэлжлэх хугацаа'**
  String get duration;

  /// No description provided for @prerequisties.
  ///
  /// In en, this message translates to:
  /// **'Урьдчилсан нөхцөл'**
  String get prerequisties;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Сагсанд нэмэх'**
  String get addToCart;

  /// No description provided for @selectPricingPlan.
  ///
  /// In en, this message translates to:
  /// **'Үнэний багц сонгох'**
  String get selectPricingPlan;

  /// No description provided for @classOptions.
  ///
  /// In en, this message translates to:
  /// **'Хичээлийн сонголтууд'**
  String get classOptions;

  /// No description provided for @addToCalendar.
  ///
  /// In en, this message translates to:
  /// **'Календарт нэмэх'**
  String get addToCalendar;

  /// No description provided for @addToFavorites.
  ///
  /// In en, this message translates to:
  /// **'Таалагдсан руу нэмэх'**
  String get addToFavorites;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Хуваалцах'**
  String get share;

  /// No description provided for @viewMore.
  ///
  /// In en, this message translates to:
  /// **'Дэлгэрэнгүй харах'**
  String get viewMore;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Төлөв'**
  String get status;

  /// No description provided for @downloadable.
  ///
  /// In en, this message translates to:
  /// **'Татаж авч болдог'**
  String get downloadable;

  /// No description provided for @questions.
  ///
  /// In en, this message translates to:
  /// **'Асуулт'**
  String get questions;

  /// No description provided for @contentQuality.
  ///
  /// In en, this message translates to:
  /// **'Агуулгын чанар'**
  String get contentQuality;

  /// No description provided for @instructorSkills.
  ///
  /// In en, this message translates to:
  /// **'Багшийн ур чадвар'**
  String get instructorSkills;

  /// No description provided for @purchaseWorth.
  ///
  /// In en, this message translates to:
  /// **'Худалдан авалт үнэ цэнтэй байсан эсэх'**
  String get purchaseWorth;

  /// No description provided for @supportQuality.
  ///
  /// In en, this message translates to:
  /// **'Дэмжлэгийн чанар'**
  String get supportQuality;

  /// No description provided for @noReviews.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл алга'**
  String get noReviews;

  /// No description provided for @noReviewsDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ курсд одоогоор сэтгэгдэл байхгүй байна.'**
  String get noReviewsDesc;

  /// No description provided for @noCommentsCourseDesc.
  ///
  /// In en, this message translates to:
  /// **'Курс дээр сэтгэгдэл үлдээгээгүй байна.'**
  String get noCommentsCourseDesc;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Үнэ'**
  String get price;

  /// No description provided for @reviewTheCourse.
  ///
  /// In en, this message translates to:
  /// **'Курсэд үнэлгээ өгөх'**
  String get reviewTheCourse;

  /// No description provided for @reviewTheCourseDesc.
  ///
  /// In en, this message translates to:
  /// **'Эхлээд одоор үнэлж, дараа нь сэтгэгдлээ бичээрэй.'**
  String get reviewTheCourseDesc;

  /// No description provided for @writeReview.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл бичих'**
  String get writeReview;

  /// No description provided for @writeReviewDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ курсийн талаар өөрийн бодлоо бичээрэй.'**
  String get writeReviewDesc;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Илгээх'**
  String get submit;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Дууссан'**
  String get completed;

  /// No description provided for @goToLearningPage.
  ///
  /// In en, this message translates to:
  /// **'Хичээлийн хуудсанд очих'**
  String get goToLearningPage;

  /// No description provided for @lessons.
  ///
  /// In en, this message translates to:
  /// **'Хичээлүүд'**
  String get lessons;

  /// No description provided for @buyWithPoints.
  ///
  /// In en, this message translates to:
  /// **'Оноогоор авах'**
  String get buyWithPoints;

  /// No description provided for @youHave.
  ///
  /// In en, this message translates to:
  /// **'Танд'**
  String get youHave;

  /// No description provided for @rewardPoints.
  ///
  /// In en, this message translates to:
  /// **'шагналын оноо байна'**
  String get rewardPoints;

  /// No description provided for @purchase.
  ///
  /// In en, this message translates to:
  /// **'Худалдан авах'**
  String get purchase;

  /// No description provided for @bundleCourse.
  ///
  /// In en, this message translates to:
  /// **'Курсийн багц'**
  String get bundleCourse;

  /// No description provided for @notices.
  ///
  /// In en, this message translates to:
  /// **'Мэдэгдэл'**
  String get notices;

  /// No description provided for @postedBy.
  ///
  /// In en, this message translates to:
  /// **'Нийтэлсэн:'**
  String get postedBy;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Хаах'**
  String get close;

  /// No description provided for @forum.
  ///
  /// In en, this message translates to:
  /// **'Форум'**
  String get forum;

  /// No description provided for @resolved.
  ///
  /// In en, this message translates to:
  /// **'Шийдэгдсэн'**
  String get resolved;

  /// No description provided for @openQuestions.
  ///
  /// In en, this message translates to:
  /// **'Нээлттэй асуултууд'**
  String get openQuestions;

  /// No description provided for @answers.
  ///
  /// In en, this message translates to:
  /// **'Хариулт'**
  String get answers;

  /// No description provided for @activeUsers.
  ///
  /// In en, this message translates to:
  /// **'Идэвхтэй хэрэглэгчид'**
  String get activeUsers;

  /// No description provided for @lastActivity.
  ///
  /// In en, this message translates to:
  /// **'Сүүлийн үйлдэл'**
  String get lastActivity;

  /// No description provided for @searchInCourseForum.
  ///
  /// In en, this message translates to:
  /// **'Курсийн форумд хайх'**
  String get searchInCourseForum;

  /// No description provided for @pin.
  ///
  /// In en, this message translates to:
  /// **'Түгжих'**
  String get pin;

  /// No description provided for @unpin.
  ///
  /// In en, this message translates to:
  /// **'Түгжээг гаргах'**
  String get unpin;

  /// No description provided for @resultsFoundFor.
  ///
  /// In en, this message translates to:
  /// **'Дараах хайлтын үр дүн:'**
  String get resultsFoundFor;

  /// No description provided for @newQuestion.
  ///
  /// In en, this message translates to:
  /// **'Шинэ асуулт'**
  String get newQuestion;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Илгээх'**
  String get send;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Гарчиг'**
  String get title;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Тайлбар'**
  String get description;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Татах'**
  String get download;

  /// No description provided for @markAsResolved.
  ///
  /// In en, this message translates to:
  /// **'Шийдэгдсэн гэж тэмдэглэх'**
  String get markAsResolved;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Засах'**
  String get edit;

  /// No description provided for @replyToCourseForum.
  ///
  /// In en, this message translates to:
  /// **'Форумд хариу бичих'**
  String get replyToCourseForum;

  /// No description provided for @noQuestion.
  ///
  /// In en, this message translates to:
  /// **'Асуулт алга'**
  String get noQuestion;

  /// No description provided for @noQuestionDesc.
  ///
  /// In en, this message translates to:
  /// **'Эхний асуултаа асууж, бусадтай харилцаарай.'**
  String get noQuestionDesc;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Мэдэгдэл'**
  String get notification;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Сагс'**
  String get cart;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Дэд дүн'**
  String get subtotal;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Хөнгөлөлт'**
  String get discount;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Татвар'**
  String get tax;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Нийт'**
  String get total;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Төлбөр төлөх'**
  String get checkout;

  /// No description provided for @addCoupon.
  ///
  /// In en, this message translates to:
  /// **'Купон нэмэх'**
  String get addCoupon;

  /// No description provided for @validate.
  ///
  /// In en, this message translates to:
  /// **'Баталгаажуулах'**
  String get validate;

  /// No description provided for @startPayment.
  ///
  /// In en, this message translates to:
  /// **'Төлбөр эхлүүлэх'**
  String get startPayment;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Төлбөрийн арга'**
  String get paymentMethod;

  /// No description provided for @successfulPayment.
  ///
  /// In en, this message translates to:
  /// **'Төлбөр амжилттай'**
  String get successfulPayment;

  /// No description provided for @successfulPaymentDesc.
  ///
  /// In en, this message translates to:
  /// **'Төлбөр амжилттай хийгдлээ.'**
  String get successfulPaymentDesc;

  /// No description provided for @paymentFailed.
  ///
  /// In en, this message translates to:
  /// **'Төлбөр амжилтгүй'**
  String get paymentFailed;

  /// No description provided for @paymentFailedDesc.
  ///
  /// In en, this message translates to:
  /// **'Төлбөр амжилтгүй боллоо. Дахин оролдоно уу.'**
  String get paymentFailedDesc;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Устгах'**
  String get remove;

  /// No description provided for @accountCharge.
  ///
  /// In en, this message translates to:
  /// **'Данс цэнэглэх'**
  String get accountCharge;

  /// No description provided for @offlinePayment.
  ///
  /// In en, this message translates to:
  /// **'Офлайн төлбөр'**
  String get offlinePayment;

  /// No description provided for @userGroupDiscount.
  ///
  /// In en, this message translates to:
  /// **'Хэрэглэгчийн бүлгийн хөнгөлөлт'**
  String get userGroupDiscount;

  /// No description provided for @courseMaterialDetails.
  ///
  /// In en, this message translates to:
  /// **'Курсийн материалын дэлгэрэнгүй'**
  String get courseMaterialDetails;

  /// No description provided for @volume.
  ///
  /// In en, this message translates to:
  /// **'Хэмжээ'**
  String get volume;

  /// No description provided for @publishDate.
  ///
  /// In en, this message translates to:
  /// **'Нийтэлсэн огноо'**
  String get publishDate;

  /// No description provided for @text_lesson.
  ///
  /// In en, this message translates to:
  /// **'Текст хичээл'**
  String get text_lesson;

  /// No description provided for @iHaveReadThisLesson.
  ///
  /// In en, this message translates to:
  /// **'Энэ хичээлийг уншсан'**
  String get iHaveReadThisLesson;

  /// No description provided for @join.
  ///
  /// In en, this message translates to:
  /// **'Нэгдэх'**
  String get join;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'Тоглуулах'**
  String get play;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'Харах'**
  String get view;

  /// No description provided for @thisSessionConductedOn.
  ///
  /// In en, this message translates to:
  /// **'Энэ сесс дараах өдөр явагдсан:'**
  String get thisSessionConductedOn;

  /// No description provided for @accessDenied.
  ///
  /// In en, this message translates to:
  /// **'Хандалт байхгүй'**
  String get accessDenied;

  /// No description provided for @accessDeniedDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ хэсэгт хандахын тулд өмнөх хэсгийг эхлээд дуусгана уу.'**
  String get accessDeniedDesc;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'Үгүй'**
  String get no;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Тийм'**
  String get yes;

  /// No description provided for @noContentForShow.
  ///
  /// In en, this message translates to:
  /// **'Үзүүлэх зүйл алга'**
  String get noContentForShow;

  /// No description provided for @attachments.
  ///
  /// In en, this message translates to:
  /// **'Хавсралт'**
  String get attachments;

  /// No description provided for @noNotifications.
  ///
  /// In en, this message translates to:
  /// **'Мэдэгдэл алга'**
  String get noNotifications;

  /// No description provided for @noNotificationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Одоогоор шинэ мэдэгдэл алга байна.'**
  String get noNotificationsDesc;

  /// No description provided for @cartIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Сагс хоосон'**
  String get cartIsEmpty;

  /// No description provided for @cartIsEmptyDesc.
  ///
  /// In en, this message translates to:
  /// **'Таалагдсан курсуудаа сагсанд нэмээд, захиалга үүсгээрэй.'**
  String get cartIsEmptyDesc;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Буцах'**
  String get back;

  /// No description provided for @successAddToCartDesc.
  ///
  /// In en, this message translates to:
  /// **'Захиалгаа гүйцээхийн тулд сагс руугаа орно уу.'**
  String get successAddToCartDesc;

  /// No description provided for @notAccessContent.
  ///
  /// In en, this message translates to:
  /// **'Энэ контентод хандах эрхгүй.'**
  String get notAccessContent;

  /// No description provided for @offlinePaymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Офлайн төлбөрийн мэдээлэл'**
  String get offlinePaymentDetails;

  /// No description provided for @selectBank.
  ///
  /// In en, this message translates to:
  /// **'Банк сонгох'**
  String get selectBank;

  /// No description provided for @reference.
  ///
  /// In en, this message translates to:
  /// **'Лавлах дугаар'**
  String get reference;

  /// No description provided for @banksInfo.
  ///
  /// In en, this message translates to:
  /// **'Банкны мэдээлэл'**
  String get banksInfo;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Дүн'**
  String get amount;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Огноо'**
  String get date;

  /// No description provided for @bankAccount.
  ///
  /// In en, this message translates to:
  /// **'Банкны данс'**
  String get bankAccount;

  /// No description provided for @successfulyRequest.
  ///
  /// In en, this message translates to:
  /// **'Таны хүсэлт амжилттай илгээгдлээ.'**
  String get successfulyRequest;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Дагагч'**
  String get followers;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'Танилцуулга'**
  String get about;

  /// No description provided for @badges.
  ///
  /// In en, this message translates to:
  /// **'Медаль'**
  String get badges;

  /// No description provided for @meeting.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт'**
  String get meeting;

  /// No description provided for @instructorIsUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Багш одоогоор завгүй байна'**
  String get instructorIsUnavailable;

  /// No description provided for @experiences.
  ///
  /// In en, this message translates to:
  /// **'Ажлын туршлага'**
  String get experiences;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Боловсрол'**
  String get education;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Дагах'**
  String get follow;

  /// No description provided for @license.
  ///
  /// In en, this message translates to:
  /// **'Лицензээ идэвхжүүлнэ үү'**
  String get license;

  /// No description provided for @unFollow.
  ///
  /// In en, this message translates to:
  /// **'Дагахаа болих'**
  String get unFollow;

  /// No description provided for @sendMessage.
  ///
  /// In en, this message translates to:
  /// **'Мессеж илгээх'**
  String get sendMessage;

  /// No description provided for @reserveMeetingDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэхүү зөвлөхтэй шууд уулзалт товлож, дараах цагийн үнээр хичээллэнэ:'**
  String get reserveMeetingDesc;

  /// No description provided for @reserveMeeting.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт захиалах'**
  String get reserveMeeting;

  /// No description provided for @hourlyCharge.
  ///
  /// In en, this message translates to:
  /// **'Цагийн төлбөр'**
  String get hourlyCharge;

  /// No description provided for @noBiography.
  ///
  /// In en, this message translates to:
  /// **'Танилцуулга алга'**
  String get noBiography;

  /// No description provided for @noBiographyDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ багш өөрийн танилцуулгыг хараахан нэмээгүй байна.'**
  String get noBiographyDesc;

  /// No description provided for @noCourses.
  ///
  /// In en, this message translates to:
  /// **'Курс алга'**
  String get noCourses;

  /// No description provided for @noCoursesDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ багш одоогоор курс нэмээгүй байна.'**
  String get noCoursesDesc;

  /// No description provided for @noBadges.
  ///
  /// In en, this message translates to:
  /// **'Медаль алга'**
  String get noBadges;

  /// No description provided for @noBadgesDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ багшид одоогоор медаль байхгүй байна.'**
  String get noBadgesDesc;

  /// No description provided for @noInstructorProfileDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ байгууллагад багш бүртгэгдээгүй байна.'**
  String get noInstructorProfileDesc;

  /// No description provided for @pickaDate.
  ///
  /// In en, this message translates to:
  /// **'Огноо сонгох'**
  String get pickaDate;

  /// No description provided for @meetingTimesAreAvailable.
  ///
  /// In en, this message translates to:
  /// **'Дараах өдрүүдэд уулзалтын цаг байна.'**
  String get meetingTimesAreAvailable;

  /// No description provided for @important.
  ///
  /// In en, this message translates to:
  /// **'Чухал'**
  String get important;

  /// No description provided for @timeSlotsDisplayedIn.
  ///
  /// In en, this message translates to:
  /// **'Цагийн сонголт дараах бүсээр харагдана:'**
  String get timeSlotsDisplayedIn;

  /// No description provided for @timeZone.
  ///
  /// In en, this message translates to:
  /// **'Цагийн бүс'**
  String get timeZone;

  /// No description provided for @pickaTime.
  ///
  /// In en, this message translates to:
  /// **'Цаг сонгох'**
  String get pickaTime;

  /// No description provided for @finalizeReservation.
  ///
  /// In en, this message translates to:
  /// **'Захиалгаа баталгаажуулах'**
  String get finalizeReservation;

  /// No description provided for @reserved.
  ///
  /// In en, this message translates to:
  /// **'Захиалсан'**
  String get reserved;

  /// No description provided for @selectedTime.
  ///
  /// In en, this message translates to:
  /// **'Сонгосон цаг:'**
  String get selectedTime;

  /// No description provided for @meetingDetails.
  ///
  /// In en, this message translates to:
  /// **'Уулзалтын дэлгэрэнгүй'**
  String get meetingDetails;

  /// No description provided for @onlineMeetingHourlyRate.
  ///
  /// In en, this message translates to:
  /// **'Онлайн уулзалтын цагийн үнэ: '**
  String get onlineMeetingHourlyRate;

  /// No description provided for @inPersonMeetingHourlyRate.
  ///
  /// In en, this message translates to:
  /// **'Биеэр уулзалтын цагийн үнэ: '**
  String get inPersonMeetingHourlyRate;

  /// No description provided for @instructorConductsGroupMeetings.
  ///
  /// In en, this message translates to:
  /// **'Энэ багш бүлгийн уулзалт явуулдаг.'**
  String get instructorConductsGroupMeetings;

  /// No description provided for @conductionType.
  ///
  /// In en, this message translates to:
  /// **'Явуулах хэлбэр'**
  String get conductionType;

  /// No description provided for @inPerson.
  ///
  /// In en, this message translates to:
  /// **'Биеэр'**
  String get inPerson;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Онлайн'**
  String get online;

  /// No description provided for @meetingType.
  ///
  /// In en, this message translates to:
  /// **'Уулзалтын төрөл'**
  String get meetingType;

  /// No description provided for @individual.
  ///
  /// In en, this message translates to:
  /// **'Ганцаарчилсан'**
  String get individual;

  /// No description provided for @group.
  ///
  /// In en, this message translates to:
  /// **'Бүлгийн'**
  String get group;

  /// No description provided for @participates.
  ///
  /// In en, this message translates to:
  /// **'Оролцогчид'**
  String get participates;

  /// No description provided for @groupMeetingDetails.
  ///
  /// In en, this message translates to:
  /// **'Бүлгийн уулзалтын мэдээлэл'**
  String get groupMeetingDetails;

  /// No description provided for @meetingHourlyRate.
  ///
  /// In en, this message translates to:
  /// **'Уулзалтын цагийн төлбөр: '**
  String get meetingHourlyRate;

  /// No description provided for @groupLiveCapacity.
  ///
  /// In en, this message translates to:
  /// **'Бүлгийн шууд хичээлийн багтаамж:'**
  String get groupLiveCapacity;

  /// No description provided for @successfullyRegisteredMeeting.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт амжилттай захиалагдлаа.'**
  String get successfullyRegisteredMeeting;

  /// No description provided for @myAssignments.
  ///
  /// In en, this message translates to:
  /// **'Миний даалгавар'**
  String get myAssignments;

  /// No description provided for @studentAssignmetns.
  ///
  /// In en, this message translates to:
  /// **'Оюутны даалгавар'**
  String get studentAssignmetns;

  /// No description provided for @lastSubmission.
  ///
  /// In en, this message translates to:
  /// **'Сүүлчийн илгээх хугацаа'**
  String get lastSubmission;

  /// No description provided for @firstSubmission.
  ///
  /// In en, this message translates to:
  /// **'Эхний илгээлт'**
  String get firstSubmission;

  /// No description provided for @deadline.
  ///
  /// In en, this message translates to:
  /// **'Хугацаа дуусах өдөр'**
  String get deadline;

  /// No description provided for @grade.
  ///
  /// In en, this message translates to:
  /// **'Дүн'**
  String get grade;

  /// No description provided for @attempts.
  ///
  /// In en, this message translates to:
  /// **'Оролдлого'**
  String get attempts;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Хянагдаж байна'**
  String get pending;

  /// No description provided for @passed.
  ///
  /// In en, this message translates to:
  /// **'Тэнцсэн'**
  String get passed;

  /// No description provided for @notSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Илгээхгүй үлдсэн'**
  String get notSubmitted;

  /// No description provided for @assignmentOverview.
  ///
  /// In en, this message translates to:
  /// **'Даалгаврын тойм'**
  String get assignmentOverview;

  /// No description provided for @assignmentDetails.
  ///
  /// In en, this message translates to:
  /// **'Даалгаврын дэлгэрэнгүй'**
  String get assignmentDetails;

  /// No description provided for @passGrade.
  ///
  /// In en, this message translates to:
  /// **'Тэнцэх босго'**
  String get passGrade;

  /// No description provided for @totalGrade.
  ///
  /// In en, this message translates to:
  /// **'Нийт оноо'**
  String get totalGrade;

  /// No description provided for @yourGrade.
  ///
  /// In en, this message translates to:
  /// **'Таны дүн'**
  String get yourGrade;

  /// No description provided for @assignmentHistory.
  ///
  /// In en, this message translates to:
  /// **'Даалгаврын түүх'**
  String get assignmentHistory;

  /// No description provided for @submitAssignment.
  ///
  /// In en, this message translates to:
  /// **'Даалгавар илгээх'**
  String get submitAssignment;

  /// No description provided for @assignmentSubmission.
  ///
  /// In en, this message translates to:
  /// **'Даалгавар илгээх хэсэг'**
  String get assignmentSubmission;

  /// No description provided for @fileTileOptional.
  ///
  /// In en, this message translates to:
  /// **'Файлын гарчиг (заавал биш)'**
  String get fileTileOptional;

  /// No description provided for @assignmentClosed.
  ///
  /// In en, this message translates to:
  /// **'Даалгавар хаагдсан'**
  String get assignmentClosed;

  /// No description provided for @youCanNotSendFilesAnymMore.
  ///
  /// In en, this message translates to:
  /// **'Дахин файл илгээх боломжгүй.'**
  String get youCanNotSendFilesAnymMore;

  /// No description provided for @assignmentPassed.
  ///
  /// In en, this message translates to:
  /// **'Даалгаврыг амжилттай давсан'**
  String get assignmentPassed;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Идэвхтэй'**
  String get active;

  /// No description provided for @totalSubmissions.
  ///
  /// In en, this message translates to:
  /// **'Нийт илгээсэн'**
  String get totalSubmissions;

  /// No description provided for @averageGrade.
  ///
  /// In en, this message translates to:
  /// **'Дундаж дүн'**
  String get averageGrade;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Унасан'**
  String get failed;

  /// No description provided for @submissions.
  ///
  /// In en, this message translates to:
  /// **'Илгээлтүүд'**
  String get submissions;

  /// No description provided for @latestSubmissions.
  ///
  /// In en, this message translates to:
  /// **'Сүүлийн илгээсэн'**
  String get latestSubmissions;

  /// No description provided for @reviewSubmissions.
  ///
  /// In en, this message translates to:
  /// **'Илгээлтийг шалгах'**
  String get reviewSubmissions;

  /// No description provided for @viewAssignment.
  ///
  /// In en, this message translates to:
  /// **'Даалгавар харах'**
  String get viewAssignment;

  /// No description provided for @allSubmissions.
  ///
  /// In en, this message translates to:
  /// **'Бүх илгээлт'**
  String get allSubmissions;

  /// No description provided for @noSubmissions.
  ///
  /// In en, this message translates to:
  /// **'Илгээлт алга'**
  String get noSubmissions;

  /// No description provided for @noSubmissionsDesc.
  ///
  /// In en, this message translates to:
  /// **'Шалгах даалгавар оюутнаас ирээгүй байна.'**
  String get noSubmissionsDesc;

  /// No description provided for @rateAssignment.
  ///
  /// In en, this message translates to:
  /// **'Даалгаварт үнэлгээ өгөх'**
  String get rateAssignment;

  /// No description provided for @passGradeIis.
  ///
  /// In en, this message translates to:
  /// **'Тэнцэх оноо: '**
  String get passGradeIis;

  /// No description provided for @assignmentPassedDesc.
  ///
  /// In en, this message translates to:
  /// **'Та даалгаврыг давсан тул цаашид файл илгээх шаардлагагүй.'**
  String get assignmentPassedDesc;

  /// No description provided for @summary.
  ///
  /// In en, this message translates to:
  /// **'Товч тойм'**
  String get summary;

  /// No description provided for @offlinePayments.
  ///
  /// In en, this message translates to:
  /// **'Офлайн төлбөрүүд'**
  String get offlinePayments;

  /// No description provided for @sales.
  ///
  /// In en, this message translates to:
  /// **'Борлуулалт'**
  String get sales;

  /// No description provided for @payout.
  ///
  /// In en, this message translates to:
  /// **'Шилжүүлэлт'**
  String get payout;

  /// No description provided for @accountBalance.
  ///
  /// In en, this message translates to:
  /// **'Дансны үлдэгдэл'**
  String get accountBalance;

  /// No description provided for @charge.
  ///
  /// In en, this message translates to:
  /// **'Цэнэглэх'**
  String get charge;

  /// No description provided for @balancesHistory.
  ///
  /// In en, this message translates to:
  /// **'Үлдэгдлийн түүх'**
  String get balancesHistory;

  /// No description provided for @payoutHistory.
  ///
  /// In en, this message translates to:
  /// **'Шилжүүлгийн түүх'**
  String get payoutHistory;

  /// No description provided for @salesHistory.
  ///
  /// In en, this message translates to:
  /// **'Борлуулалтын түүх'**
  String get salesHistory;

  /// No description provided for @payoutRequest.
  ///
  /// In en, this message translates to:
  /// **'Гүйлгээ шилжүүлэх хүсэлт'**
  String get payoutRequest;

  /// No description provided for @financialSettings.
  ///
  /// In en, this message translates to:
  /// **'Санхүүгийн тохиргоо'**
  String get financialSettings;

  /// No description provided for @classSales.
  ///
  /// In en, this message translates to:
  /// **'Курсийн борлуулалт'**
  String get classSales;

  /// No description provided for @meetingSales.
  ///
  /// In en, this message translates to:
  /// **'Уулзалтын борлуулалт'**
  String get meetingSales;

  /// No description provided for @totalSales.
  ///
  /// In en, this message translates to:
  /// **'Нийт борлуулалт'**
  String get totalSales;

  /// No description provided for @ref.
  ///
  /// In en, this message translates to:
  /// **'Лавлах'**
  String get ref;

  /// No description provided for @waiting.
  ///
  /// In en, this message translates to:
  /// **'Хүлээгдэж байна'**
  String get waiting;

  /// No description provided for @rejected.
  ///
  /// In en, this message translates to:
  /// **'Татгалзсан'**
  String get rejected;

  /// No description provided for @noBalance.
  ///
  /// In en, this message translates to:
  /// **'Үлдэгдэл алга'**
  String get noBalance;

  /// No description provided for @noBalanceDesc.
  ///
  /// In en, this message translates to:
  /// **'Таны дансанд одоогоор үлдэгдэл алга.'**
  String get noBalanceDesc;

  /// No description provided for @noBankAccounts.
  ///
  /// In en, this message translates to:
  /// **'Банкны данс алга'**
  String get noBankAccounts;

  /// No description provided for @noBankAccountsDesc.
  ///
  /// In en, this message translates to:
  /// **'Офлайн төлбөрт зориулсан банкны данс бүртгэгдээгүй байна.'**
  String get noBankAccountsDesc;

  /// No description provided for @noOfflinePayments.
  ///
  /// In en, this message translates to:
  /// **'Офлайн төлбөр алга'**
  String get noOfflinePayments;

  /// No description provided for @noOfflinePaymentsDesc.
  ///
  /// In en, this message translates to:
  /// **'Танд офлайн төлбөрийн хүсэлт ирээгүй байна.'**
  String get noOfflinePaymentsDesc;

  /// No description provided for @noPayout.
  ///
  /// In en, this message translates to:
  /// **'Шилжүүлэлт алга'**
  String get noPayout;

  /// No description provided for @noPayoutDesc.
  ///
  /// In en, this message translates to:
  /// **'Одоогоор гүйлгээ шилжүүлсэн түүх алга.'**
  String get noPayoutDesc;

  /// No description provided for @noSales.
  ///
  /// In en, this message translates to:
  /// **'Борлуулалт алга'**
  String get noSales;

  /// No description provided for @noSalesDesc.
  ///
  /// In en, this message translates to:
  /// **'Та одоогоор ямар нэг хичээл эсвэл уулзалт зараагүй байна.'**
  String get noSalesDesc;

  /// No description provided for @readyToPayout.
  ///
  /// In en, this message translates to:
  /// **'Шилжүүлэх боломжтой'**
  String get readyToPayout;

  /// No description provided for @requestPayout.
  ///
  /// In en, this message translates to:
  /// **'Шилжүүлэлт хүсэх'**
  String get requestPayout;

  /// No description provided for @requestPayoutDesc.
  ///
  /// In en, this message translates to:
  /// **'Мөнгийг шилжүүлэхийн тулд банкны дансны мэдээллээ баталгаажуулна уу.'**
  String get requestPayoutDesc;

  /// No description provided for @cardID.
  ///
  /// In en, this message translates to:
  /// **'Картын ID'**
  String get cardID;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Данс'**
  String get account;

  /// No description provided for @iban.
  ///
  /// In en, this message translates to:
  /// **'IBAN'**
  String get iban;

  /// No description provided for @purchased.
  ///
  /// In en, this message translates to:
  /// **'Худалдан авсан'**
  String get purchased;

  /// No description provided for @invited.
  ///
  /// In en, this message translates to:
  /// **'Урьсан'**
  String get invited;

  /// No description provided for @organization.
  ///
  /// In en, this message translates to:
  /// **'Байгууллага'**
  String get organization;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Ангилал'**
  String get category;

  /// No description provided for @accessExpiresOn.
  ///
  /// In en, this message translates to:
  /// **'Хандалт дуусах огноо'**
  String get accessExpiresOn;

  /// No description provided for @courseOverview.
  ///
  /// In en, this message translates to:
  /// **'Курсийн тойм'**
  String get courseOverview;

  /// No description provided for @classID.
  ///
  /// In en, this message translates to:
  /// **'Курсийн ID'**
  String get classID;

  /// No description provided for @sessions.
  ///
  /// In en, this message translates to:
  /// **'Сесс'**
  String get sessions;

  /// No description provided for @dateCreated.
  ///
  /// In en, this message translates to:
  /// **'Үүсгэсэн огноо'**
  String get dateCreated;

  /// No description provided for @requests.
  ///
  /// In en, this message translates to:
  /// **'Хүсэлтүүд'**
  String get requests;

  /// No description provided for @startMeeting.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт эхлүүлэх'**
  String get startMeeting;

  /// No description provided for @joinMeeting.
  ///
  /// In en, this message translates to:
  /// **'Уулзалтад нэгдэх'**
  String get joinMeeting;

  /// No description provided for @finishmeeting.
  ///
  /// In en, this message translates to:
  /// **'Уулзалтыг дуусгах'**
  String get finishmeeting;

  /// No description provided for @meetingOptions.
  ///
  /// In en, this message translates to:
  /// **'Уулзалтын сонголт'**
  String get meetingOptions;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Цуцлагдсан'**
  String get canceled;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Хаяг'**
  String get address;

  /// No description provided for @createJoinInfo.
  ///
  /// In en, this message translates to:
  /// **'Нэгдэх мэдээлэл үүсгэх'**
  String get createJoinInfo;

  /// No description provided for @joinURL.
  ///
  /// In en, this message translates to:
  /// **'Нэгдэх холбоос'**
  String get joinURL;

  /// No description provided for @passwordOptional.
  ///
  /// In en, this message translates to:
  /// **'Нууц үг (заавал биш)'**
  String get passwordOptional;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Хадгалах'**
  String get save;

  /// No description provided for @noMeetings.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт алга'**
  String get noMeetings;

  /// No description provided for @noMeetingsDesc.
  ///
  /// In en, this message translates to:
  /// **'Таалагдсан багштайгаа уулзалт захиалаад хичээллэж эхлээрэй.'**
  String get noMeetingsDesc;

  /// No description provided for @noCourseClassesDesc.
  ///
  /// In en, this message translates to:
  /// **'Курсэд бүртгүүлээд хичээлээ эхлээрэй.'**
  String get noCourseClassesDesc;

  /// No description provided for @consultant.
  ///
  /// In en, this message translates to:
  /// **'Зөвлөх'**
  String get consultant;

  /// No description provided for @reservatore.
  ///
  /// In en, this message translates to:
  /// **'Захиалагч'**
  String get reservatore;

  /// No description provided for @startTime.
  ///
  /// In en, this message translates to:
  /// **'Эхлэх цаг'**
  String get startTime;

  /// No description provided for @endTime.
  ///
  /// In en, this message translates to:
  /// **'Дуусах цаг'**
  String get endTime;

  /// No description provided for @meetingJoinDetails.
  ///
  /// In en, this message translates to:
  /// **'Нэгдэх мэдээлэл'**
  String get meetingJoinDetails;

  /// No description provided for @myComments.
  ///
  /// In en, this message translates to:
  /// **'Миний сэтгэгдлүүд'**
  String get myComments;

  /// No description provided for @myClassComments.
  ///
  /// In en, this message translates to:
  /// **'Курсийн сэтгэгдлүүд'**
  String get myClassComments;

  /// No description provided for @commentDetails.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдлийн дэлгэрэнгүй'**
  String get commentDetails;

  /// No description provided for @thisCommentIsFor.
  ///
  /// In en, this message translates to:
  /// **'Энэ сэтгэгдэл дараах зүйлд хамаарна:'**
  String get thisCommentIsFor;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Устгах'**
  String get delete;

  /// No description provided for @editComment.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл засах'**
  String get editComment;

  /// No description provided for @reportComment.
  ///
  /// In en, this message translates to:
  /// **'Сэтгэгдэл мэдээлэх'**
  String get reportComment;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Нээлттэй'**
  String get open;

  /// No description provided for @thereIsNoInformationToDisplay.
  ///
  /// In en, this message translates to:
  /// **'Одоогоор үзүүлэх мэдээлэл алга.'**
  String get thereIsNoInformationToDisplay;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Тохиргоо'**
  String get settings;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'Ерөнхий'**
  String get general;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Аюулгүй байдал'**
  String get security;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Имэйл'**
  String get email;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Нэр'**
  String get name;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Утас'**
  String get phone;

  /// No description provided for @referralURL.
  ///
  /// In en, this message translates to:
  /// **'Урилгын холбоос'**
  String get referralURL;

  /// No description provided for @joinNewsletter.
  ///
  /// In en, this message translates to:
  /// **'Мэдээллийн товхимолд бүртгүүлэх'**
  String get joinNewsletter;

  /// No description provided for @accountType.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэлийн төрөл'**
  String get accountType;

  /// No description provided for @accountID.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэлийн ID'**
  String get accountID;

  /// No description provided for @identityScan.
  ///
  /// In en, this message translates to:
  /// **'Иргэний үнэмлэхийн зураг'**
  String get identityScan;

  /// No description provided for @certificatesDocuments.
  ///
  /// In en, this message translates to:
  /// **'Сертификат, баримтууд'**
  String get certificatesDocuments;

  /// No description provided for @approved.
  ///
  /// In en, this message translates to:
  /// **'Зөвшөөрөгдсөн'**
  String get approved;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Камер'**
  String get camera;

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Оруулах'**
  String get upload;

  /// No description provided for @financialApproval.
  ///
  /// In en, this message translates to:
  /// **'Санхүүгийн баталгаажуулалт'**
  String get financialApproval;

  /// No description provided for @financialApprovalDesc.
  ///
  /// In en, this message translates to:
  /// **'Таны санхүүгийн мэдээлэл хараахан баталгаажаагүй байна.'**
  String get financialApprovalDesc;

  /// No description provided for @localization.
  ///
  /// In en, this message translates to:
  /// **'Байршил'**
  String get localization;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Улс'**
  String get country;

  /// No description provided for @province.
  ///
  /// In en, this message translates to:
  /// **'Аймаг / Муж'**
  String get province;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'Хот'**
  String get city;

  /// No description provided for @district.
  ///
  /// In en, this message translates to:
  /// **'Дүүрэг'**
  String get district;

  /// No description provided for @passwordUpdateDesc.
  ///
  /// In en, this message translates to:
  /// **'Нууц үг амжилттай шинэчлэгдлээ.'**
  String get passwordUpdateDesc;

  /// No description provided for @sendDataDesc.
  ///
  /// In en, this message translates to:
  /// **'Өгөгдөл илгээж байна. Түр хүлээнэ үү...'**
  String get sendDataDesc;

  /// No description provided for @myResults.
  ///
  /// In en, this message translates to:
  /// **'Миний үр дүн'**
  String get myResults;

  /// No description provided for @notParticipated.
  ///
  /// In en, this message translates to:
  /// **'Ороогүй'**
  String get notParticipated;

  /// No description provided for @studentResults.
  ///
  /// In en, this message translates to:
  /// **'Оюутны үр дүн'**
  String get studentResults;

  /// No description provided for @list.
  ///
  /// In en, this message translates to:
  /// **'Жагсаалт'**
  String get list;

  /// No description provided for @quizInfomration.
  ///
  /// In en, this message translates to:
  /// **'Шалгалтын мэдээлэл'**
  String get quizInfomration;

  /// No description provided for @totalMark.
  ///
  /// In en, this message translates to:
  /// **'Нийт оноо'**
  String get totalMark;

  /// No description provided for @passMark.
  ///
  /// In en, this message translates to:
  /// **'Тэнцэх оноо'**
  String get passMark;

  /// No description provided for @passedStudents.
  ///
  /// In en, this message translates to:
  /// **'Тэнцсэн оюутнууд'**
  String get passedStudents;

  /// No description provided for @backToQuizzes.
  ///
  /// In en, this message translates to:
  /// **'Шалгалтын жагсаалт руу буцах'**
  String get backToQuizzes;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'Үр дүн алга'**
  String get noResults;

  /// No description provided for @youHaveNoQuizResults.
  ///
  /// In en, this message translates to:
  /// **'Танд шалгалтын үр дүн хараахан алга.'**
  String get youHaveNoQuizResults;

  /// No description provided for @noStudentResults.
  ///
  /// In en, this message translates to:
  /// **'Оюутны үр дүн алга'**
  String get noStudentResults;

  /// No description provided for @noStudentResultsDesc.
  ///
  /// In en, this message translates to:
  /// **'Таны оюутнуудад хараахан үр дүн гаргаагүй байна.'**
  String get noStudentResultsDesc;

  /// No description provided for @youPassedTheQuiz.
  ///
  /// In en, this message translates to:
  /// **'Та шалгалтад тэнцлээ'**
  String get youPassedTheQuiz;

  /// No description provided for @youPassedTheQuizDesc.
  ///
  /// In en, this message translates to:
  /// **'Баяр хүргэе! Та шалгалтыг амжилттай давлаа.'**
  String get youPassedTheQuizDesc;

  /// No description provided for @waitForFinalResult.
  ///
  /// In en, this message translates to:
  /// **'Эцсийн үр дүнг хүлээнэ үү'**
  String get waitForFinalResult;

  /// No description provided for @waitForFinalResultDesc.
  ///
  /// In en, this message translates to:
  /// **'Тайлбар бичих асуултуудтай тул багшийн үнэлгээг хүлээх шаардлагатай.'**
  String get waitForFinalResultDesc;

  /// No description provided for @youFailedTheQuiz.
  ///
  /// In en, this message translates to:
  /// **'Та шалгалтад унав'**
  String get youFailedTheQuiz;

  /// No description provided for @youFailedTheQuizDesc.
  ///
  /// In en, this message translates to:
  /// **'Харамсалтай байна. Дахин оролдоод үзээрэй.'**
  String get youFailedTheQuizDesc;

  /// No description provided for @submitDate.
  ///
  /// In en, this message translates to:
  /// **'Илгээсэн огноо'**
  String get submitDate;

  /// No description provided for @reviewQuiz.
  ///
  /// In en, this message translates to:
  /// **'Шалгалтыг шалгах'**
  String get reviewQuiz;

  /// No description provided for @reviewAnswers.
  ///
  /// In en, this message translates to:
  /// **'Хариултыг шалгах'**
  String get reviewAnswers;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Дахин оролдох'**
  String get retry;

  /// No description provided for @quizResult.
  ///
  /// In en, this message translates to:
  /// **'Шалгалтын үр дүн'**
  String get quizResult;

  /// No description provided for @student.
  ///
  /// In en, this message translates to:
  /// **'Оюутан'**
  String get student;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Цаг'**
  String get time;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Эхлэх'**
  String get start;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Асуулт'**
  String get question;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Өмнөх'**
  String get previous;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Дараах'**
  String get next;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Дуусгах'**
  String get finish;

  /// No description provided for @correctAnswer.
  ///
  /// In en, this message translates to:
  /// **'Зөв хариулт'**
  String get correctAnswer;

  /// No description provided for @studentGrade.
  ///
  /// In en, this message translates to:
  /// **'Оюутны дүн'**
  String get studentGrade;

  /// No description provided for @studentsAnswer.
  ///
  /// In en, this message translates to:
  /// **'Оюутны хариулт'**
  String get studentsAnswer;

  /// No description provided for @quizReview.
  ///
  /// In en, this message translates to:
  /// **'Шалгалт шалгах'**
  String get quizReview;

  /// No description provided for @thisQuizIncludes.
  ///
  /// In en, this message translates to:
  /// **'Энэ шалгалт нь'**
  String get thisQuizIncludes;

  /// No description provided for @questionsForReview.
  ///
  /// In en, this message translates to:
  /// **'хяналтын асуултуудтай.'**
  String get questionsForReview;

  /// No description provided for @typeYourAnswerHere.
  ///
  /// In en, this message translates to:
  /// **'Хариултаа энд бичнэ үү'**
  String get typeYourAnswerHere;

  /// No description provided for @correct.
  ///
  /// In en, this message translates to:
  /// **'Зөв'**
  String get correct;

  /// No description provided for @reviewTheResult.
  ///
  /// In en, this message translates to:
  /// **'Үр дүнг шалгах'**
  String get reviewTheResult;

  /// No description provided for @reviewTheResultDesc.
  ///
  /// In en, this message translates to:
  /// **'Тайлбар бичих асуултуудтай тул та өөрөө шалгана уу.'**
  String get reviewTheResultDesc;

  /// No description provided for @quizCerts.
  ///
  /// In en, this message translates to:
  /// **'Шалгалтын сертификат'**
  String get quizCerts;

  /// No description provided for @completionCerts.
  ///
  /// In en, this message translates to:
  /// **'Дуусгасан сертификат'**
  String get completionCerts;

  /// No description provided for @classCerts.
  ///
  /// In en, this message translates to:
  /// **'Курсийн сертификат'**
  String get classCerts;

  /// No description provided for @certificateDetails.
  ///
  /// In en, this message translates to:
  /// **'Сертификатын дэлгэрэнгүй'**
  String get certificateDetails;

  /// No description provided for @shareCertificate.
  ///
  /// In en, this message translates to:
  /// **'Сертификат хуваалцах'**
  String get shareCertificate;

  /// No description provided for @shareCertificateDesc.
  ///
  /// In en, this message translates to:
  /// **'Сертификатаа сошиалд байршуулж, бусдыг урамшуул.'**
  String get shareCertificateDesc;

  /// No description provided for @takenDate.
  ///
  /// In en, this message translates to:
  /// **'Олгосон огноо'**
  String get takenDate;

  /// No description provided for @certificateID.
  ///
  /// In en, this message translates to:
  /// **'Сертификат ID'**
  String get certificateID;

  /// No description provided for @totalStudents.
  ///
  /// In en, this message translates to:
  /// **'Нийт суралцагч'**
  String get totalStudents;

  /// No description provided for @average.
  ///
  /// In en, this message translates to:
  /// **'Дундаж'**
  String get average;

  /// No description provided for @certificateOverview.
  ///
  /// In en, this message translates to:
  /// **'Сертификатын тойм'**
  String get certificateOverview;

  /// No description provided for @certificateOverviewDesc.
  ///
  /// In en, this message translates to:
  /// **'Доорх мэдээллээр сургалтын чанарыг үнэлээрэй.'**
  String get certificateOverviewDesc;

  /// No description provided for @certificateStudents.
  ///
  /// In en, this message translates to:
  /// **'Сертификаттай суралцагчид'**
  String get certificateStudents;

  /// No description provided for @youHaveNotAccess.
  ///
  /// In en, this message translates to:
  /// **'Энэ хэсэгт хандах эрхгүй байна.'**
  String get youHaveNotAccess;

  /// No description provided for @achievements.
  ///
  /// In en, this message translates to:
  /// **'Амжилтууд'**
  String get achievements;

  /// No description provided for @noCertificates.
  ///
  /// In en, this message translates to:
  /// **'Сертификат алга'**
  String get noCertificates;

  /// No description provided for @noCertificatesDesc.
  ///
  /// In en, this message translates to:
  /// **'Танд одоогоор сертификат байхгүй байна.'**
  String get noCertificatesDesc;

  /// No description provided for @activePlan.
  ///
  /// In en, this message translates to:
  /// **'Идэвхтэй\nбагц'**
  String get activePlan;

  /// No description provided for @remainedDownloads.
  ///
  /// In en, this message translates to:
  /// **'Үлдсэн\nтаталт'**
  String get remainedDownloads;

  /// No description provided for @remainedDays.
  ///
  /// In en, this message translates to:
  /// **'Үлдсэн\nөдөр'**
  String get remainedDays;

  /// No description provided for @selectAPlan.
  ///
  /// In en, this message translates to:
  /// **'Багц сонгох'**
  String get selectAPlan;

  /// No description provided for @daysOfSubscription.
  ///
  /// In en, this message translates to:
  /// **'Гишүүнчлэлийн хугацаа (өдөр)'**
  String get daysOfSubscription;

  /// No description provided for @classesSubscription.
  ///
  /// In en, this message translates to:
  /// **'Курсийн гишүүнчлэл'**
  String get classesSubscription;

  /// No description provided for @noActiveSubscriptionPlan.
  ///
  /// In en, this message translates to:
  /// **'Идэвхтэй гишүүнчлэлгүй байна.'**
  String get noActiveSubscriptionPlan;

  /// No description provided for @noFavorites.
  ///
  /// In en, this message translates to:
  /// **'Таалагдсан алга'**
  String get noFavorites;

  /// No description provided for @noFavoritesDesc.
  ///
  /// In en, this message translates to:
  /// **'Таалагдсан курс, багшаа эндээс хадгалаарай.'**
  String get noFavoritesDesc;

  /// No description provided for @newEvents.
  ///
  /// In en, this message translates to:
  /// **'шинэ үйл явдал байна'**
  String get newEvents;

  /// No description provided for @pendingMessages.
  ///
  /// In en, this message translates to:
  /// **'Хүлээгдэж буй\nмессеж'**
  String get pendingMessages;

  /// No description provided for @pendingMeetings.
  ///
  /// In en, this message translates to:
  /// **'Хүлээгдэж буй\nуулзалт'**
  String get pendingMeetings;

  /// No description provided for @supportMessages.
  ///
  /// In en, this message translates to:
  /// **'Дэмжлэгийн\nмессеж'**
  String get supportMessages;

  /// No description provided for @monthlySales.
  ///
  /// In en, this message translates to:
  /// **'Сарын\nборлуулалт'**
  String get monthlySales;

  /// No description provided for @purchasedCourses.
  ///
  /// In en, this message translates to:
  /// **'Худалдан авсан\nкурс'**
  String get purchasedCourses;

  /// No description provided for @learningStatistics.
  ///
  /// In en, this message translates to:
  /// **'Суралцах статистик'**
  String get learningStatistics;

  /// No description provided for @monthSales.
  ///
  /// In en, this message translates to:
  /// **'Сарын борлуулалт'**
  String get monthSales;

  /// No description provided for @tickets.
  ///
  /// In en, this message translates to:
  /// **'Тасалбар / Тикет'**
  String get tickets;

  /// No description provided for @classesSupport.
  ///
  /// In en, this message translates to:
  /// **'Курсийн дэмжлэг'**
  String get classesSupport;

  /// No description provided for @myClassesSupport.
  ///
  /// In en, this message translates to:
  /// **'Миний курсийн дэмжлэг'**
  String get myClassesSupport;

  /// No description provided for @replied.
  ///
  /// In en, this message translates to:
  /// **'Хариулсан'**
  String get replied;

  /// No description provided for @newSupportMessage.
  ///
  /// In en, this message translates to:
  /// **'Шинэ дэмжлэгийн мессеж'**
  String get newSupportMessage;

  /// No description provided for @selectDepartment.
  ///
  /// In en, this message translates to:
  /// **'Хэлтэс сонгох'**
  String get selectDepartment;

  /// No description provided for @replyToSupport.
  ///
  /// In en, this message translates to:
  /// **'Дэмжлэгт хариу бичих'**
  String get replyToSupport;

  /// No description provided for @replyToConversation.
  ///
  /// In en, this message translates to:
  /// **'Ярилцлагад хариу бичих'**
  String get replyToConversation;

  /// No description provided for @support_messages.
  ///
  /// In en, this message translates to:
  /// **'Дэмжлэгийн мессежүүд'**
  String get support_messages;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Хаагдсан'**
  String get closed;

  /// No description provided for @noTickets.
  ///
  /// In en, this message translates to:
  /// **'Тасалбар алга'**
  String get noTickets;

  /// No description provided for @noTicketsDesc.
  ///
  /// In en, this message translates to:
  /// **'Асуудал гарсан уу? Шинэ тусламжийн хүсэлт үүсгээрэй.'**
  String get noTicketsDesc;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Мессеж'**
  String get message;

  /// No description provided for @removeFromFavorites.
  ///
  /// In en, this message translates to:
  /// **'Таалагдсанаас хасах'**
  String get removeFromFavorites;

  /// No description provided for @thisIsACourseSupportMessage.
  ///
  /// In en, this message translates to:
  /// **'Энэ нь курсийн дэмжлэгийн мессеж юм.'**
  String get thisIsACourseSupportMessage;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Одоогийн нууц үг'**
  String get currentPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'Шинэ нууц үг'**
  String get newPassword;

  /// No description provided for @passwordAndRetypePassNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Шинэ нууц үг хоорондоо таарахгүй байна.'**
  String get passwordAndRetypePassNotMatch;

  /// No description provided for @nextBadges.
  ///
  /// In en, this message translates to:
  /// **'Дараагийн медаль'**
  String get nextBadges;

  /// No description provided for @remainedPoints.
  ///
  /// In en, this message translates to:
  /// **'Үлдсэн\nоноо'**
  String get remainedPoints;

  /// No description provided for @totalPoints.
  ///
  /// In en, this message translates to:
  /// **'Нийт\nоноо'**
  String get totalPoints;

  /// No description provided for @spentPoints.
  ///
  /// In en, this message translates to:
  /// **'Зарцуулсан\nоноо'**
  String get spentPoints;

  /// No description provided for @pointsHistory.
  ///
  /// In en, this message translates to:
  /// **'Онооны түүх'**
  String get pointsHistory;

  /// No description provided for @loginDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ хэсгийн мэдээллийг харахын тулд нэвтэрнэ үү.'**
  String get loginDesc;

  /// No description provided for @freeCourses.
  ///
  /// In en, this message translates to:
  /// **'Үнэгүй курсууд'**
  String get freeCourses;

  /// No description provided for @bySpendingPoints.
  ///
  /// In en, this message translates to:
  /// **'Оноо зарцуулан'**
  String get bySpendingPoints;

  /// No description provided for @saaSPackages.
  ///
  /// In en, this message translates to:
  /// **'SaaS багц'**
  String get saaSPackages;

  /// No description provided for @activationDate.
  ///
  /// In en, this message translates to:
  /// **'Идэвхжсэн\nогноо'**
  String get activationDate;

  /// No description provided for @accountStatistics.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэлийн статистик'**
  String get accountStatistics;

  /// No description provided for @newCourses.
  ///
  /// In en, this message translates to:
  /// **'Шинэ\nкурс'**
  String get newCourses;

  /// No description provided for @liveClassCapacity.
  ///
  /// In en, this message translates to:
  /// **'Шууд хичээлийн\nбагтаамж'**
  String get liveClassCapacity;

  /// No description provided for @meetingTimeSlots.
  ///
  /// In en, this message translates to:
  /// **'Уулзалтын\nцагийн слот'**
  String get meetingTimeSlots;

  /// No description provided for @newStudents.
  ///
  /// In en, this message translates to:
  /// **'Шинэ\nсуралцагч'**
  String get newStudents;

  /// No description provided for @newInstructors.
  ///
  /// In en, this message translates to:
  /// **'Шинэ\nбагш'**
  String get newInstructors;

  /// No description provided for @getCashback.
  ///
  /// In en, this message translates to:
  /// **'Кэшбэк авах'**
  String get getCashback;

  /// No description provided for @finalizeYourOrderAndGet.
  ///
  /// In en, this message translates to:
  /// **'Захиалгаа баталгаажуулаад'**
  String get finalizeYourOrderAndGet;

  /// No description provided for @cashback.
  ///
  /// In en, this message translates to:
  /// **'кэшбэк аваарай!'**
  String get cashback;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Алгасах'**
  String get skip;

  /// No description provided for @purchaseThisCourseAndGet.
  ///
  /// In en, this message translates to:
  /// **'Энэ курсыг худалдаж аваад '**
  String get purchaseThisCourseAndGet;

  /// No description provided for @purchaseThisProductAndGet.
  ///
  /// In en, this message translates to:
  /// **'Энэ бүтээгдэхүүнийг аваад '**
  String get purchaseThisProductAndGet;

  /// No description provided for @instrcutor.
  ///
  /// In en, this message translates to:
  /// **'Багш'**
  String get instrcutor;

  /// No description provided for @pleaseReview.
  ///
  /// In en, this message translates to:
  /// **'Хянаж үзнэ үү'**
  String get pleaseReview;

  /// No description provided for @reserveAMeetingAndGet.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт захиалаад '**
  String get reserveAMeetingAndGet;

  /// No description provided for @createALiveSession.
  ///
  /// In en, this message translates to:
  /// **'Шууд сесс үүсгэх'**
  String get createALiveSession;

  /// No description provided for @inappSession.
  ///
  /// In en, this message translates to:
  /// **'Апп доторх сесс'**
  String get inappSession;

  /// No description provided for @customSession.
  ///
  /// In en, this message translates to:
  /// **'Гаднын (custom) сесс'**
  String get customSession;

  /// No description provided for @newInappLiveSession.
  ///
  /// In en, this message translates to:
  /// **'Шинэ апп доторх шууд сесс'**
  String get newInappLiveSession;

  /// No description provided for @inappLiveSession.
  ///
  /// In en, this message translates to:
  /// **'Апп доторх шууд сесс'**
  String get inappLiveSession;

  /// No description provided for @inappLiveSessionQuestion.
  ///
  /// In en, this message translates to:
  /// **'Энэ уулзалтад апп дотор шууд сесс үүсгэх үү?'**
  String get inappLiveSessionQuestion;

  /// No description provided for @theMeetingDateIs.
  ///
  /// In en, this message translates to:
  /// **'Уулзалт болох огноо: '**
  String get theMeetingDateIs;

  /// No description provided for @liveSessionCreated.
  ///
  /// In en, this message translates to:
  /// **'Шууд сесс үүсгэлээ'**
  String get liveSessionCreated;

  /// No description provided for @youCanJoinItNow.
  ///
  /// In en, this message translates to:
  /// **'Та одоо нэгдэж болно.'**
  String get youCanJoinItNow;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Үүсгэх'**
  String get create;

  /// No description provided for @latestBundles.
  ///
  /// In en, this message translates to:
  /// **'Шинэ багцууд'**
  String get latestBundles;

  /// No description provided for @chapters.
  ///
  /// In en, this message translates to:
  /// **'Бүлэг'**
  String get chapters;

  /// No description provided for @newMessage.
  ///
  /// In en, this message translates to:
  /// **'Шинэ мессеж'**
  String get newMessage;

  /// No description provided for @subject.
  ///
  /// In en, this message translates to:
  /// **'Гарчиг'**
  String get subject;

  /// No description provided for @messageBody.
  ///
  /// In en, this message translates to:
  /// **'Мессежийн агуулга'**
  String get messageBody;

  /// No description provided for @privateContent.
  ///
  /// In en, this message translates to:
  /// **'Хувийн контент'**
  String get privateContent;

  /// No description provided for @privateContentDesc.
  ///
  /// In en, this message translates to:
  /// **'Энэ контентод хандахын тулд нэвтэрнэ үү.'**
  String get privateContentDesc;

  /// No description provided for @pendingVerification.
  ///
  /// In en, this message translates to:
  /// **'Шалгагдаж байна'**
  String get pendingVerification;

  /// No description provided for @pendingVerificationDesc.
  ///
  /// In en, this message translates to:
  /// **'Таны бүртгэлийг админ шалгаж байна. Зөвшөөрөгдсөний дараа бүрэн хандах боломжтой.'**
  String get pendingVerificationDesc;

  /// No description provided for @private.
  ///
  /// In en, this message translates to:
  /// **'Хувийн'**
  String get private;

  /// No description provided for @noCourse.
  ///
  /// In en, this message translates to:
  /// **'Курс алга'**
  String get noCourse;

  /// No description provided for @searchACurrency.
  ///
  /// In en, this message translates to:
  /// **'Валют хайх'**
  String get searchACurrency;

  /// No description provided for @selectCountry.
  ///
  /// In en, this message translates to:
  /// **'Улс сонгох'**
  String get selectCountry;

  /// No description provided for @selectCountryDesc.
  ///
  /// In en, this message translates to:
  /// **'Улс эсвэл кодоор хайна уу.'**
  String get selectCountryDesc;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Гарах'**
  String get exit;

  /// No description provided for @exitDesc.
  ///
  /// In en, this message translates to:
  /// **'Апп-ыг хаахдаа итгэлтэй байна уу?'**
  String get exitDesc;

  /// No description provided for @loginHistory.
  ///
  /// In en, this message translates to:
  /// **'Нэвтрэлтийн түүх'**
  String get loginHistory;

  /// No description provided for @loginHistoryDesc.
  ///
  /// In en, this message translates to:
  /// **'Таны бүртгэлд хэдийд, ямар төхөөрөмжөөс нэвтэрснийг эндээс харна.'**
  String get loginHistoryDesc;

  /// No description provided for @os.
  ///
  /// In en, this message translates to:
  /// **'ҮС'**
  String get os;

  /// No description provided for @browser.
  ///
  /// In en, this message translates to:
  /// **'Хөтөч'**
  String get browser;

  /// No description provided for @device.
  ///
  /// In en, this message translates to:
  /// **'Төхөөрөмж'**
  String get device;

  /// No description provided for @ip.
  ///
  /// In en, this message translates to:
  /// **'IP'**
  String get ip;

  /// No description provided for @addANote.
  ///
  /// In en, this message translates to:
  /// **'Тэмдэглэл нэмэх'**
  String get addANote;

  /// No description provided for @courseNote.
  ///
  /// In en, this message translates to:
  /// **'Курсийн тэмдэглэл'**
  String get courseNote;

  /// No description provided for @saveNote.
  ///
  /// In en, this message translates to:
  /// **'Тэмдэглэл хадгалах'**
  String get saveNote;

  /// No description provided for @viewNote.
  ///
  /// In en, this message translates to:
  /// **'Тэмдэглэл харах'**
  String get viewNote;

  /// No description provided for @attachment.
  ///
  /// In en, this message translates to:
  /// **'Хавсралт'**
  String get attachment;

  /// No description provided for @editNote.
  ///
  /// In en, this message translates to:
  /// **'Тэмдэглэл засах'**
  String get editNote;

  /// No description provided for @networkProblem.
  ///
  /// In en, this message translates to:
  /// **'Сүлжээний алдаа'**
  String get networkProblem;

  /// No description provided for @networkProblemDesc.
  ///
  /// In en, this message translates to:
  /// **'Интернэт холболтоо шалгаад дахин оролдоно уу.'**
  String get networkProblemDesc;

  /// No description provided for @myCourses.
  ///
  /// In en, this message translates to:
  /// **'Миний курсууд'**
  String get myCourses;

  /// No description provided for @studentPassedTheQuiz.
  ///
  /// In en, this message translates to:
  /// **'Оюутан шалгалтыг давсан'**
  String get studentPassedTheQuiz;

  /// No description provided for @enterACouponCode.
  ///
  /// In en, this message translates to:
  /// **'Купоны код оруулах'**
  String get enterACouponCode;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Харанхуй горим'**
  String get darkMode;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'Админ'**
  String get admin;

  /// No description provided for @teacher.
  ///
  /// In en, this message translates to:
  /// **'Багш'**
  String get teacher;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэл устгах'**
  String get deleteAccount;

  /// No description provided for @deleteAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Бүртгэлээ устгахдаа итгэлтэй байна уу?'**
  String get deleteAccountTitle;

  /// No description provided for @deleteAccountDesc.
  ///
  /// In en, this message translates to:
  /// **'Админ баталгаажуулсны дараа таны бүртгэл платформоос бүр мөсөн устгагдана. Энэ үйлдлийг буцаах боломжгүй.'**
  String get deleteAccountDesc;

  /// No description provided for @serverExceptionError.
  ///
  /// In en, this message translates to:
  /// **'Серверээс мэдээлэл авах үед алдаа гарлаа.'**
  String get serverExceptionError;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

import 'package:get/get.dart';

import '../modules/active_tickets/bindings/active_tickets_binding.dart';
import '../modules/active_tickets/views/active_tickets_view.dart';
import '../modules/affiliate_dashboard/bindings/affiliate_dashboard_binding.dart';
import '../modules/affiliate_dashboard/views/affiliate_dashboard_view.dart';
import '../modules/auth/OTP_Verify/bindings/o_t_p_verify_binding.dart';
import '../modules/auth/OTP_Verify/views/o_t_p_verify_view.dart';
import '../modules/auth/auth_select/bindings/auth_select_binding.dart';
import '../modules/auth/auth_select/views/auth_select_view.dart';
import '../modules/auth/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/auth/forgot_password/views/forgot_password_view.dart';
import '../modules/auth/reset_pass/bindings/reset_pass_binding.dart';
import '../modules/auth/reset_pass/views/reset_pass_view.dart';
import '../modules/auth/reset_success/bindings/reset_success_binding.dart';
import '../modules/auth/reset_success/views/reset_success_view.dart';
import '../modules/auth/sign_in/bindings/sign_in_binding.dart';
import '../modules/auth/sign_in/views/sign_in_view.dart';
import '../modules/auth/sign_up/bindings/sign_up_binding.dart';
import '../modules/auth/sign_up/views/sign_up_view.dart';
import '../modules/chatbot/bindings/chatbot_binding.dart';
import '../modules/chatbot/views/chatbot_view.dart';
import '../modules/courses/bindings/courses_binding.dart';
import '../modules/courses/views/courses_view.dart';
import '../modules/data_and_privacy/bindings/data_and_privacy_binding.dart';
import '../modules/data_and_privacy/views/data_and_privacy_view.dart';
import '../modules/events/bindings/events_binding.dart';
import '../modules/events/views/events_view.dart';
import '../modules/help_and_support/bindings/help_and_support_binding.dart';
import '../modules/help_and_support/views/help_and_support_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/language_and_currency/bindings/language_and_currency_binding.dart';
import '../modules/language_and_currency/views/language_and_currency_view.dart';
import '../modules/my_tickets_and_order/bindings/my_tickets_and_order_binding.dart';
import '../modules/my_tickets_and_order/views/my_tickets_and_order_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/order_history_invoice/bindings/order_history_invoice_binding.dart';
import '../modules/order_history_invoice/views/order_history_invoice_view.dart';
import '../modules/set_location_screen/bindings/set_location_screen_binding.dart';
import '../modules/set_location_screen/views/set_location_screen_view.dart';
import '../modules/shop/bindings/shop_binding.dart';
import '../modules/shop/views/shop_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/user_profile/bindings/user_profile_binding.dart';
import '../modules/user_profile/views/user_profile_view.dart';
import '../modules/verification_success/bindings/verification_success_binding.dart';
import '../modules/verification_success/views/verification_success_view.dart';
import '../modules/wallet/bindings/wallet_binding.dart';
import '../modules/wallet/views/wallet_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.EVENTS,
      page: () => const EventsView(),
      binding: EventsBinding(),
    ),
    GetPage(
      name: _Paths.COURSES,
      page: () => const CoursesView(),
      binding: CoursesBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => const ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => const UserProfileView(),
      binding: UserProfileBinding(),
    ),
    GetPage(
      name: _Paths.WALLET,
      page: () => const WalletView(),
      binding: WalletBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_HISTORY_INVOICE,
      page: () => const OrderHistoryInvoiceView(),
      binding: OrderHistoryInvoiceBinding(),
    ),
    GetPage(
      name: _Paths.HELP_AND_SUPPORT,
      page: () => const HelpAndSupportView(),
      binding: HelpAndSupportBinding(),
    ),
    GetPage(
      name: _Paths.MY_TICKETS_AND_ORDER,
      page: () => const MyTicketsAndOrderView(),
      binding: MyTicketsAndOrderBinding(),
    ),
    GetPage(
      name: _Paths.LANGUAGE_AND_CURRENCY,
      page: () => const LanguageAndCurrencyView(),
      binding: LanguageAndCurrencyBinding(),
    ),
    GetPage(
      name: _Paths.AFFILIATE_DASHBOARD,
      page: () => const AffiliateDashboardView(),
      binding: AffiliateDashboardBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => const NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.DATA_AND_PRIVACY,
      page: () => const DataAndPrivacyView(),
      binding: DataAndPrivacyBinding(),
    ),
    GetPage(
      name: _Paths.ACTIVE_TICKETS,
      page: () => const ActiveTicketsView(),
      binding: ActiveTicketsBinding(),
    ),
    GetPage(
      name: _Paths.CHATBOT,
      page: () => const ChatbotView(),
      binding: ChatbotBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SELECT,
      page: () => const AuthSelectView(),
      binding: AuthSelectBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SELECT,
      page: () => const AuthSelectView(),
      binding: AuthSelectBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFY,
      page: () => const OTPVerifyView(),
      binding: OTPVerifyBinding(),
    ),
    GetPage(
      name: _Paths.SET_LOCATION_SCREEN,
      page: () => const SetLocationScreenView(),
      binding: SetLocationScreenBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION_SUCCESS,
      page: () => const VerificationSuccessView(),
      binding: VerificationSuccessBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASS,
      page: () => const ResetPassView(),
      binding: ResetPassBinding(),
    ),
    GetPage(
      name: _Paths.RESET_SUCCESS,
      page: () => const ResetSuccessView(),
      binding: ResetSuccessBinding(),
    ),
  ];
}

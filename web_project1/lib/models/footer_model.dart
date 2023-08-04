import '../screens/contact_us_screen.dart';
import '../screens/portfolio_screen.dart';
import '../screens/services_screen.dart';

final Map<String, dynamic> footerModel = {
  'description': {
    'logoSrc': 'https://cdn-icons-png.flaticon.com/128/2168/2168336.png',
    'description':
        'We assist businesses in building irresistible brands. We assist businesses in building irresistible brands.',
    'socialSrc': {
      'facebook': 'assets/images/facebook.png',
      'instagram': 'assets/images/instagram.png',
      'linkedIn': 'assets/images/linkedin.png',
      'twitter': 'assets/images/twitter.png'
    },
    'rightsReserved': '© 2023 Andersen Inc. All Rights Reserved.'
  },
  'information': {
    'pageName': ['Services', 'Portfolio', 'Contact Us'],
    'pageRouteName': [
      ServicesScreen.routeName,
      PortfolioScreen.routeName,
      ContactUsScreen.routeName
    ]
  },
  'contactUs': {
    'address': 'Valentin, Street Road 24, New York, USA - 67452',
    'phoneNumber': '+2-333-222-000',
    'email': 'info@example.com'
  }
};

class FooterModel {
  final Description description;
  final Information information;
  final ContactUs contactUs;

  FooterModel(this.description, this.information, this.contactUs);
}

class Description {
  final String logoSrc;
  final String description;
  final SocialSrc socialSrc;
  final String rightsReserved;

  Description(
      this.logoSrc, this.description, this.socialSrc, this.rightsReserved);
}

class SocialSrc {
  final String facebook;
  final String instagram;
  final String linkedIn;
  final String twitter;

  SocialSrc(this.facebook, this.instagram, this.linkedIn, this.twitter);
}

class Information {
  final List<String> pageName;
  final List<String> pageRouteName;

  Information(this.pageName, this.pageRouteName);
}

class ContactUs {
  final String address;
  final String phoneNumber;
  final String email;

  ContactUs(this.address, this.phoneNumber, this.email);
}

FooterModel footerModelData = FooterModel(
    Description(
        footerModel['description']['logoSrc'],
        footerModel['description']['description'],
        SocialSrc(
            footerModel['description']['socialSrc']['facebook'],
            footerModel['description']['socialSrc']['instagram'],
            footerModel['description']['socialSrc']['linkedIn'],
            footerModel['description']['socialSrc']['twitter']),
        footerModel['description']['rightsReserved']),
    Information(footerModel['information']['pageName'],
        footerModel['information']['pageRouteName']),
    ContactUs(
        footerModel['contactUs']['address'],
        footerModel['contactUs']['phoneNumber'],
        footerModel['contactUs']['email']));

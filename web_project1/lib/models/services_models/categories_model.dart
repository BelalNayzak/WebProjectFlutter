final List<Map<String, Object>> categoriesModel = [
  {
    'categoryName': 'Design & Animation',
    'categoryServices': [
      'Graphic Design',
      'Motion Graphic',
      'Illustration',
      'Print Design',
      'Print Package',
    ],
  },
  {
    'categoryName': 'Marketing & Advertising',
    'categoryServices': [
      'Branding',
      'Print Design',
      'Print Package',
      'Advertising',
      'Copy Writing',
    ],
  },
  {
    'categoryName': 'It & Programming',
    'categoryServices': [
      'Web Design',
      'UX Design',
      'UI Design',
      'Augmented reality (AR)',
      'Virtual reality (VR)',
      'Mobile Apps',
      'Web Apps',
      'Desktop Apps',
      'Erp Sys',
      'Management Sys',
    ],
  },
  {
    'categoryName': 'Media',
    'categoryServices': [
      'Photography',
      'Videography',
      'Dubbing',
      'DTP',
    ],
  },
];

/*  'Design & Animation': [
    'Graphic Design',
    'Motion Graphic',
    'Illustration',
    'Print Design',
    'Print Package',
  ],
  'Marketing & Advertising': [
    'Branding',
    'Print Design',
    'Print Package',
    'Advertising',
    'Copy Writing',
  ],
  'It & Programming': [
    'Web Design',
    'UX Design',
    'UI Design',
    'Augmented reality (AR)',
    'Virtual reality (VR)',
    'Mobile Apps',
    'Web Apps',
    'Desktop Apps',
    'Erp Sys',
    'Management Sys',
  ],
  'Media': [
    'Photography',
    'Videography',
    'Dubbing',
    'DTP',
  ],
};*/
/*'categories': [
    'Design & Animation',
    'Marketing & Advertising',
    'It & Programming',
    'Media'
  ],
  'services': [
    [
      'Graphic Design',
      'Motion Graphic',
      'Illustration',
      'Print Design',
      'Print Package',
    ],
    [
      'Branding',
      'Print Design',
      'Print Package',
      'Advertising',
      'Copy Writing',
    ],
    [
      'Web Design',
      'UX Design',
      'UI Design',
      'Augmented reality (AR)',
      'Virtual reality (VR)',
      'Mobile Apps',
      'Web Apps',
      'Desktop Apps',
      'Erp Sys',
      'Management Sys',
    ],
    [
      'Photography',
      'Videography',
      'Dubbing',
      'DTP',
    ],
  ],*/
class CategoriesModel {
  final String categoryName;
  final List<String> categoryServices;

  CategoriesModel(this.categoryName, this.categoryServices);
}
void test (){
  for(int i = 0; i < categoriesModel.length; i++ ){
    print(categoriesModel[i]['categoryName']);
  }
}


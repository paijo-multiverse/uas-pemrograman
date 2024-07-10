class UnboardingContent{
  String title;
  String description;
  String image;

  UnboardingContent({
    required this.title,
    required this.description,
    required this.image
  });
}


List<UnboardingContent> contents = [
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2635029695.
  UnboardingContent(title: 'Select from our best menu', description: 'Pick your food from our menu', image: 'assets/images/screen1.jpg'),
  UnboardingContent(title: 'Best food in town', description: 'Fresh from the oven', image: 'assets/images/screen2.jpg'),
  UnboardingContent(title: 'Easy payment', description: 'Can use QRIS', image: 'assets/images/screen3.jpg')
];


import 'package:dog_social/app/app.locator.dart';
import 'package:dog_social/app/app.router.dart';
import 'package:dog_social/shared/dog_walker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigation = locator<NavigationService>();
  List<DogWalker> dogWalkers = [
    DogWalker(
      name: 'Alex Murray',
      description:
          'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
      amountOfWalks: '450',
      distance: 10,
      age: 30,
      experience: 11,
      amount: 5,
      rating: 4.4,
      image:
          'https://i.barkpost.com/wp-content/uploads/2014/09/dogwalker.jpg?q=70&fit=crop&crop=entropy&w=808&h=500',
    ),
    DogWalker(
      name: 'Mason York',
      description:
          'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
      amountOfWalks: '250',
      distance: 30,
      age: 45,
      experience: 21,
      amount: 2,
      rating: 5.0,
      image:
          'https://hips.hearstapps.com/wdy.h-cdn.co/assets/17/39/1506709524-cola-0247.jpg?crop=1.00xw:0.750xh;0,0.226xh&resize=480:*',
    ),
    DogWalker(
      name: 'Mark Greene',
      description:
          'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
      amountOfWalks: '1200',
      distance: 70,
      age: 22,
      experience: 3,
      amount: 12,
      rating: 4.4,
      image:
          'https://i.barkpost.com/wp-content/uploads/2014/09/dogwalker.jpg?q=70&fit=crop&crop=entropy&w=808&h=500',
    ),
    DogWalker(
      name: 'Triana Kain',
      description:
          'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
      amountOfWalks: '150',
      distance: 10,
      age: 30,
      experience: 11,
      amount: 5,
      rating: 4.4,
      image:
          'https://stylemagazines.com.au/wp-content/uploads/2016/07/opt_daniel-radcliffe-dog-walker-trainwreck-250x250.jpg',
    ),
    DogWalker(
      name: 'Alex Murray',
      description:
          'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
      amountOfWalks: '450',
      distance: 10,
      age: 27,
      experience: 11,
      amount: 5,
      rating: 4.4,
      image:
          'https://www.dogstrust.org.uk/our-centres/evesham/centre-updates/news/104731lrg_emma-and-rescue-dog-penny.jpg',
    ),
  ];

  void navigateToProfile(int index, {required List<DogWalker> dogWalkers}) {
    navigation.navigateTo(
      Routes.profile,
      arguments: ProfileArguments(index: index, dogWalkers: dogWalkers),
    );
  }
}

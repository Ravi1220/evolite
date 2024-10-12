import 'package:evolite/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Women 361',
        price: '236',
        imagePath: 'lib/image/women 361.png',
        description: 'The forward-thinking design of this latest signature shoe.',
    ),
    Shoe(
        name: 'Air Jordan',
        price: '220',
        imagePath: 'lib/image/Air Jordan.png',
        description: 'You have got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
    ),
     Shoe(
     name: 'Nike Dynamite',
       price: '240',
       imagePath: 'lib/image/Nike dynamite.png',
        description: 'The right pair makes the miles fly by.',
      ),
       Shoe(
        name: 'Nike Run',
         price: '190',
         imagePath: 'lib/image/Nike run.png',
         description: 'Every great run starts at your feet. Or rather, with the shoes you put on your feet. ',
       ),
      ];

       // list of items in users cart
         List<Shoe> userCart = [];

         // get list of shoes for sale
         List<Shoe> getShoeList() {
          return shoeShop;
         }

          //get cart
          List<Shoe> getUserCart(){
           return userCart;
         }

          //add items to cart
          void addItemToCart(Shoe shoe){
           userCart.add(shoe);
           notifyListeners();
        }
        // remove items from cart
         void removeItemFromCart(Shoe shoe){
           userCart.remove(shoe);
           notifyListeners();
         }

}
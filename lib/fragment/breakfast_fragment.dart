import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secret_recipe/detail_inet.dart';
import 'package:secret_recipe/model/meals.dart';
import 'package:secret_recipe/photo_hero_inet.dart';

class BreakfastScreen extends StatefulWidget{
  @override
  BreakfastFragment createState() => new BreakfastFragment();
}

class BreakfastFragment extends State<BreakfastScreen>{

  final List<String> data = [
    'Breakfast Potatoes','English Breakfast','Fruit and Cream Cheese Breakfast Pastries', 'Full English Breakfast',
    'Home-made Mandazi','Salmon Eggs Eggs Benedict','Smoked Haddock Kedgeree', 'Christmas Pudding Trifle',
    'Venetian Duck Ragu', 'Lasagne'
  ];

  final List<String> img = [
    'https://www.themealdb.com/images/media/meals/1550441882.jpg', 'https://www.themealdb.com/images/media/meals/utxryw1511721587.jpg', 'https://www.themealdb.com/images/media/meals/1543774956.jpg', 'https://www.themealdb.com/images/media/meals/sqrtwu1511721265.jpg',
    'https://www.themealdb.com/images/media/meals/thazgm1555350962.jpg', 'https://www.themealdb.com/images/media/meals/1550440197.jpg', 'https://www.themealdb.com/images/media/meals/1550441275.jpg', 'https://www.themealdb.com/images/media/meals/r33cud1576791081.jpg',
    'https://www.themealdb.com/images/media/meals/qvrwpt1511181864.jpg', 'https://www.themealdb.com/images/media/meals/wtsvxx1511296896.jpg'
  ];

  final List<String> desc = [
    'Before you do anything, freeze your bacon slices that way when you’re ready to prep, it’ll be so much easier to chop!\r\nWash the potatoes and cut medium dice into square pieces. To prevent any browning, place the already cut potatoes in a bowl filled with water.\r\nIn the meantime, heat 1-2 tablespoons of oil in a large skillet over medium-high heat. Tilt the skillet so the oil spreads evenly.\r\nOnce the oil is hot, drain the potatoes and add to the skillet. Season with salt, pepper, and Old Bay as needed.\r\nCook for 10 minutes, stirring the potatoes often, until brown. If needed, add a tablespoon more of oil.\r\nChop up the bacon and add to the potatoes. The bacon will start to render and the fat will begin to further cook the potatoes. Toss it up a bit! The bacon will take 5-6 minutes to crisp.\r\nOnce the bacon is cooked, reduce the heat to medium-low, add the minced garlic and toss. Season once more. Add dried or fresh parsley. Control heat as needed.\r\nLet the garlic cook until fragrant, about one minute.\r\nJust before serving, drizzle over the maple syrup and toss. Let that cook another minute, giving the potatoes a caramelized effect.\r\nServe in a warm bowl with a sunny side up egg!',
    'Heat the flat grill plate over a low heat, on top of 2 rings/flames if it fits, and brush sparingly with light olive oil.\r\nCook the sausages first. Add the sausages to the hot grill plate/the coolest part if there is one and allow to cook slowly for about 15-20 minutes, turning occasionally, until golden. After the first 10 minutes, increase the heat to medium before beginning to cook the other ingredients. If you are struggling for space, completely cook the sausages and keep hot on a plate in the oven.\r\nSnip a few small cuts into the fatty edge of the bacon. Place the bacon straight on to the grill plate and fry for 2-4 minutes each side or until your preferred crispiness is reached. Like the sausages, the cooked bacon can be kept hot on a plate in the oven.\r\nFor the mushrooms, brush away any dirt using a pastry brush and trim the stalk level with the mushroom top. Season with salt and pepper and drizzle over a little olive oil. Place stalk-side up on the grill plate and cook for 1-2 minutes before turning and cooking for a further 3-4 minutes. Avoid moving the mushrooms too much while cooking, as this releases the natural juices, making them soggy.\r\nFor the tomatoes, cut the tomatoes across the centre/or in half lengthways if using plum tomatoes , and with a small, sharp knife remove the green ’eye’. Season with salt and pepper and drizzle with a little olive oil. Place cut-side down on the grill plate and cook without moving for 2 minutes. Gently turn over and season again. Cook for a further 2-3 minutes until tender but still holding their shape.\r\nFor the black pudding, cut the black pudding into 3-4 slices and remove the skin. Place on the grill plate and cook for 1½-2 minutes each side until slightly crispy.\r\nFor ’proper’ fried bread it’s best to cook it in a separate pan. Ideally, use bread that is a couple of days old. Heat a frying pan to a medium heat and cover the base with oil. Add the bread and cook for 2-3 minutes each side until crispy and golden. If the pan becomes too dry, add a little more oil. For a richer flavour, add a knob of butter after you turn the slice.\r\nFor the fried eggs, break the egg straight into the pan with the fried bread and leave for 30 seconds. Add a good knob of butter and lightly splash/baste the egg with the butter when melted. Cook to your preferred stage, season and gently remove with a fish slice.\r\nOnce all the ingredients are cooked, serve on warm plates and enjoy straight away with a good squeeze of tomato ketchup or brown sauce.',
    'Preheat oven to 400ºF (200ºC), and prepare two cookie sheets with parchment paper. In a bowl, mix cream cheese, sugar, and vanilla until fully combined. Lightly flour the surface and roll out puff pastry on top to flatten. Cut each sheet of puff pastry into 9 equal squares. On the top right and bottom left of the pastry, cut an L shape approximately ½ inch (1 cm) from the edge.\r\nNOTE: This L shape should reach all the way down and across the square, however both L shapes should not meet at the ends. Your pastry should look like a picture frame with two corners still intact.\r\nTake the upper right corner and fold down towards the inner bottom corner. You will now have a diamond shape.\r\nPlace 1 to 2 teaspoons of the cream cheese filling in the middle, then place berries on top.\r\nRepeat with the remaining pastry squares and place them onto the parchment covered baking sheet.\r\nBake for 15-20 minutes or until pastry is golden brown and puffed.\r\nEnjoy!\r\n',
    'Heat the flat grill plate over a low heat, on top of 2 rings/flames if it fits, and brush sparingly with light olive oil.\r\nCook the sausages first. Add the sausages to the hot grill plate/the coolest part if there is one and allow to cook slowly for about 15-20 minutes, turning occasionally, until golden. After the first 10 minutes, increase the heat to medium before beginning to cook the other ingredients. If you are struggling for space, completely cook the sausages and keep hot on a plate in the oven.\r\nSnip a few small cuts into the fatty edge of the bacon. Place the bacon straight on to the grill plate and fry for 2-4 minutes each side or until your preferred crispiness is reached. Like the sausages, the cooked bacon can be kept hot on a plate in the oven.\r\nFor the mushrooms, brush away any dirt using a pastry brush and trim the stalk level with the mushroom top. Season with salt and pepper and drizzle over a little olive oil. Place stalk-side up on the grill plate and cook for 1-2 minutes before turning and cooking for a further 3-4 minutes. Avoid moving the mushrooms too much while cooking, as this releases the natural juices, making them soggy.\r\nFor the tomatoes, cut the tomatoes across the centre/or in half lengthways if using plum tomatoes , and with a small, sharp knife remove the green ’eye’. Season with salt and pepper and drizzle with a little olive oil. Place cut-side down on the grill plate and cook without moving for 2 minutes. Gently turn over and season again. Cook for a further 2-3 minutes until tender but still holding their shape.\r\nFor the black pudding, cut the black pudding into 3-4 slices and remove the skin. Place on the grill plate and cook for 1½-2 minutes each side until slightly crispy.\r\nFor ’proper’ fried bread it’s best to cook it in a separate pan. Ideally, use bread that is a couple of days old. Heat a frying pan to a medium heat and cover the base with oil. Add the bread and cook for 2-3 minutes each side until crispy and golden. If the pan becomes too dry, add a little more oil. For a richer flavour, add a knob of butter after you turn the slice.\r\nFor the fried eggs, break the egg straight into the pan with the fried bread and leave for 30 seconds. Add a good knob of butter and lightly splash/baste the egg with the butter when melted. Cook to your preferred stage, season and gently remove with a fish slice.\r\nOnce all the ingredients are cooked, serve on warm plates and enjoy straight away with a good squeeze of tomato ketchup or brown sauce.',
    'This is one recipe a lot of people have requested and I have tried to make it as simple as possible and I hope it will work for you. Make sure you use the right flour which is basically one with raising agents. Adjust the amount of sugar to your taste and try using different flavours to have variety whenever you have them.\r\nYou can use Coconut milk instead of regular milk, you can also add desiccated coconut to the dry flour or other spices like powdered cloves or cinnamon.\r\nFor “healthy looking” mandazis do not roll the dough too thin before frying and use the procedure I have indicated above.\r\n\r\n1. Mix the flour,cinnamon and sugar in a suitable bowl.\r\n2. In a separate bowl whisk the egg into the milk\r\n3. Make a well at the centre of the flour and add the milk and egg mixture and slowly mix to form a dough.\r\n4. Knead the dough for 3-4 minutes or until it stops sticking to the sides of the bowl and you have a smooth surface.\r\n5. Cover the dough with a damp cloth  and allow to rest for 15 minutes.\r\n6. Roll the dough on a lightly floured surface into a 1cm thick piece.\r\n7. Using a sharp small knife, cut the dough into the desired size setting aside ready for deep frying.\r\n8. Heat your oil in a suitable pot and gently dip the mandazi pieces to cook until light brown on the first side then turn to cook on the second side.\r\n9. Serve them warm or cold',
    'First make the Hollandaise sauce. Put the lemon juice and vinegar in a small bowl, add the egg yolks and whisk with a balloon whisk until light and frothy. Place the bowl over a pan of simmering water and whisk until mixture thickens. Gradually add the butter, whisking constantly until thick – if it looks like it might be splitting, then whisk off the heat for a few mins. Season and keep warm.\r\n\r\nTo poach the eggs, bring a large pan of water to the boil and add the vinegar. Lower the heat so that the water is simmering gently. Stir the water so you have a slight whirlpool, then slide in the eggs one by one. Cook each for about 4 mins, then remove with a slotted spoon.\r\n\r\nLightly toast and butter the muffins, then put a couple of slices of salmon on each half. Top each with an egg, spoon over some Hollandaise and garnish with chopped chives.',
    'For the rice, heat the oil in a large, lidded pan, add the onion, then gently fry for 5 mins until softened but not coloured. Add the spices, season with salt, then continue to fry until the mix start to go brown and fragrant; about 3 mins.\r\nAdd the rice and stir in well. Add 600ml water, stir, then bring to the boil. Reduce to a simmer, then cover for 10 mins. Take off the heat and leave to stand, covered, for 10-15 mins more. The rice will be perfectly cooked if you do not lift the lid before the end of the cooking.\r\nMeanwhile, put the haddock and bay leaves in a frying pan, cover with the milk, then poach for 10 mins until the flesh flakes. Remove from the milk, peel away the skin, then flake the flesh into thumbsize pieces. Place the eggs in a pan, cover with water, bring to the boil, then reduce to a simmer. Leave for 4½-5 mins, plunge into cold water, then peel and cut the eggs into quarters. Gently mix the fish, eggs, parsley, coriander and rice together in the pan. Serve hot, sprinkled with a few extra herbs.',
    'Peel the oranges using a sharp knife, ensuring all the pith is removed. Slice as thinly as possible and arrange over a dinner plate. Sprinkle with the demerara sugar followed by the Grand Marnier and set aside. Crumble the Christmas pudding into large pieces and scatter over the bottom of a trifle bowl. Lift the oranges onto the pudding in a layer and pour over any juices. Beat the mascarpone until smooth, then stir in the custard. Spoon the mixture over the top of the oranges. Lightly whip the cream and spoon over the custard. Sprinkle with the flaked almonds and grated chocolate. You can make this a day in advance if you like, chill until ready to serve.',
    'Heat the oil in a large pan. Add the duck legs and brown on all sides for about 10 mins. Remove to a plate and set aside. Add the onions to the pan and cook for 5 mins until softened. Add the garlic and cook for a further 1 min, then stir in the cinnamon and flour and cook for a further min. Return the duck to the pan, add the wine, tomatoes, stock, herbs, sugar and seasoning. Bring to a simmer, then lower the heat, cover with a lid and cook for 2 hrs, stirring every now and then. Carefully lift the duck legs out of the sauce and place on a plate – they will be very tender so try not to lose any of the meat. Pull off and discard the fat, then shred the meat with 2 forks and discard the bones. Add the meat back to the sauce with the milk and simmer, uncovered, for a further 10-15 mins while you cook the pasta. Cook the pasta following pack instructions, then drain, reserving a cup of the pasta water, and add the pasta to the ragu. Stir to coat all the pasta in the sauce and cook for 1 min more, adding a splash of cooking liquid if it looks dry. Serve with grated Parmesan, if you like.',
    'Heat the oil in a large saucepan. Use kitchen scissors to snip the bacon into small pieces, or use a sharp knife to chop it on a chopping board. Add the bacon to the pan and cook for just a few mins until starting to turn golden. Add the onion, celery and carrot, and cook over a medium heat for 5 mins, stirring occasionally, until softened. Add the garlic and cook for 1 min, then tip in the mince and cook, stirring and breaking it up with a wooden spoon, for about 6 mins until browned all over. Stir in the tomato purée and cook for 1 min, mixing in well with the beef and vegetables. Tip in the chopped tomatoes. Fill each can half full with water to rinse out any tomatoes left in the can, and add to the pan. Add the honey and season to taste. Simmer for 20 mins. Heat oven to 200C/180C fan/gas 6. To assemble the lasagne, ladle a little of the ragu sauce into the bottom of the roasting tin or casserole dish, spreading the sauce all over the base. Place 2 sheets of lasagne on top of the sauce overlapping to make it fit, then repeat with more sauce and another layer of pasta. Repeat with a further 2 layers of sauce and pasta, finishing with a layer of pasta. Put the crème fraîche in a bowl and mix with 2 tbsp water to loosen it and make a smooth pourable sauce. Pour this over the top of the pasta, then top with the mozzarella. Sprinkle Parmesan over the top and bake for 25–30 mins until golden and bubbling. Serve scattered with basil, if you like.'
  ];

  List<Meal> meal = [];

  @override
  Widget build(BuildContext context) {

    for (var i = 0; i < data.length; i++){
      meal.add(Meal(data[i], img[i], desc[i]));
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: GridView.builder(
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                margin: EdgeInsets.all(7),
                child: GridTile(
                    child: PhotoHeroInet(
                      tag: meal[index].title,
                      photo: meal[index].image,
                      onTap: (){
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 800),
                                pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
                                    DetailScreenInet(
                                      item: meal[index].title,
                                      item2: meal[index].image,
                                      item3: meal[index].desc,
                                    )
                            )
                        );
                      },
                    ),
                  footer: Container(
                    color: Colors.black54,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      meal[index].title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}

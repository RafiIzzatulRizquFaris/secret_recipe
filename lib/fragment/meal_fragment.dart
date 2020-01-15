import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secret_recipe/detail.dart';
import 'package:secret_recipe/model/meals.dart';
import 'package:secret_recipe/photo_hero.dart';

class MealScreen extends StatefulWidget{
  @override
  MealFragment createState() => new MealFragment();
}

class MealFragment extends State<MealScreen>{

  final List<String> data = [
    'Kentucky Fried Chicken','Honey Teriyaki Salmon','Beef stroganoff', 'Pork Cassoulet',
    'Chocolate Avocado Mousse','Lasagna Sandwiches','Spaghetti alla Carbonara', 'Christmas Pudding Trifle',
    'Venetian Duck Ragu', 'Lasagne'
  ];

  final List<String> img = [
    'assets/images/chicken.jpg', 'assets/images/salmon.jpg', 'assets/images/beef.jpg', 'assets/images/pork.jpg',
    'assets/images/avocado.jpg', 'assets/images/lasagnasandwich.jpg', 'assets/images/spaghetti.jpg', 'assets/images/pudding.jpg',
    'assets/images/venetian.jpg', 'assets/images/lasagne.jpg'
  ];

  final List<String> desc = [
    'Preheat fryer to 350°F. Thoroughly mix together all the spice mix ingredients. Combine spice mix with flour, brown sugar and salt.Dip chicken pieces in egg white to lightly coat them, then transfer to flour mixture. Turn a few times and make sure the flour mix is really stuck to the chicken. Repeat with all the chicken pieces. Let chicken pieces rest for 5 minutes so crust has a chance to dry a bit. Fry chicken in batches. Breasts and wings should take 12-14 minutes, and legs and thighs will need a few more minutes. Chicken pieces are done when a meat thermometer inserted into the thickest part reads 165°F. Let chicken drain on a few paper towels when it comes out of the fryer. Serve hot.',
    'Mix all the ingredients in the Honey Teriyaki Glaze together. Whisk to blend well. Combine the salmon and the Glaze together. Heat up a skillet on medium-low heat. Add the oil, Pan-fry the salmon on both sides until it’s completely cooked inside and the glaze thickens. Garnish with sesame and serve immediately.',
    'Heat the olive oil in a non-stick frying pan then add the sliced onion and cook on a medium heat until completely softened, so around 15 mins, adding a little splash of water if they start to stick at all. Crush in the garlic and cook for a 2-3 mins further, then add the butter. Once the butter is foaming a little, add the mushrooms and cook for around 5 mins until completely softened. Season everything well, then tip onto a plate. Tip the flour into a bowl with a big pinch of salt and pepper, then toss the steak in the seasoned flour. Add the steak pieces to the pan, splashing in a little oil if the pan looks particularly dry, and fry for 3-4 mins, until well coloured. Tip the onions and mushrooms back into the pan. Whisk the crème fraîche, mustard and beef stock together, then pour into the pan. Cook over a medium heat for around 5 mins. Scatter with parsley, then serve with pappardelle or rice.',
    'Heat oven to 140C/120C fan/gas 1. Put a large ovenproof pan (with a tight-fitting lid) on a high heat. Add your fat and diced meat, cook for a few mins to seal the edges, giving it a quick stir to cook evenly. Reduce the heat to low, add the sliced onion, whole garlic cloves, carrot and fennel seeds, and cook gently to soften the veg for a few mins. Pour over the red wine vinegar, scraping any meaty bits off the bottom of the pan. Add the stock, tomato purée, and half the rosemary and parsley. Bring to the boil and simmer for 10 mins, then season, cover with a lid and put into the oven for 2 hrs, removing the lid for the final hour of cooking. Stir occasionally and add the beans with 30 mins to go. Remove the pan from the oven and heat the grill. Scatter the top with the remaining herbs and breadcrumbs, drizzle a little oil over the top, and return to the oven for 5-10 mins, until the breadcrumbs are golden. Serve with crusty bread and green veg.',
    'Blend all the mousse ingredients together in your food processor until smooth. Add the cacao powder first and, as you blend, have all the ingredients to hand in order to adjust the ratios slightly as the size of avocados and bananas varies so much. The perfect ratio in order to avoid the dish tasting too much of either is to use equal amounts of both.2. Taste and add a few drops of stevia if you feel you need more sweetness. 3. Fill little cups or shot glasses with the mousse, sprinkle with the cacao powder or nibs and serve. Tip If you don’t have a frozen banana to hand you can just use a normal one and then chill the mousse before serving for a cooling dessert.',
    '1. In a small bowl, combine the first four ingredients; spread on four slices of bread. Layer with bacon, tomato and cheese; top with remaining bread. 2. In a large skillet or griddle, melt 2 tablespoons butter. Toast sandwiches until lightly browned on both sides and cheese is melted, adding butter if necessary. Nutrition Facts 1 sandwich: 445 calories, 24g fat (12g saturated fat), 66mg cholesterol, 1094mg sodium, 35g carbohydrate (3g sugars, 2g fiber), 21g protein.',
    'Per preparare gli spaghetti alla carbonara cominciate mettendo sul fuoco una pentola con l’acqua salata per cuocere la pasta. Nel frattempo eliminate la cotenna dal guanciale e tagliatelo prima a fette e poi a striscioline spesse circa 1cm . La cotenna avanzata potrà essere riutilizzata per insaporire altre preparazioni. Versate i pezzetti in una padella antiaderente e rosolate per circa 15 minuti a fiamma media, fate attenzione a non bruciarlo altrimenti rilascerà un aroma troppo forte. Nel frattempo tuffate gli spaghetti nell’acqua bollente e cuoceteli per il tempo indicato sulla confezione. Intanto versate i tuorli in una ciotola, aggiungete anche la maggior parte del pecorino previsto dalla ricetta la parte restante servirà per guarnire la pasta. Insaporite con il pepe nero, amalgamate tutto con una frusta a mano. Aggiungete un cucchiaio di acqua di cottura per diluire il composto e mescolate. Intanto il guanciale sarà giunto a cottura, spegnete il fuoco e tenetelo da parte. Scolate la pasta al dente direttamente nel tegame con il guanciale e saltatela brevemente per insaporirla. Togliete dal fuoco e versate il composto di uova e pecorino nel tegame, saltate la pasta per amalgamare e se dovesse risultare troppo asciutta potete aggiungere poca acqua di cottura. Servite subito gli spaghetti alla carbonara insaporendoli con il pecorino avanzato e il pepe nero macinato.',
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
              itemBuilder:(BuildContext context, int index){
                return GestureDetector(
                  child: Card(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    margin: EdgeInsets.all(7),
                    child: GridTile(
                      child: PhotoHero(
                        tag: meal[index].title,
                        photo: meal[index].image,
                        onTap: (){
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 800),
                                pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
                                    DetailScreen(
                                      item: meal[index].title,
                                      item2: meal[index].image,
                                      item3: meal[index].desc,
                                    ),
                              ));
//                          showSnackBar(context, meal[index]);
                        },
                      ),
//                      FlatButton(
//                        onPressed: (){
//                          Navigator.push(
//                              context,
//                              PageRouteBuilder(
//                                  transitionDuration: Duration(milliseconds: 700),
//                                  pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
//                                      DetailScreen(
//                                        item: meal[index].title,
//                                        item2: meal[index].image,
//                                        item3: meal[index].desc,
//                                      )
//                              )
//                              MaterialPageRoute(
//                                  builder: (context) => DetailScreen(
//                                    item: meal[index].title,
//                                    item2: meal[index].image,
//                                    item3: meal[index].desc,
//                                  )
//                              )
//                          );
//                        },
//                        child: Image.asset(meal[index].image),
//                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                        padding: EdgeInsets.all(0),
//                      ),
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
//        body: ListView.builder(
//          itemCount: data.length,
//          itemBuilder: (context, index){
//            return ListTile(
//              title: Text(data[index]),
//              onTap: (){
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                      builder: (context) => DetailScreen(item: data[index])
//                    )
//                );
//              },
//            );
//          },
//        )
        );
  }
}
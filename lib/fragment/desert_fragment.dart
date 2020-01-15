import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secret_recipe/detail_inet.dart';
import 'package:secret_recipe/model/meals.dart';
import 'package:secret_recipe/photo_hero_inet.dart';

class DesertScreen extends StatefulWidget{
  @override
  DesertFragment createState() => new DesertFragment();
}

class DesertFragment extends State<DesertScreen>{

  final List<String> data = [
    'Apple & Blackberry Crumble','Apple Frangipan Tart','Bakewell Tart', 'Banana Pancakes',
    'Battenberg Cake','BeaverTails','Blackberry Fool', 'Bread and Butter Pudding',
    'Budino Di Ricota', 'Canadian Butter Tarts'
  ];

  final List<String> img = [
    'https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg', 'https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg', 'https://www.themealdb.com/images/media/meals/wyrqqq1468233628.jpg', 'https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg',
    'https://www.themealdb.com/images/media/meals/ywwrsp1511720277.jpg', 'https://www.themealdb.com/images/media/meals/ryppsv1511815505.jpg', 'https://www.themealdb.com/images/media/meals/rpvptu1511641092.jpg', 'https://www.themealdb.com/images/media/meals/xqwwpy1483908697.jpg',
    'https://www.themealdb.com/images/media/meals/1549542877.jpg', 'https://www.themealdb.com/images/media/meals/wpputp1511812960.jpg'
  ];

  final List<String> desc = [
    'Heat oven to 190C/170C fan/gas 5. Tip the flour and sugar into a large bowl. Add the butter, then rub into the flour using your fingertips to make a light breadcrumb texture. Do not overwork it or the crumble will become heavy. Sprinkle the mixture evenly over a baking sheet and bake for 15 mins or until lightly coloured.\r\nMeanwhile, for the compote, peel, core and cut the apples into 2cm dice. Put the butter and sugar in a medium saucepan and melt together over a medium heat. Cook for 3 mins until the mixture turns to a light caramel. Stir in the apples and cook for 3 mins. Add the blackberries and cinnamon, and cook for 3 mins more. Cover, remove from the heat, then leave for 2-3 mins to continue cooking in the warmth of the pan.\r\nTo serve, spoon the warm fruit into an ovenproof gratin dish, top with the crumble mix, then reheat in the oven for 5-10 mins. Serve with vanilla ice cream.',
    'Preheat the oven to 200C/180C Fan/Gas 6.\r\nPut the biscuits in a large re-sealable freezer bag and bash with a rolling pin into fine crumbs. Melt the butter in a small pan, then add the biscuit crumbs and stir until coated with butter. Tip into the tart tin and, using the back of a spoon, press over the base and sides of the tin to give an even layer. Chill in the fridge while you make the filling.\r\nCream together the butter and sugar until light and fluffy. You can do this in a food processor if you have one. Process for 2-3 minutes. Mix in the eggs, then add the ground almonds and almond extract and blend until well combined.\r\nPeel the apples, and cut thin slices of apple. Do this at the last minute to prevent the apple going brown. Arrange the slices over the biscuit base. Spread the frangipane filling evenly on top. Level the surface and sprinkle with the flaked almonds.\r\nBake for 20-25 minutes until golden-brown and set.\r\nRemove from the oven and leave to cool for 15 minutes. Remove the sides of the tin. An easy way to do this is to stand the tin on a can of beans and push down gently on the edges of the tin.\r\nTransfer the tart, with the tin base attached, to a serving plate. Serve warm with cream, crème fraiche or ice cream.',
    'To make the pastry, measure the flour into a bowl and rub in the butter with your fingertips until the mixture resembles fine breadcrumbs. Add the water, mixing to form a soft dough.\r\nRoll out the dough on a lightly floured work surface and use to line a 20cm/8in flan tin. Leave in the fridge to chill for 30 minutes.\r\nPreheat the oven to 200C/400F/Gas 6 (180C fan).\r\nLine the pastry case with foil and fill with baking beans. Bake blind for about 15 minutes, then remove the beans and foil and cook for a further five minutes to dry out the base.\r\nFor the filing, spread the base of the flan generously with raspberry jam.\r\nMelt the butter in a pan, take off the heat and then stir in the sugar. Add ground almonds, egg and almond extract. Pour into the flan tin and sprinkle over the flaked almonds.\r\nBake for about 35 minutes. If the almonds seem to be browning too quickly, cover the tart loosely with foil to prevent them burning.',
    'In a bowl, mash the banana with a fork until it resembles a thick purée. Stir in the eggs, baking powder and vanilla.\r\nHeat a large non-stick frying pan or pancake pan over a medium heat and brush with half the oil. Using half the batter, spoon two pancakes into the pan, cook for 1-2 mins each side, then tip onto a plate. Repeat the process with the remaining oil and batter. Top the pancakes with the pecans and raspberries.',
    'Heat oven to 180C/160C fan/gas 4 and line the base and sides of a 20cm square tin with baking parchment (the easiest way is to cross 2 x 20cm-long strips over the base). To make the almond sponge, put the butter, sugar, flour, ground almonds, baking powder, eggs, vanilla and almond extract in a large bowl. Beat with an electric whisk until the mix comes together smoothly. Scrape into the tin, spreading to the corners, and bake for 25-30 mins – when you poke in a skewer, it should come out clean. Cool in the tin for 10 mins, then transfer to a wire rack to finish cooling while you make the second sponge.\r\nFor the pink sponge, line the tin as above. Mix all the ingredients together as above, but don’t add the almond extract. Fold in some pink food colouring. Then scrape it all into the tin and bake as before. Cool.\r\nTo assemble, heat the jam in a small pan until runny, then sieve. Barely trim two opposite edges from the almond sponge, then well trim a third edge. Roughly measure the height of the sponge, then cutting from the well-trimmed edge, use a ruler to help you cut 4 slices each the same width as the sponge height. Discard or nibble leftover sponge. Repeat with pink cake.\r\nTake 2 x almond slices and 2 x pink slices and trim so they are all the same length. Roll out one marzipan block on a surface lightly dusted with icing sugar to just over 20cm wide, then keep rolling lengthways until the marzipan is roughly 0.5cm thick. Brush with apricot jam, then lay a pink and an almond slice side by side at one end of the marzipan, brushing jam in between to stick sponges, and leaving 4cm clear marzipan at the end. Brush more jam on top of the sponges, then sandwich remaining 2 slices on top, alternating colours to give a checkerboard effect. Trim the marzipan to the length of the cakes.\r\nCarefully lift up the marzipan and smooth over the cake with your hands, but leave a small marzipan fold along the bottom edge before you stick it to the first side. Trim opposite side to match size of fold, then crimp edges using fingers and thumb (or, more simply, press with prongs of fork). If you like, mark the 10 slices using the prongs of a fork.\r\nAssemble second Battenberg and keep in an airtight box or well wrapped in cling film for up to 3 days. Can be frozen for up to a month.',
    'In the bowl of a stand mixer, add warm water, a big pinch of sugar and yeast. Allow to sit until frothy.\r\nInto the same bowl, add 1/2 cup sugar, warm milk, melted butter, eggs and salt, and whisk until combined.\r\nPlace a dough hook on the mixer, add the flour with the machine on, until a smooth but slightly sticky dough forms.\r\nPlace dough in a bowl, cover with plastic wrap, and allow to proof for 1 1/2 hours.\r\nCut dough into 12 pieces, and roll out into long oval-like shapes about 1/4 inch thick that resemble a beaver’s tail.\r\nIn a large, deep pot, heat oil to 350 degrees. Gently place beavertail dough into hot oil and cook for 30 to 45 seconds on each side until golden brown.\r\nDrain on paper towels, and garnish as desired. Toss in cinnamon sugar, in white sugar with a squeeze of lemon, or with a generous slathering of Nutella and a handful of toasted almonds. Enjoy!',
    'For the biscuits, preheat the oven to 200C/180C (fan)/Gas 6 and line two large baking trays with baking parchment. Scatter the nuts over a baking tray and roast in the oven for 6-8 minutes, or until golden-brown. Watch them carefully so that they don’t have a chance to burn. Remove from the oven, tip onto a board and leave to cool.\r\nPut the butter and sugar in a large bowl and beat with a wooden spoon until light and creamy. Roughly chop the cooled nuts and add to the creamed butter and sugar, along with the lemon zest, flour and baking powder. Stir well until the mixture comes together and forms a ball – you may need to use your hands.\r\nDivide the biscuit dough into 24 even pieces and roll into small balls. Place the balls the prepared baking trays, spaced well apart to allow for spreading.\r\nPress the biscuits to flatten to around 1cm/½in thick. Bake the biscuits, one tray at a time, for 12 minutes or until very pale golden-brown. Leave to cool on the trays. They will be very soft when you take them out of the oven, but will crisp as they cool.\r\nStore in an airtight tin and eat within five days.\r\nFor the fool, rinse the blackberries in a colander to wash away any dust or dirt. Put the blackberries in a non-stick saucepan and sprinkle over the caster sugar.\r\nStir in the lemon juice and heat gently for two minutes, or until the blackberries begin to soften and release their juices. Remove and reserve 12 blackberries for decoration and continue cooking the rest.\r\nSimmer the blackberries very gently for 15 minutes, stirring regularly until very soft and squidgy. Remove from the heat and press the berries and juice through a sieve over a bowl, using the bottom of a ladle to help you extract as much of the purée as possible. Leave the purée to cool and discard the seeds. You should end up with around 325ml/11fl oz of purée.\r\nPut the cream and yoghurt in a large bowl and whip with an electric whisk until soft peaks form when the whisk is removed from the bowl – the acidity of the fruit will thicken the cream further, so don’t take it too far.\r\nWhen the purée is completely cold, adjust the sweetness to taste by adding more sugar if needed. Pour it into the bowl with the whipped cream and yoghurt and stir just once or twice until very lightly combined.\r\nSpoon the blackberry fool into individual wide, glass dishes – or one large, single bowl. It should look quite marbled, so don’t over-stir it. Scatter a few tiny mint leaves on top and decorate with the reserved blackberries. Sprinkle with a little sugar if you like and serve with the hazelnut biscuits.',
    'Grease a 1 litre/2 pint pie dish with butter.\r\nCut the crusts off the bread. Spread each slice with on one side with butter, then cut into triangles.\r\nArrange a layer of bread, buttered-side up, in the bottom of the dish, then add a layer of sultanas. Sprinkle with a little cinnamon, then repeat the layers of bread and sultanas, sprinkling with cinnamon, until you have used up all of the bread. Finish with a layer of bread, then set aside.\r\nGently warm the milk and cream in a pan over a low heat to scalding point. Don’t let it boil.\r\nCrack the eggs into a bowl, add three quarters of the sugar and lightly whisk until pale.\r\nAdd the warm milk and cream mixture and stir well, then strain the custard into a bowl.\r\nPour the custard over the prepared bread layers and sprinkle with nutmeg and the remaining sugar and leave to stand for 30 minutes.\r\nPreheat the oven to 180C/355F/Gas 4.\r\nPlace the dish into the oven and bake for 30-40 minutes, or until the custard has set and the top is golden-brown.',
    'Mash the ricotta and beat well with the egg yolks, stir in the flour, sugar, cinnamon, grated lemon rind and the rum and mix well. You can do this in a food processor. Beat the egg whites until stiff, fold in and pour into a buttered and floured 25cm cake tin. Bake in the oven at 180ºC/160ºC fan/gas 4 for about 40 minutes, or until it is firm.\r\n\r\nServe hot or cold dusted with icing sugar.',
    'Preheat the oven to fan 170C/ conventional 190C/gas 5. Roll out the pastry on a lightly floured surface so it’s slightly thinner than straight from the pack. Then cut out 18-20 rounds with a 7.5cm fluted cutter, re-rolling the trimmings. Use the rounds to line two deep 12-hole tart tins (not muffin tins). If you only have a regular-sized, 12-hole tart tin you will be able to make a few more slightly shallower tarts.\r\nBeat the eggs in a large bowl and combine with the rest of the ingredients except the walnuts. Tip this mixture into a pan and stir continuously for 3-4 minutes until the butter melts, and the mixture bubbles and starts to thicken. It should be thick enough to coat the back of a wooden spoon. Don’t overcook, and be sure to stir all the time as the mixture can easily burn. Remove from the heat and stir in the nuts.\r\nSpoon the filling into the unbaked tart shells so it’s level with the pastry. Bake for 15-18 minutes until set and pale golden. Leave in the tin to cool for a few minutes before lifting out on to a wire rack. Serve warm or cold.'
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
import 'package:flutter/material.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _inventoryAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _myBagText(),
                _itemCard(
                    context: context,
                    itemName: 'Hoodie',
                    itemColor: 'Red',
                    itemSize: 'L',
                    itemPrice: '$_cardOneAmount\$',
                    itemImage: 'assets/H.jpg',
                    cardNumber: _cardOneItemAmount,
                    cardNumberForFunction: 1
                ),
                _itemCard(
                    context: context,
                    itemName: 'Blazer',
                    itemColor: 'Black',
                    itemSize: 'M',
                    itemPrice: '$_cardTwoAmount\$',
                    itemImage: 'assets/B.jpg',
                  cardNumber: _cardTwoItemAmount,
                    cardNumberForFunction: 2
                ),
                _itemCard(
                    context: context,
                    itemName: 'T-Shirt',
                    itemColor: 'White',
                    itemSize: 'S',
                    itemPrice: '$_cardThreeAmount\$',
                    itemImage: 'assets/T.jpg',
                    cardNumber: _cardThreeItemAmount,
                    cardNumberForFunction: 3
                ),
              ],
            ),
          ),
          Column(
            children: [
              _totalAmountIndicator(),
              _checkOutButton(context)
            ],
          )
        ],
      ),
    );
  }

  //----------------------------------------Variables----------------------------------------
  int _cardOneItemAmount = 1;
  int _cardTwoItemAmount = 1;
  int _cardThreeItemAmount = 1;

  final int _cardOneAmount = 69;
  final int _cardTwoAmount = 899;
  final int _cardThreeAmount = 19;

  //----------------------------------------Functions----------------------------------------
  void _add(int number){
    if(number == 1){
      setState(() {
        _cardOneItemAmount++;
      },);
    }else if(number==2){
      setState(() {
        _cardTwoItemAmount++;
      },);
    }else if(number==3){
      setState(() {
        _cardThreeItemAmount++;
      });
    }
  }

  void _sub(int number){
    if(number == 1){
      setState(() {
        _cardOneItemAmount--;
      },);
    }else if(number==2){
      setState(() {
        _cardTwoItemAmount--;
      },);
    }else if(number==3){
      setState(() {
        _cardThreeItemAmount--;
      },);
    }
  }

  //----------------------------------------Widgets----------------------------------------
  Padding _checkOutButton(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.sizeOf(context).width / 2.8),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  child: const Text('CHECK OUT')),
            );
  }

  Padding _totalAmountIndicator() {
    return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Total amount:',style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500),), Text('${(_cardOneItemAmount*_cardOneAmount)+(_cardTwoItemAmount*_cardTwoAmount)+(_cardThreeItemAmount*_cardThreeAmount)}\$', style: TextStyle(fontWeight: FontWeight.w600),)],
              ),
            );
  }

  Padding _myBagText() {
    return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'My Bag',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              );
  }

  AppBar _inventoryAppBar() {
    return AppBar(
      title: Text(
        'Inventory',
        style:
            TextStyle(fontWeight: FontWeight.w600,),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Icon(
            Icons.search_rounded,
          ),
        ),
      ],
    );
  }

  Padding _itemCard(
      {required BuildContext context,
      required String itemName,
      required String itemColor,
      required String itemSize,
      required String itemPrice,
      required String itemImage,
        required int cardNumber,
        required int cardNumberForFunction,
      }) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: Offset(2, 4)),
            ]),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 0,
                ),
                Image.asset(
                  itemImage,
                  height: 100,
                  width: 110,
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            itemName,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                'Color: ',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600]),
                              ),
                              Text(
                                itemColor,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                ' Size: ',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600]),
                              ),
                              Text(
                                itemSize,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: (){
                            _sub(cardNumberForFunction);
                          },
                          icon: Icon(
                            Icons.horizontal_rule,
                          ),
                        ),
                        Text(
                          cardNumber.toString(),
                        ),
                        IconButton(
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            _add(cardNumberForFunction);
                          },
                          icon: Icon(Icons.add),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(itemPrice),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

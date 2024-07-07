import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  static const double defaultPadding=14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
        'Track Order',
        style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
    ),
      ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Center(
              child: Text(
                'Order ID: 123-098',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
              Container(
                margin:const EdgeInsets.symmetric(horizontal: defaultPadding  +80
                    ,vertical: defaultPadding
                ),
             //   color: Colors.red,
                child: Column(
                  children: [
                    Image.asset('assets/cook.png',
                      height: 220,
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      'Delivery Status',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            Divider(
              thickness: 14,
              color: Color(0xFFF9FAFA),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:defaultPadding),
              child: Text(
                'Delivery Status',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
              const SizedBox(height: defaultPadding+5),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal:defaultPadding),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.367,
                  padding: EdgeInsets.symmetric(horizontal:HomeScreen.defaultPadding,vertical: HomeScreen.defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xFFEFEFEF),
                      width: 1.0,
                    ),
                  ),
                    child: Expanded(child: TimeLine(),),),
              ),
              const SizedBox(height: 20,),
              Divider(
                thickness: 14,
                color: Color(0xFFF9FAFA),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:defaultPadding,vertical:10),
                child: Text(
                  'Delivery Partner',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
const SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: HomeScreen.defaultPadding),
  child:   Container(
    padding: const EdgeInsets.symmetric(horizontal: HomeScreen.defaultPadding -10,vertical: HomeScreen.defaultPadding-6),
    decoration: BoxDecoration(

      border: Border.all(

          color: Color(0xFFEFEFEF),

      ),

      borderRadius: BorderRadius.circular(8),

    ),

    child: ListTile(

leading:CircleAvatar(

  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1385&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
),
    title:Text(

      'Joseph Gonzalez',

      style: TextStyle(

          fontSize: 18,

          fontWeight: FontWeight.w600,

          color: Colors.black,

      ),

    ),
trailing: Icon(Icons.chat,
  color: Color(0xFFEFEFEF),
),
  ),),
),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:defaultPadding,vertical:defaultPadding),
                child: Text(
                  'Order Summary',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding + 10),
                  decoration:  BoxDecoration(
                    border: Border.all(

                      color: Color(0xFFEFEFEF),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:defaultPadding,vertical: defaultPadding-5),
                      child: Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                        Text(
                          '1 x Egg Noodles fried dumplings',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '\$12.00',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color:Colors.pink,
                          ),
                        ),
                      ],),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              '2 x Zinger Burger with Chicken Piece\n& Fries',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Text(
                            '\$40.00',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:Colors.pink,
                            ),
                          ),
                        ],),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                      child: Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fast delivery',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '\$50.00',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:Colors.pink,
                            ),
                          ),
                        ],),
                    ),
                    Container(
                      width: double.infinity,
                      child: Divider(),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: defaultPadding ),
                      child: Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '\$52.00',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color:Colors.pink,
                            ),
                          ),
                        ],),
                    ),
                  ],),
                ),
              ),
          ],),
        ),
      ),
    );
  }
}

class TimeLine extends StatelessWidget {
  TimeLine({super.key});
  List CustomListTile=[
    {'title':'Done','des':'Description','icon':Icons.ac_unit},
    {'title':'Review','des':'Description','icon':Icons.reviews},
    {'title':'Progress','des':'Description','icon':Icons.update},
    {'title':'Free Delivery','des':'Description','icon':Icons.delivery_dining_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HomeScreen.defaultPadding,vertical: HomeScreen.defaultPadding) ,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: CustomListTile.length,
          itemBuilder: (context,index){
        return Container(
          child: Row(children: [
            Column(
              children: [
                Container(
                   height: 22,
                   width: 22,
                  // padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: index==0?Colors.green:Colors.grey,
                    ),

                  ),
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index==0?Colors.green:Colors.grey,
                      ),
                    ),
                  ),
                ),
                if (index != CustomListTile.length - 1)
                Container(height:40,
                  width: 1,
                  color:index==0?Colors.green:Colors.grey,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15.0,
                bottom: index == 0 ? 30.0 : index == 1 ? 35.0 : index == 2 ? 35 : 0.0,
              ),
              child: Text(
                CustomListTile[index]['title'],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: index == 0 ? Colors.green : Colors.grey,
                ),
              ),
            ),

          ],),

        );

      }),
    );
  }
}

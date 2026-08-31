import 'package:flutter/material.dart';
import 'package:market_application/widgets/account_item.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 100
        ,
        toolbarHeight: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 40),
          child: 
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://scontent.fcai20-4.fna.fbcdn.net/v/t39.30808-6/441958686_1686309218842160_2403059400374252418_n.jpg?stp=dst-jpg_tt6&cstp=mx640x640&ctp=s640x640&_nc_cat=102&_nc_map=urlgen_bucketless&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=FVR5RkN1PRwQ7kNvwHsL08O&_nc_oc=Adqk82jiZsKgwBNXysUAxST5fpTKzQBHyFUHhnsPDaTtREC2yDuUEOmMK3Vo7h-R8eE&_nc_zt=23&_nc_ht=scontent.fcai20-4.fna&_nc_gid=j1XTyirCGZXCmZjwwc3Asw&_nc_ss=7d2a8&oh=00_AQKmSFdENNq8h-P65OGFiVaRDXyj1I0CHznLgRCbGmx12Q&oe=6A9B90F5',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            )
        ) ,

        title: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mohamed Moataz", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(width: 160,child: Text("eltamawy2132005@gmail.com", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: Color(0xff7C7C7C)),)),
            ],
          ),
        ),
        actionsPadding: EdgeInsetsGeometry.only(right: 60, top: 20),
        actions: [
          Center(child: Icon(Icons.edit_outlined,color: Colors.green,))
        ],

        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(height: 40, indent: 20,endIndent: 20, color: Color(0xffE2E2E2),),
          SizedBox(
            width: double.infinity,
            height: 420,
            child: ListView.separated(
              itemCount: 8,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                final items = [
                  AccountItem(ico: Icons.all_inbox, txt: "Orders"),
                  AccountItem(ico: Icons.badge_outlined, txt: "My Details"),
                  AccountItem(ico: Icons.location_pin, txt: "Delivery Address"),
                  AccountItem(ico: Icons.payment_outlined, txt: "Payment Methods"),
                  AccountItem(ico: Icons.local_offer_outlined, txt: "Promo Code"),
                  AccountItem(ico: Icons.notifications_outlined, txt: "Notifications"),
                  AccountItem(ico: Icons.help_outline_outlined, txt: "Help"),
                  AccountItem(ico: Icons.info_outline, txt: "About"),
                ];
            
                return items[index];
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: 350,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xffF2F3F2),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Icon(
                    Icons.logout,
                    color: Colors.green,
                    size: 32,
                  ),
                ),

                Expanded(
                  child: Center(
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
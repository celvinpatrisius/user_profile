import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3, 
            fit: BoxFit.cover,
            image: NetworkImage('https://cdn.mpotimes.id/uploads/images/2021/10/image_750x_6171089fa0bdc.webp'),),
            Positioned(
              bottom: -60.0,
              child: CircleAvatar(
              radius: 80, 
              backgroundColor: Colors.white, 
              backgroundImage: NetworkImage('https://scontent-cgk1-2.xx.fbcdn.net/v/t1.6435-9/47242384_301011543848897_5696343549054812160_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=174925&_nc_eui2=AeFL-rczl8Bo1J9nF2F0YDCGwyC9EOY87iPDIL0Q5jzuI_vqajXm-ZCo9-lt4OpmqyYAe96HZ-SDmHBaDqyEoyhr&_nc_ohc=FYtzo8I8fr8AX_QriQC&_nc_ht=scontent-cgk1-2.xx&oh=00_AT_qIlfF4OxWti3tJfPXboi5u-E0ISGnnS3nvNgVGOOUIA&oe=627579C0'),))
          ],
        ),
        SizedBox(height: 50,),
        ListTile ( title: Center(child: Text('Patrisius J Celvin', style: TextStyle(fontFamily: 'MONESA', fontSize: 20, fontWeight: FontWeight.w600),)), subtitle: Center(child: Text('Street Photographer | Frontend Dev', style: TextStyle(fontFamily: 'MONESA'))),
        ),
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19748.png'),
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://pngimg.com/uploads/instagram/instagram_PNG11.png'),
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://pngimg.com/uploads/twitter/twitter_PNG3.png'),
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://pngimg.com/uploads/youtube/youtube_PNG12.png'),
              ),
            ],
          ),
          TextButton.icon(onPressed: (){}, icon: Icon(Icons.mail, color: Colors.teal,), label: Text('Hire Me', style: TextStyle(color: Colors.teal),),),
          ListTile(
            title: Center(child: Text('About Me', style: TextStyle(fontFamily: 'MONESA'))),
            subtitle: Center(child: Text('Introduce my name is Patrisius Julio Celvin Jermat. A little story about CJ Visuart So the name CJ Visuart itself is taken from my last name CJ (Celvin Jermat). Meanwhile, Visuart stands for "Visual Art". CJ Viewsuart was originally made on a whim, which later became a hobby until now. CJ Visuart is an art that is engaged in street photography')),
          ),
      ],
    );
  }
}
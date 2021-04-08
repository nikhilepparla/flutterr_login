import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.blue, Colors.grey, Colors.blueGrey[300]])),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[

                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'MAQ AI',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'welcome back chief',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70))),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(255, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(

                              children: <Widget>[

                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),

                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Email",border: OutlineInputBorder(),
                                    ),
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "Required"),
                                      EmailValidator(errorText: "not validated"),
                                    ]),
                                  ),

                                ),

                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),

                                  child: TextFormField(
                                    decoration:   InputDecoration(
                                      labelText: "password",
                                      border: OutlineInputBorder(),

                                    ),
                                    validator: MultiValidator([
                                      RequiredValidator(errorText: "required"),
                                      MinLengthValidator(6, errorText: "atleast 6")
                                    ]),
                                  )

                                )

                              ],

                            ),
                          ),
                          SizedBox(height: 40,),
                          Text("Forget Password",style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 40,),
                          Container(

                            height: 50,
                           margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange[500],
                          ),
                            child: Text("Login",style: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.bold)),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}


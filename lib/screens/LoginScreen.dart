import 'package:flutter/material.dart';

class CreateUserScreen extends StatelessWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 20 ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only( bottom: 20 ),
                  child: const Center(
                    child: Text('Sign In', style: TextStyle( fontSize: 24 ),),
                  ),
                ),
                Form(
                  key: myFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        onChanged: ( value ) => {
                          print( value )
                        },
                        validator: ( value ) {
                          return value != null ? null : 'Es un campo requerido';
                        },
                        autovalidateMode: AutovalidateMode.always,
                        decoration: const InputDecoration(
                          hintText: 'Username',
                          labelText: 'User',
                        ),
                      ),
                      const SizedBox( height: 20, ),
                      TextFormField(
                        onChanged: ( value ) => {
                          print( value )
                        },
                        validator: ( value ) {
                          return value != null ? null : 'Es un campo requerido';
                        },
                        autovalidateMode: AutovalidateMode.always,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                        ),
                      ),
                      const SizedBox( height: 20, ),
                      TextFormField(
                        onChanged: ( value ) => {
                          print( value )
                        },
                        validator: ( value ) {
                          return value != null ? null : 'Es un campo requerido';
                        },
                        autovalidateMode: AutovalidateMode.always,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox( height: 20, ),
                      DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem( value: 'Admin', child: Text('Admin') ),
                          DropdownMenuItem( value: 'Operator', child: Text('Operator') ),
                        ],
                        onChanged: ( value ) {
                          print(value);
                          // formValues['role'] = value ?? 'Admin';
                        }
                      ),
                      const SizedBox( height: 20, ),
                      ElevatedButton(
                          onPressed: () {
                            if( !myFormKey.currentState!.validate() ) {
                                print('Formulario no válido');
                            }
                          },
                          child: const SizedBox(
                            child: Text('Guardar'),
                          )
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

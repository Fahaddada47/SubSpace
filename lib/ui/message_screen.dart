import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'First Name'
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: 'Last Name'
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                maxLines: 6,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                    hintText: 'Write Review'
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Submit'))),
              const SizedBox(
                height: 16,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
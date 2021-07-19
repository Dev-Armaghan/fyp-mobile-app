import 'package:flutter/material.dart';
import 'package:medicine_rider/screens/medicineDescription.dart';

class CitySearch extends SearchDelegate<String> {
  final cities = [
    'panadol 5mg',
    'xobix 7.5mg',
    'brufeen',
    'panadol cf',
    'panadol extra'
  ];
  final recentSearch = ['berline', 'america', 'pakistan'];

  @override
  List<Widget> buildActions(BuildContext context) {
    // what to do when a query was entered (e.g) show a clear option
    // TODO: implement buildActions
    IconButton(
      icon: Icon(Icons.clear),
      onPressed: () {},
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    // what will be at the start of the search bar
    // TODO: implement buildLeading

    IconButton(
      onPressed: () => close(context, null),
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // to give us suggestion of what we type in text field
    // TODO: implement buildSuggestions
    final suggestion = query.isEmpty
        ? recentSearch
        : cities.where((city) {
            var lowerCities = city.toLowerCase();
            var lowerQuery = query.toLowerCase();
            return lowerCities.startsWith(lowerQuery);
          }).toList();
    return buildSuggestionsSuccess(suggestion);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) {
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          onTap: () {
            query = suggestion;
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Description(
                query: query,
              );
            }));
          },
          title: Text(suggestion),
          trailing: Icon(Icons.shopping_cart),
        );
      },
    );
  }
}

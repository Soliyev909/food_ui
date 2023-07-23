import 'package:flutter/material.dart';

import '../../widget/custom_text_field.dart';

class SecondPage extends StatefulWidget {
  const SecondPage(
      {super.key, required this.onBackPressed, required this.focusNode});

  final void Function() onBackPressed;
  final FocusNode focusNode;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> items = [
    "Andorra",
    "United Arab Emirates",
    "Afghanistan",
    "Antigua and Barbuda",
    "Anguilla",
    "Albania",
    "Armenia",
    "Angola",
    "Antarctica",
    "Argentina",
    "American Samoa",
    "Austria",
    "Australia",
    "Aruba",
    "Åland Islands",
    "Azerbaijan",
    "Bosnia and Herzegovina",
    "Barbados",
    "Bangladesh",
    "Belgium",
    "Burkina Faso",
    "Bulgaria",
    "Bahrain",
    "Burundi",
    "Benin",
    "Saint Barthélemy",
    "Bermuda",
    "Brunei Darussalam",
    "Bolivia, Plurinational State of",
    "Bonaire, Sint Eustatius and Saba",
    "Brazil",
    "Bahamas",
    "Bhutan",
    "Bouvet Island",
    "Botswana",
    "Belarus",
    "Belize",
    "Canada",
    "Cocos (Keeling) Islands",
    "Congo, the Democratic Republic of the",
    "Central African Republic",
    "Congo",
    "Switzerland",
    "Côte d'Ivoire",
    "Cook Islands",
    "Chile",
    "Cameroon",
    "China",
    "Colombia",
    "Costa Rica",
    "Cuba",
    "Cape Verde",
    "Curaçao",
    "Christmas Island",
    "Cyprus",
    "Czech Republic",
    "Germany",
    "Djibouti",
    "Denmark",
    "Dominica",
    "Dominican Republic",
    "Algeria",
    "Ecuador",
    "Estonia",
    "Egypt",
    "Western Sahara",
    "Eritrea",
    "Spain",
    "Ethiopia",
    "Finland",
    "Fiji",
    "Falkland Islands (Malvinas)",
    "Micronesia, Federated States of",
    "Faroe Islands",
    "France",
    "Gabon",
    "United Kingdom",
    "Grenada",
    "Georgia",
    "French Guiana",
    "Guernsey",
    "Ghana",
    "Gibraltar",
    "Greenland",
    "Gambia",
    "Guinea",
    "Guadeloupe",
    "Equatorial Guinea",
    "Greece",
    "South Georgia and the South Sandwich Islands",
    "Guatemala",
    "Guam",
    "Guinea-Bissau",
    "Guyana",
    "Hong Kong",
    "Heard Island and McDonald Islands",
    "Honduras",
    "Croatia",
    "Haiti",
    "Hungary",
    "Indonesia",
    "Ireland",
    "Israel",
    "Isle of Man",
    "India",
    "British Indian Ocean Territory",
    "Iraq",
    "Iran, Islamic Republic of",
    "Iceland",
    "Italy",
    "Jersey",
    "Jamaica",
    "Jordan",
    "Japan",
    "Kenya",
    "Kyrgyzstan",
    "Cambodia",
    "Kiribati",
    "Comoros",
    "Saint Kitts and Nevis",
    "Korea, Democratic People's Republic of",
    "Korea, Republic of",
    "Kuwait",
    "Cayman Islands",
    "Kazakhstan",
    "Lao People's Democratic Republic",
    "Lebanon",
    "Saint Lucia",
    "Liechtenstein",
    "Sri Lanka",
    "Liberia",
    "Lesotho",
    "Lithuania",
    "Luxembourg",
    "Latvia",
    "Libyan Arab Jamahiriya",
    "Morocco",
    "Monaco",
    "Moldova, Republic of",
    "Montenegro",
    "Saint Martin (French part)",
    "Madagascar",
    "Marshall Islands",
    "Macedonia, the former Yugoslav Republic of",
    "Mali",
    "Myanmar",
    "Mongolia",
    "Macao",
    "Northern Mariana Islands",
    "Martinique",
    "Mauritania",
    "Montserrat",
    "Malta",
    "Mauritius",
    "Maldives",
    "Malawi",
    "Mexico",
    "Malaysia",
    "Mozambique",
    "Namibia",
    "New Caledonia",
    "Niger",
    "Norfolk Island",
    "Nigeria",
    "Nicaragua",
    "Netherlands",
    "Norway",
    "Nepal",
    "Nauru",
    "Niue",
    "New Zealand",
    "Oman",
    "Panama",
    "Peru",
    "French Polynesia",
    "Papua New Guinea",
    "Philippines",
    "Pakistan",
    "Poland",
    "Saint Pierre and Miquelon",
    "Pitcairn",
    "Puerto Rico",
    "Palestinian Territory, Occupied",
    "Portugal",
    "Palau",
    "Paraguay",
    "Qatar",
    "Réunion",
    "Romania",
    "Serbia",
    "Russian Federation",
    "Rwanda",
    "Saudi Arabia",
    "Solomon Islands",
    "Seychelles",
    "Sudan",
    "Sweden",
    "Singapore",
    "Saint Helena, Ascension and Tristan da Cunha",
    "Slovenia",
    "Svalbard and Jan Mayen",
    "Slovakia",
    "Sierra Leone",
    "San Marino",
    "Senegal",
    "Somalia",
    "Suriname",
    "Sao Tome and Principe",
    "El Salvador",
    "Sint Maarten (Dutch part)",
    "Syrian Arab Republic",
    "Swaziland",
    "Turks and Caicos Islands",
    "Chad",
  ];

  ValueNotifier<List<String>> suggestion =
      ValueNotifier<List<String>>(<String>[]);

  late TextEditingController _textEditingController;

  void onChanged(String value) {
    List<String> matchQuery = [];
    for (String item in items) {
      if (item.toLowerCase().contains(value.trim().toLowerCase())) {
        matchQuery.add(item);
      }
    }
    suggestion.value = matchQuery;
  }

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: widget.onBackPressed,
        ),
      ),
      body: Column(
        children: [
          CustomTextField(
            enabled: true,
            controller: _textEditingController,
            onChanged: onChanged,
            autofocus: true,
            isFavouriteTextField: true,
            focusNode: widget.focusNode,
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: suggestion,
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _textEditingController.text.isNotEmpty &&
                          suggestion.value.isEmpty
                      ? const ColoredBox(
                          color: Colors.red,
                          child: SizedBox.expand(),
                        )
                      : ListView.builder(
                          itemCount: value.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(value[index]),
                              onTap: () {},
                            );
                          },
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cat_breeds_app/data/weight.dart';

class Breed {
  final Weight? weight;
  final String? id;
  final String? name;
  final String? cfaUrl;
  final String? vetstreetUrl;
  final String? vcahospitalsUrl;
  final String? temperament;
  final String? origin;
  final String? countryCodes;
  final String? countryCode;
  final String? description;
  final String? lifeSpan;
  final int? indoor;
  final int? lap;
  final String? altNames;
  final int? adaptability;
  final int? affectionLevel;
  final int? childFriendly;
  final int? dogFriendly;
  final int? energyLevel;
  final int? grooming;
  final int? healthIssues;
  final int? intelligence;
  final int? sheddingLevel;
  final int? socialNeeds;
  final int? strangerFriendly;
  final int? vocalisation;
  final int? experimental;
  final int? hairless;
  final int? natural;
  final int? rare;
  final int? rex;
  final int? suppressedTail;
  final int? shortLegs;
  final String? wikipediaUrl;
  final int? hypoallergenic;
  final String? referenceImageId;
  Breed({
    this.weight,
    this.id,
    this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.description,
    this.lifeSpan,
    this.indoor,
    this.lap,
    this.altNames,
    this.adaptability,
    this.affectionLevel,
    this.childFriendly,
    this.dogFriendly,
    this.energyLevel,
    this.grooming,
    this.healthIssues,
    this.intelligence,
    this.sheddingLevel,
    this.socialNeeds,
    this.strangerFriendly,
    this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.wikipediaUrl,
    this.hypoallergenic,
    this.referenceImageId,
  });

  Breed copyWith({
    Weight? weight,
    String? id,
    String? name,
    String? cfaUrl,
    String? vetstreetUrl,
    String? vcahospitalsUrl,
    String? temperament,
    String? origin,
    String? countryCodes,
    String? countryCode,
    String? description,
    String? lifeSpan,
    int? indoor,
    int? lap,
    String? altNames,
    int? adaptability,
    int? affectionLevel,
    int? childFriendly,
    int? dogFriendly,
    int? energyLevel,
    int? grooming,
    int? healthIssues,
    int? intelligence,
    int? sheddingLevel,
    int? socialNeeds,
    int? strangerFriendly,
    int? vocalisation,
    int? experimental,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    int? suppressedTail,
    int? shortLegs,
    String? wikipediaUrl,
    int? hypoallergenic,
    String? referenceImageId,
  }) {
    return Breed(
      weight: weight ?? this.weight,
      id: id ?? this.id,
      name: name ?? this.name,
      cfaUrl: cfaUrl ?? this.cfaUrl,
      vetstreetUrl: vetstreetUrl ?? this.vetstreetUrl,
      vcahospitalsUrl: vcahospitalsUrl ?? this.vcahospitalsUrl,
      temperament: temperament ?? this.temperament,
      origin: origin ?? this.origin,
      countryCodes: countryCodes ?? this.countryCodes,
      countryCode: countryCode ?? this.countryCode,
      description: description ?? this.description,
      lifeSpan: lifeSpan ?? this.lifeSpan,
      indoor: indoor ?? this.indoor,
      lap: lap ?? this.lap,
      altNames: altNames ?? this.altNames,
      adaptability: adaptability ?? this.adaptability,
      affectionLevel: affectionLevel ?? this.affectionLevel,
      childFriendly: childFriendly ?? this.childFriendly,
      dogFriendly: dogFriendly ?? this.dogFriendly,
      energyLevel: energyLevel ?? this.energyLevel,
      grooming: grooming ?? this.grooming,
      healthIssues: healthIssues ?? this.healthIssues,
      intelligence: intelligence ?? this.intelligence,
      sheddingLevel: sheddingLevel ?? this.sheddingLevel,
      socialNeeds: socialNeeds ?? this.socialNeeds,
      strangerFriendly: strangerFriendly ?? this.strangerFriendly,
      vocalisation: vocalisation ?? this.vocalisation,
      experimental: experimental ?? this.experimental,
      hairless: hairless ?? this.hairless,
      natural: natural ?? this.natural,
      rare: rare ?? this.rare,
      rex: rex ?? this.rex,
      suppressedTail: suppressedTail ?? this.suppressedTail,
      shortLegs: shortLegs ?? this.shortLegs,
      wikipediaUrl: wikipediaUrl ?? this.wikipediaUrl,
      hypoallergenic: hypoallergenic ?? this.hypoallergenic,
      referenceImageId: referenceImageId ?? this.referenceImageId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': weight?.toMap(),
      'id': id,
      'name': name,
      'cfa_url': cfaUrl,
      'vetstreet_url': vetstreetUrl,
      'vcahospitals_url': vcahospitalsUrl,
      'temperament': temperament,
      'origin': origin,
      'country_codes': countryCodes,
      'country_code': countryCode,
      'description': description,
      'life_span': lifeSpan,
      'indoor': indoor,
      'lap': lap,
      'alt_names': altNames,
      'adaptability': adaptability,
      'affection_level': affectionLevel,
      'child_friendly': childFriendly,
      'dog_friendly': dogFriendly,
      'energy_level': energyLevel,
      'grooming': grooming,
      'health_issues': healthIssues,
      'intelligence': intelligence,
      'shedding_level': sheddingLevel,
      'social_needs': socialNeeds,
      'stranger_friendly': strangerFriendly,
      'vocalisation': vocalisation,
      'experimental': experimental,
      'hairless': hairless,
      'natural': natural,
      'rare': rare,
      'rex': rex,
      'suppressed_tail': suppressedTail,
      'short_legs': shortLegs,
      'wikipedia_url': wikipediaUrl,
      'hypoallergenic': hypoallergenic,
      'reference_image_id': referenceImageId,
    };
  }

  factory Breed.fromMap(Map<String, dynamic> map) {
    return Breed(
      weight: map['weight'] != null
          ? Weight.fromMap(map['weight'] as Map<String, dynamic>)
          : null,
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      cfaUrl: map['cfa_url'] != null ? map['cfa_url'] as String : null,
      vetstreetUrl:
          map['vetstreet_url'] != null ? map['vetstreet_url'] as String : null,
      vcahospitalsUrl: map['vcahospitals_url'] != null
          ? map['vcahospitals_url'] as String
          : null,
      temperament:
          map['temperament'] != null ? map['temperament'] as String : null,
      origin: map['origin'] != null ? map['origin'] as String : null,
      countryCodes:
          map['country_codes'] != null ? map['country_codes'] as String : null,
      countryCode:
          map['country_code'] != null ? map['country_code'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      lifeSpan: map['life_span'] != null ? map['life_span'] as String : null,
      indoor: map['indoor'] != null ? map['indoor'] as int : null,
      lap: map['lap'] != null ? map['lap'] as int : null,
      altNames: map['alt_names'] != null ? map['alt_names'] as String : null,
      adaptability:
          map['adaptability'] != null ? map['adaptability'] as int : null,
      affectionLevel:
          map['affection_level'] != null ? map['affection_level'] as int : null,
      childFriendly:
          map['child_friendly'] != null ? map['child_friendly'] as int : null,
      dogFriendly:
          map['dog_friendly'] != null ? map['dog_friendly'] as int : null,
      energyLevel:
          map['energy_level'] != null ? map['energy_level'] as int : null,
      grooming: map['grooming'] != null ? map['grooming'] as int : null,
      healthIssues:
          map['health_issues'] != null ? map['health_issues'] as int : null,
      intelligence:
          map['intelligence'] != null ? map['intelligence'] as int : null,
      sheddingLevel:
          map['shedding_level'] != null ? map['shedding_level'] as int : null,
      socialNeeds:
          map['social_needs'] != null ? map['social_needs'] as int : null,
      strangerFriendly: map['stranger_friendly'] != null
          ? map['stranger_friendly'] as int
          : null,
      vocalisation:
          map['vocalisation'] != null ? map['vocalisation'] as int : null,
      experimental:
          map['experimental'] != null ? map['experimental'] as int : null,
      hairless: map['hairless'] != null ? map['hairless'] as int : null,
      natural: map['natural'] != null ? map['natural'] as int : null,
      rare: map['rare'] != null ? map['rare'] as int : null,
      rex: map['rex'] != null ? map['rex'] as int : null,
      suppressedTail:
          map['suppressed_tail'] != null ? map['suppressed_tail'] as int : null,
      shortLegs: map['short_legs'] != null ? map['short_legs'] as int : null,
      wikipediaUrl:
          map['wikipedia_url'] != null ? map['wikipedia_url'] as String : null,
      hypoallergenic:
          map['hypoallergenic'] != null ? map['hypoallergenic'] as int : null,
      referenceImageId: map['reference_image_id'] != null
          ? map['reference_image_id'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Breed.fromJson(String source) =>
      Breed.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Breed(weight: $weight, id: $id, name: $name, cfa_url: $cfaUrl, vetstreet_url: $vetstreetUrl, vcahospitals_url: $vcahospitalsUrl, temperament: $temperament, origin: $origin, country_codes: $countryCodes, country_code: $countryCode, description: $description, life_span: $lifeSpan, indoor: $indoor, lap: $lap, alt_names: $altNames, adaptability: $adaptability, affection_level: $affectionLevel, child_friendly: $childFriendly, dog_friendly: $dogFriendly, energy_level: $energyLevel, grooming: $grooming, health_issues: $healthIssues, intelligence: $intelligence, shedding_level: $sheddingLevel, social_needs: $socialNeeds, stranger_friendly: $strangerFriendly, vocalisation: $vocalisation, experimental: $experimental, hairless: $hairless, natural: $natural, rare: $rare, rex: $rex, suppressed_tail: $suppressedTail, short_legs: $shortLegs, wikipedia_url: $wikipediaUrl, hypoallergenic: $hypoallergenic, reference_image_id: $referenceImageId)';
  }

  @override
  bool operator ==(covariant Breed other) {
    if (identical(this, other)) return true;

    return other.weight == weight &&
        other.id == id &&
        other.name == name &&
        other.cfaUrl == cfaUrl &&
        other.vetstreetUrl == vetstreetUrl &&
        other.vcahospitalsUrl == vcahospitalsUrl &&
        other.temperament == temperament &&
        other.origin == origin &&
        other.countryCodes == countryCodes &&
        other.countryCode == countryCode &&
        other.description == description &&
        other.lifeSpan == lifeSpan &&
        other.indoor == indoor &&
        other.lap == lap &&
        other.altNames == altNames &&
        other.adaptability == adaptability &&
        other.affectionLevel == affectionLevel &&
        other.childFriendly == childFriendly &&
        other.dogFriendly == dogFriendly &&
        other.energyLevel == energyLevel &&
        other.grooming == grooming &&
        other.healthIssues == healthIssues &&
        other.intelligence == intelligence &&
        other.sheddingLevel == sheddingLevel &&
        other.socialNeeds == socialNeeds &&
        other.strangerFriendly == strangerFriendly &&
        other.vocalisation == vocalisation &&
        other.experimental == experimental &&
        other.hairless == hairless &&
        other.natural == natural &&
        other.rare == rare &&
        other.rex == rex &&
        other.suppressedTail == suppressedTail &&
        other.shortLegs == shortLegs &&
        other.wikipediaUrl == wikipediaUrl &&
        other.hypoallergenic == hypoallergenic &&
        other.referenceImageId == referenceImageId;
  }

  @override
  int get hashCode {
    return weight.hashCode ^
        id.hashCode ^
        name.hashCode ^
        cfaUrl.hashCode ^
        vetstreetUrl.hashCode ^
        vcahospitalsUrl.hashCode ^
        temperament.hashCode ^
        origin.hashCode ^
        countryCodes.hashCode ^
        countryCode.hashCode ^
        description.hashCode ^
        lifeSpan.hashCode ^
        indoor.hashCode ^
        lap.hashCode ^
        altNames.hashCode ^
        adaptability.hashCode ^
        affectionLevel.hashCode ^
        childFriendly.hashCode ^
        dogFriendly.hashCode ^
        energyLevel.hashCode ^
        grooming.hashCode ^
        healthIssues.hashCode ^
        intelligence.hashCode ^
        sheddingLevel.hashCode ^
        socialNeeds.hashCode ^
        strangerFriendly.hashCode ^
        vocalisation.hashCode ^
        experimental.hashCode ^
        hairless.hashCode ^
        natural.hashCode ^
        rare.hashCode ^
        rex.hashCode ^
        suppressedTail.hashCode ^
        shortLegs.hashCode ^
        wikipediaUrl.hashCode ^
        hypoallergenic.hashCode ^
        referenceImageId.hashCode;
  }
}

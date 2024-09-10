// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:cat_breeds_app/data/breeds/image.dart';
import 'package:cat_breeds_app/data/breeds/weight.dart';

class Breed {
  final Weight? weight;
  final String? id;
  final String? name;
  final String? cfa_url;
  final String? vetstreet_url;
  final String? vcahospitals_url;
  final String? temperament;
  final String? origin;
  final String? country_codes;
  final String? country_code;
  final String? description;
  final String? life_span;
  final int? indoor;
  final int? lap;
  final String? alt_names;
  final int? adaptability;
  final int? affection_level;
  final int? child_friendly;
  final int? dog_friendly;
  final int? energy_level;
  final int? grooming;
  final int? health_issues;
  final int? intelligence;
  final int? shedding_level;
  final int? social_needs;
  final int? stranger_friendly;
  final int? vocalisation;
  final int? experimental;
  final int? hairless;
  final int? natural;
  final int? rare;
  final int? rex;
  final int? suppressed_tail;
  final int? short_legs;
  final String? wikipedia_url;
  final int? hypoallergenic;
  final String? reference_image_id;
  final Image? image;
  Breed({
    this.weight,
    this.id,
    this.name,
    this.cfa_url,
    this.vetstreet_url,
    this.vcahospitals_url,
    this.temperament,
    this.origin,
    this.country_codes,
    this.country_code,
    this.description,
    this.life_span,
    this.indoor,
    this.lap,
    this.alt_names,
    this.adaptability,
    this.affection_level,
    this.child_friendly,
    this.dog_friendly,
    this.energy_level,
    this.grooming,
    this.health_issues,
    this.intelligence,
    this.shedding_level,
    this.social_needs,
    this.stranger_friendly,
    this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressed_tail,
    this.short_legs,
    this.wikipedia_url,
    this.hypoallergenic,
    this.reference_image_id,
    this.image,
  });

  Breed copyWith({
    Weight? weight,
    String? id,
    String? name,
    String? cfa_url,
    String? vetstreet_url,
    String? vcahospitals_url,
    String? temperament,
    String? origin,
    String? country_codes,
    String? country_code,
    String? description,
    String? life_span,
    int? indoor,
    int? lap,
    String? alt_names,
    int? adaptability,
    int? affection_level,
    int? child_friendly,
    int? dog_friendly,
    int? energy_level,
    int? grooming,
    int? health_issues,
    int? intelligence,
    int? shedding_level,
    int? social_needs,
    int? stranger_friendly,
    int? vocalisation,
    int? experimental,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    int? suppressed_tail,
    int? short_legs,
    String? wikipedia_url,
    int? hypoallergenic,
    String? reference_image_id,
    Image? image,
  }) {
    return Breed(
      weight: weight ?? this.weight,
      id: id ?? this.id,
      name: name ?? this.name,
      cfa_url: cfa_url ?? this.cfa_url,
      vetstreet_url: vetstreet_url ?? this.vetstreet_url,
      vcahospitals_url: vcahospitals_url ?? this.vcahospitals_url,
      temperament: temperament ?? this.temperament,
      origin: origin ?? this.origin,
      country_codes: country_codes ?? this.country_codes,
      country_code: country_code ?? this.country_code,
      description: description ?? this.description,
      life_span: life_span ?? this.life_span,
      indoor: indoor ?? this.indoor,
      lap: lap ?? this.lap,
      alt_names: alt_names ?? this.alt_names,
      adaptability: adaptability ?? this.adaptability,
      affection_level: affection_level ?? this.affection_level,
      child_friendly: child_friendly ?? this.child_friendly,
      dog_friendly: dog_friendly ?? this.dog_friendly,
      energy_level: energy_level ?? this.energy_level,
      grooming: grooming ?? this.grooming,
      health_issues: health_issues ?? this.health_issues,
      intelligence: intelligence ?? this.intelligence,
      shedding_level: shedding_level ?? this.shedding_level,
      social_needs: social_needs ?? this.social_needs,
      stranger_friendly: stranger_friendly ?? this.stranger_friendly,
      vocalisation: vocalisation ?? this.vocalisation,
      experimental: experimental ?? this.experimental,
      hairless: hairless ?? this.hairless,
      natural: natural ?? this.natural,
      rare: rare ?? this.rare,
      rex: rex ?? this.rex,
      suppressed_tail: suppressed_tail ?? this.suppressed_tail,
      short_legs: short_legs ?? this.short_legs,
      wikipedia_url: wikipedia_url ?? this.wikipedia_url,
      hypoallergenic: hypoallergenic ?? this.hypoallergenic,
      reference_image_id: reference_image_id ?? this.reference_image_id,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weight': weight?.toMap(),
      'id': id,
      'name': name,
      'cfa_url': cfa_url,
      'vetstreet_url': vetstreet_url,
      'vcahospitals_url': vcahospitals_url,
      'temperament': temperament,
      'origin': origin,
      'country_codes': country_codes,
      'country_code': country_code,
      'description': description,
      'life_span': life_span,
      'indoor': indoor,
      'lap': lap,
      'alt_names': alt_names,
      'adaptability': adaptability,
      'affection_level': affection_level,
      'child_friendly': child_friendly,
      'dog_friendly': dog_friendly,
      'energy_level': energy_level,
      'grooming': grooming,
      'health_issues': health_issues,
      'intelligence': intelligence,
      'shedding_level': shedding_level,
      'social_needs': social_needs,
      'stranger_friendly': stranger_friendly,
      'vocalisation': vocalisation,
      'experimental': experimental,
      'hairless': hairless,
      'natural': natural,
      'rare': rare,
      'rex': rex,
      'suppressed_tail': suppressed_tail,
      'short_legs': short_legs,
      'wikipedia_url': wikipedia_url,
      'hypoallergenic': hypoallergenic,
      'reference_image_id': reference_image_id,
      'image': image?.toMap(),
    };
  }

  factory Breed.fromMap(Map<String, dynamic> map) {
    return Breed(
      weight: map['weight'] != null
          ? Weight.fromMap(map['weight'] as Map<String, dynamic>)
          : null,
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      cfa_url: map['cfa_url'] != null ? map['cfa_url'] as String : null,
      vetstreet_url:
          map['vetstreet_url'] != null ? map['vetstreet_url'] as String : null,
      vcahospitals_url: map['vcahospitals_url'] != null
          ? map['vcahospitals_url'] as String
          : null,
      temperament:
          map['temperament'] != null ? map['temperament'] as String : null,
      origin: map['origin'] != null ? map['origin'] as String : null,
      country_codes:
          map['country_codes'] != null ? map['country_codes'] as String : null,
      country_code:
          map['country_code'] != null ? map['country_code'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      life_span: map['life_span'] != null ? map['life_span'] as String : null,
      indoor: map['indoor'] != null ? map['indoor'] as int : null,
      lap: map['lap'] != null ? map['lap'] as int : null,
      alt_names: map['alt_names'] != null ? map['alt_names'] as String : null,
      adaptability:
          map['adaptability'] != null ? map['adaptability'] as int : null,
      affection_level:
          map['affection_level'] != null ? map['affection_level'] as int : null,
      child_friendly:
          map['child_friendly'] != null ? map['child_friendly'] as int : null,
      dog_friendly:
          map['dog_friendly'] != null ? map['dog_friendly'] as int : null,
      energy_level:
          map['energy_level'] != null ? map['energy_level'] as int : null,
      grooming: map['grooming'] != null ? map['grooming'] as int : null,
      health_issues:
          map['health_issues'] != null ? map['health_issues'] as int : null,
      intelligence:
          map['intelligence'] != null ? map['intelligence'] as int : null,
      shedding_level:
          map['shedding_level'] != null ? map['shedding_level'] as int : null,
      social_needs:
          map['social_needs'] != null ? map['social_needs'] as int : null,
      stranger_friendly: map['stranger_friendly'] != null
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
      suppressed_tail:
          map['suppressed_tail'] != null ? map['suppressed_tail'] as int : null,
      short_legs: map['short_legs'] != null ? map['short_legs'] as int : null,
      wikipedia_url:
          map['wikipedia_url'] != null ? map['wikipedia_url'] as String : null,
      hypoallergenic:
          map['hypoallergenic'] != null ? map['hypoallergenic'] as int : null,
      reference_image_id: map['reference_image_id'] != null
          ? map['reference_image_id'] as String
          : null,
      image: map['image'] != null
          ? Image.fromMap(map['image'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Breed.fromJson(String source) =>
      Breed.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Breed(weight: $weight, id: $id, name: $name, cfa_url: $cfa_url, vetstreet_url: $vetstreet_url, vcahospitals_url: $vcahospitals_url, temperament: $temperament, origin: $origin, country_codes: $country_codes, country_code: $country_code, description: $description, life_span: $life_span, indoor: $indoor, lap: $lap, alt_names: $alt_names, adaptability: $adaptability, affection_level: $affection_level, child_friendly: $child_friendly, dog_friendly: $dog_friendly, energy_level: $energy_level, grooming: $grooming, health_issues: $health_issues, intelligence: $intelligence, shedding_level: $shedding_level, social_needs: $social_needs, stranger_friendly: $stranger_friendly, vocalisation: $vocalisation, experimental: $experimental, hairless: $hairless, natural: $natural, rare: $rare, rex: $rex, suppressed_tail: $suppressed_tail, short_legs: $short_legs, wikipedia_url: $wikipedia_url, hypoallergenic: $hypoallergenic, reference_image_id: $reference_image_id, image: $image)';
  }

  @override
  bool operator ==(covariant Breed other) {
    if (identical(this, other)) return true;

    return other.weight == weight &&
        other.id == id &&
        other.name == name &&
        other.cfa_url == cfa_url &&
        other.vetstreet_url == vetstreet_url &&
        other.vcahospitals_url == vcahospitals_url &&
        other.temperament == temperament &&
        other.origin == origin &&
        other.country_codes == country_codes &&
        other.country_code == country_code &&
        other.description == description &&
        other.life_span == life_span &&
        other.indoor == indoor &&
        other.lap == lap &&
        other.alt_names == alt_names &&
        other.adaptability == adaptability &&
        other.affection_level == affection_level &&
        other.child_friendly == child_friendly &&
        other.dog_friendly == dog_friendly &&
        other.energy_level == energy_level &&
        other.grooming == grooming &&
        other.health_issues == health_issues &&
        other.intelligence == intelligence &&
        other.shedding_level == shedding_level &&
        other.social_needs == social_needs &&
        other.stranger_friendly == stranger_friendly &&
        other.vocalisation == vocalisation &&
        other.experimental == experimental &&
        other.hairless == hairless &&
        other.natural == natural &&
        other.rare == rare &&
        other.rex == rex &&
        other.suppressed_tail == suppressed_tail &&
        other.short_legs == short_legs &&
        other.wikipedia_url == wikipedia_url &&
        other.hypoallergenic == hypoallergenic &&
        other.reference_image_id == reference_image_id &&
        other.image == image;
  }

  @override
  int get hashCode {
    return weight.hashCode ^
        id.hashCode ^
        name.hashCode ^
        cfa_url.hashCode ^
        vetstreet_url.hashCode ^
        vcahospitals_url.hashCode ^
        temperament.hashCode ^
        origin.hashCode ^
        country_codes.hashCode ^
        country_code.hashCode ^
        description.hashCode ^
        life_span.hashCode ^
        indoor.hashCode ^
        lap.hashCode ^
        alt_names.hashCode ^
        adaptability.hashCode ^
        affection_level.hashCode ^
        child_friendly.hashCode ^
        dog_friendly.hashCode ^
        energy_level.hashCode ^
        grooming.hashCode ^
        health_issues.hashCode ^
        intelligence.hashCode ^
        shedding_level.hashCode ^
        social_needs.hashCode ^
        stranger_friendly.hashCode ^
        vocalisation.hashCode ^
        experimental.hashCode ^
        hairless.hashCode ^
        natural.hashCode ^
        rare.hashCode ^
        rex.hashCode ^
        suppressed_tail.hashCode ^
        short_legs.hashCode ^
        wikipedia_url.hashCode ^
        hypoallergenic.hashCode ^
        reference_image_id.hashCode ^
        image.hashCode;
  }
}

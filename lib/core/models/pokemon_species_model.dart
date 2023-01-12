class PokemonSpeciesModel {
  PokemonSpeciesModel({
    required this.baseHappiness,
    required this.captureRate,
    required this.color,
    required this.eggGroups,
    required this.evolutionChain,
    required this.flavorTextEntries,  
    required this.formDescriptions,
    required this.formsSwitchable,
    required this.genderRate,
    required this.genera,
    required this.generation,
    required this.growthRate,
    required this.habitat,
    required this.hasGenderDifferences,
    required this.hatchCounter,
    required this.id,
    required this.isBaby,
    required this.isLegendary,
    required this.isMythical,
    required this.name,
    required this.names,
    required this.order,
    required this.palParkEncounters,
    required this.pokedexNumbers,
    required this.shape,
    required this.varieties,
  });
  late final int baseHappiness;
  late final int captureRate;
  late final Color color;
  late final List<EggGroups> eggGroups;
  late final EvolutionChain evolutionChain;

  late final List<FlavorTextEntries> flavorTextEntries;
  late final List<dynamic> formDescriptions;
  late final bool formsSwitchable;
  late final int genderRate;
  late final List<Genera> genera;
  late final Generation generation;
  late final GrowthRate growthRate;
  late final Habitat habitat;
  late final bool hasGenderDifferences;
  late final int hatchCounter;
  late final int id;
  late final bool isBaby;
  late final bool isLegendary;
  late final bool isMythical;
  late final String name;
  late final List<Names> names;
  late final int order;
  late final List<PalParkEncounters> palParkEncounters;
  late final List<PokedexNumbers> pokedexNumbers;
  late final Shape shape;
  late final List<Varieties> varieties;

  PokemonSpeciesModel.fromJson(Map<String, dynamic> json) {
    baseHappiness = json['base_happiness'];
    captureRate = json['capture_rate'];
    color = Color.fromJson(json['color']);
    eggGroups = List.from(json['egg_groups']).map((e) => EggGroups.fromJson(e)).toList();
    evolutionChain = EvolutionChain.fromJson(json['evolution_chain']);

    flavorTextEntries = List.from(json['flavor_text_entries']).map((e) => FlavorTextEntries.fromJson(e)).toList();
    formDescriptions = List.castFrom<dynamic, dynamic>(json['form_descriptions']);
    formsSwitchable = json['forms_switchable'];
    genderRate = json['gender_rate'];
    genera = List.from(json['genera']).map((e) => Genera.fromJson(e)).toList();
    generation = Generation.fromJson(json['generation']);
    growthRate = GrowthRate.fromJson(json['growth_rate']);
    habitat = Habitat.fromJson(json['habitat']);
    hasGenderDifferences = json['has_gender_differences'];
    hatchCounter = json['hatch_counter'];
    id = json['id'];
    isBaby = json['is_baby'];
    isLegendary = json['is_legendary'];
    isMythical = json['is_mythical'];
    name = json['name'];
    names = List.from(json['names']).map((e) => Names.fromJson(e)).toList();
    order = json['order'];
    palParkEncounters = List.from(json['pal_park_encounters']).map((e) => PalParkEncounters.fromJson(e)).toList();
    pokedexNumbers = List.from(json['pokedex_numbers']).map((e) => PokedexNumbers.fromJson(e)).toList();
    shape = Shape.fromJson(json['shape']);
    varieties = List.from(json['varieties']).map((e) => Varieties.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['base_happiness'] = baseHappiness;
    data['capture_rate'] = captureRate;
    data['color'] = color.toJson();
    data['egg_groups'] = eggGroups.map((e) => e.toJson()).toList();
    data['evolution_chain'] = evolutionChain.toJson();

    data['flavor_text_entries'] = flavorTextEntries.map((e) => e.toJson()).toList();
    data['form_descriptions'] = formDescriptions;
    data['forms_switchable'] = formsSwitchable;
    data['gender_rate'] = genderRate;
    data['genera'] = genera.map((e) => e.toJson()).toList();
    data['generation'] = generation.toJson();
    data['growth_rate'] = growthRate.toJson();
    data['habitat'] = habitat.toJson();
    data['has_gender_differences'] = hasGenderDifferences;
    data['hatch_counter'] = hatchCounter;
    data['id'] = id;
    data['is_baby'] = isBaby;
    data['is_legendary'] = isLegendary;
    data['is_mythical'] = isMythical;
    data['name'] = name;
    data['names'] = names.map((e) => e.toJson()).toList();
    data['order'] = order;
    data['pal_park_encounters'] = palParkEncounters.map((e) => e.toJson()).toList();
    data['pokedex_numbers'] = pokedexNumbers.map((e) => e.toJson()).toList();
    data['shape'] = shape.toJson();
    data['varieties'] = varieties.map((e) => e.toJson()).toList();
    return data;
  }
}

class Color {
  Color({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Color.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class EggGroups {
  EggGroups({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  EggGroups.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class EvolutionChain {
  EvolutionChain({
    required this.url,
  });
  late final String url;

  EvolutionChain.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class FlavorTextEntries {
  FlavorTextEntries({
    required this.flavorText,
    required this.language,
    required this.version,
  });
  late final String flavorText;
  late final Language language;
  late final Version version;

  FlavorTextEntries.fromJson(Map<String, dynamic> json) {
    flavorText = json['flavor_text'];
    language = Language.fromJson(json['language']);
    version = Version.fromJson(json['version']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['flavor_text'] = flavorText;
    data['language'] = language.toJson();
    data['version'] = version.toJson();
    return data;
  }
}

class Language {
  Language({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Language.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Version {
  Version({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Version.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Genera {
  Genera({
    required this.genus,
    required this.language,
  });
  late final String genus;
  late final Language language;

  Genera.fromJson(Map<String, dynamic> json) {
    genus = json['genus'];
    language = Language.fromJson(json['language']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['genus'] = genus;
    data['language'] = language.toJson();
    return data;
  }
}

class Generation {
  Generation({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Generation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class GrowthRate {
  GrowthRate({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  GrowthRate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Habitat {
  Habitat({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Habitat.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Names {
  Names({
    required this.language,
    required this.name,
  });
  late final Language language;
  late final String name;

  Names.fromJson(Map<String, dynamic> json) {
    language = Language.fromJson(json['language']);
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['language'] = language.toJson();
    data['name'] = name;
    return data;
  }
}

class PalParkEncounters {
  PalParkEncounters({
    required this.area,
    required this.baseScore,
    required this.rate,
  });
  late final Area area;
  late final int baseScore;
  late final int rate;

  PalParkEncounters.fromJson(Map<String, dynamic> json) {
    area = Area.fromJson(json['area']);
    baseScore = json['base_score'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['area'] = area.toJson();
    data['base_score'] = baseScore;
    data['rate'] = rate;
    return data;
  }
}

class Area {
  Area({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Area.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class PokedexNumbers {
  PokedexNumbers({
    required this.entryNumber,
    required this.pokedex,
  });
  late final int entryNumber;
  late final Pokedex pokedex;

  PokedexNumbers.fromJson(Map<String, dynamic> json) {
    entryNumber = json['entry_number'];
    pokedex = Pokedex.fromJson(json['pokedex']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['entry_number'] = entryNumber;
    data['pokedex'] = pokedex.toJson();
    return data;
  }
}

class Pokedex {
  Pokedex({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Pokedex.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Shape {
  Shape({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Shape.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class Varieties {
  Varieties({
    required this.isDefault,
    required this.pokemon,
  });
  late final bool isDefault;
  late final Pokemon pokemon;

  Varieties.fromJson(Map<String, dynamic> json) {
    isDefault = json['is_default'];
    pokemon = Pokemon.fromJson(json['pokemon']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['is_default'] = isDefault;
    data['pokemon'] = pokemon.toJson();
    return data;
  }
}

class Pokemon {
  Pokemon({
    required this.name,
    required this.url,
  });
  late final String name;
  late final String url;

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

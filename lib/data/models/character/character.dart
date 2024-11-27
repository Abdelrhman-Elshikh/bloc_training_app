import 'package:equatable/equatable.dart';

import 'location.dart';
import 'origin.dart';

class Character extends Equatable {
	final int? id;
	final String? name;
	final String? status;
	final String? species;
	final String? type;
	final String? gender;
	final Origin? origin;
	final Location? location;
	final String? image;
	final List<dynamic>? episode;
	final String? url;
	final DateTime? created;

	const Character({
		this.id, 
		this.name, 
		this.status, 
		this.species, 
		this.type, 
		this.gender, 
		this.origin, 
		this.location, 
		this.image, 
		this.episode, 
		this.url, 
		this.created, 
	});

	factory Character.fromJson(Map<String, dynamic> json) => Character(
				id: json['id'] as int?,
				name: json['name'] as String?,
				status: json['status'] as String?,
				species: json['species'] as String?,
				type: json['type'] as String?,
				gender: json['gender'] as String?,
				origin: json['origin'] == null
						? null
						: Origin.fromJson(json['origin'] as Map<String, dynamic>),
				location: json['location'] == null
						? null
						: Location.fromJson(json['location'] as Map<String, dynamic>),
				image: json['image'] as String?,
				episode: json['episode'] as List<dynamic>?,
				url: json['url'] as String?,
				created: json['created'] == null
						? null
						: DateTime.parse(json['created'] as String),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'status': status,
				'species': species,
				'type': type,
				'gender': gender,
				'origin': origin?.toJson(),
				'location': location?.toJson(),
				'image': image,
				'episode': episode,
				'url': url,
				'created': created?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				name,
				status,
				species,
				type,
				gender,
				origin,
				location,
				image,
				episode,
				url,
				created,
		];
	}
}

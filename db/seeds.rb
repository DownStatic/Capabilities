# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Unit.create(name: "Isabella von Carstein", role: "Legendary Lord", scale: "small")
Unit.create(name: "Vargheist", role: "Flying Troop", scale: "monstrous")
Unit.create(name: "Grave Guard", role: "Infantry Troop", scale: "small")
Unit.create(name: "Banshee", role: "Hero", scale: "small")
Unit.create(name: "Blood Knight", role: "Cavalry Troop", scale: "large")
Unit.create(name: "Vampire Lord", role: "Lord", scale: "small")
Unit.create(name: "Hexwraith", role: "Cavalry Troop", scale: "large")

Ability.create(name: "The Hunger", effect: "Regenerates HP constantly")
Ability.create(name: "Shielded", effect: "Blocks missiles")
Ability.create(name: "Undead Leadership", effect: "Crumbles instead of routes")
Ability.create(name: "Ethereal", effect: "Grants 80% physical resistance")
Ability.create(name: "Blood Chalice", effect: "Some broken magic")
Ability.create(name: "Anti-Infantry", effect: "Bonus damage vs. Infantry Troops")
Ability.create(name: "Raise Dead", effect: "Summons a new unit of ghouls")

Unit.all[0].abilities << Ability.all[0]
Unit.all[0].abilities << Ability.all[2]
Unit.all[0].abilities << Ability.all[4]
Unit.all[0].abilities << Ability.all[5]
Unit.all[0].abilities << Ability.all[6]
Unit.all[1].abilities << Ability.all[2]
Unit.all[1].abilities << Ability.all[5]
Unit.all[2].abilities << Ability.all[1]
Unit.all[2].abilities << Ability.all[2]
Unit.all[3].abilities << Ability.all[2]
Unit.all[3].abilities << Ability.all[3]
Unit.all[4].abilities << Ability.all[2]
Unit.all[5].abilities << Ability.all[0]
Unit.all[5].abilities << Ability.all[2]
Unit.all[5].abilities << Ability.all[6]
Unit.all[6].abilities << Ability.all[2]
Unit.all[6].abilities << Ability.all[3]
Unit.all[6].abilities << Ability.all[5]

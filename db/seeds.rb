require 'faker'

puts "Clearing old data..."
Villager.destroy_all
Villager.reset_pk_sequence
Player.destroy_all
Player.reset_pk_sequence
Species.destroy_all
Species.reset_pk_sequence
Personality.destroy_all
Personality.reset_pk_sequence
UserVillager.destroy_all
UserVillager.reset_pk_sequence
VillagerSpecies.destroy_all
VillagerSpecies.reset_pk_sequence
VillagerPersonality.destroy_all
VillagerPersonality.reset_pk_sequence
DreamVillager.destroy_all
DreamVillager.reset_pk_sequence

puts "Seeding Players..."
        usernames = (Faker::Internet.username)
        emails = (Faker::Internet.email(name: usernames.sample))
        10.times do
                Player.create(usernames: usernames.sample, emails: emails.sample)
        end

puts "Seeding Personalities..."
        personality_names = ["normal", "lazy", "uchi", "snooty", "cranky", "jock", "peppy", "smug"]
        35.times do
                Personality.create(personality_names: personality_names.sample)
        end

puts "Seeding Villagers..."
    Villager.create(
        name: "Ankha",
        birthday: "September 22",
        gender: "Female",
        species: "Cat",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/5/56/Ankha_NH.png/revision/latest/scale-to-width-down/217?cb=20200817172044",
    )

    Villager.create(
        name: "Bob",
        birthday: "January 1",
        gender: "Male",
        species: "Cat",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/e/ea/Bob_NH.png/revision/latest/scale-to-width-down/217?cb=20200817185816",
    )

    Villager.create(
        name: "Merengue",
        birthday: "March 19",
        gender: "Female",
        species: "Rhino",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/0/0c/Merengue_NH.png/revision/latest?cb=20200321211014",
    )

    Villager.create(
        name: "Sherb",
        birthday: "January 18",
        gender: "Male",
        species: "Goat",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/1/18/Sherb_NH.png/revision/latest/scale-to-width-down/303?cb=20201127040346",
    )

    Villager.create(
        name: "Diana",
        birthday: "January 4",
        gender: "Female",
        species: "Deer",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/1/1f/Diana_NH.png/revision/latest/scale-to-width-down/310?cb=20200802193316",
    )

    Villager.create(
        name: "Marshal",
        birthday: "September 29",
        gender: "Male",
        species: "Squirrel",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/d/da/Marshal_NH.png/revision/latest/scale-to-width-down/350?cb=20200317171946",
    )

    Villager.create(
        name: "Audie",
        birthday: "August 31",
        gender: "Female",
        species: "Wolf",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/1/1b/Audie_NH.png/revision/latest?cb=20200829012735",
    )

    Villager.create(
        name: "Lucky",
        birthday: "November 4",
        gender: "Male",
        species: "Dog",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/5/59/Lucky_NH.png/revision/latest/scale-to-width-down/275?cb=20200802135150",
    )

    Villager.create(
        name: "Tia",
        birthday: "November 18",
        gender: "Female",
        species: "Elephant",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/0/0d/Tia_NH.png/revision/latest/scale-to-width-down/313?cb=20200802144001",
    )

    Villager.create(
        name: "Zucker",
        birthday: "March 8",
        gender: "Male",
        species: "Octopus",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/7/7f/Zucker_NH.png/revision/latest/scale-to-width-down/274?cb=20200802161141",
    )

    Villager.create(
        name: "Cherry",
        birthday: "May 11",
        gender: "Female",
        species: "Dog",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/3/3e/Cherry_NH.png/revision/latest/scale-to-width-down/300?cb=20200524035737",
    )

    Villager.create(
        name: "Stitches",
        birthday: "February 10",
        gender: "Male",
        species: "Cub",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/5/56/Stitches_NH.png/revision/latest/scale-to-width-down/140?cb=20200413171903",
    )

    Villager.create(
        name: "Judy",
        birthday: "March 10",
        gender: "Female",
        species: "Cub",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/d/d4/Judy_NH.png/revision/latest/scale-to-width-down/270?cb=20200318005830",
    )

    Villager.create(
        name: "Dobie",
        birthday: "February 17",
        gender: "Male",
        species: "Wolf",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/7/76/Dobie_NH.png/revision/latest/scale-to-width-down/250?cb=20200819103512",
    )

    Villager.create(
        name: "Fauna",
        birthday: "March 26",
        gender: "Female",
        species: "Deer",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/9/91/Fauna_NH.png/revision/latest/scale-to-width-down/204?cb=20200624222648",
    )

    Villager.create(
        name: "Raymond",
        birthday: "October 1",
        gender: "Male",
        species: "Cat",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/a/a4/Raymond_NH_1.png/revision/latest/scale-to-width-down/184?cb=20200908002252",
    )

    Villager.create(
        name: "Coco",
        birthday: "March 1",
        gender: "Female",
        species: "Rabbit",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/8/83/Coco_NH.png/revision/latest/scale-to-width-down/258?cb=20200321103716",
    )

    Villager.create(
        name: "Dom",
        birthday: "March 18",
        gender: "Male",
        species: "Sheep",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/7/75/Dom_NH.png/revision/latest/scale-to-width-down/323?cb=20200930023125",
    )

    Villager.create(
        name: "Ketchup",
        birthday: "July 27",
        gender: "Female",
        species: "Frog",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/4/42/Ketchup_NH.png/revision/latest/scale-to-width-down/317?cb=20200802142754",
    )

    Villager.create(
        name: "Ribbot",
        birthday: "February 13",
        gender: "Male",
        species: "Frog",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/9/94/Ribbot_NH.png/revision/latest/scale-to-width-down/288?cb=20200802145154",
    )

    Villager.create(
        name: "Rosie",
        birthday: "February 27",
        gender: "Female",
        species: "Cat",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/6/67/Rosie_NH.png/revision/latest/scale-to-width-down/130?cb=20200324160932",
    )

    Villager.create(
        name: "Julian",
        birthday: "March 15",
        gender: "Male",
        species: "Horse"
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/f/f2/Julian_NH.png/revision/latest/scale-to-width-down/227?cb=20200802154101",
    )

    Villager.create(
        name: "Sprinkle",
        birthday: "February 20",
        gender: "Female",
        species: "Penguin",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/4/44/Sprinkle_NH.png/revision/latest/scale-to-width-down/345?cb=20200802163456",
    )
   
    Villager.create(
        name: "Drago",
        birthday: "February 12",
        gender: "Male",
        species: "Alligator",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/f/f9/Drago_NH.png/revision/latest/scale-to-width-down/340?cb=20200802062031",
    )

    Villager.create(
        name: "Lopez",
        birthday: "August 20",
        gender: "Male",
        species: "Deer",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/5/53/Lopez_NH.png/revision/latest/scale-to-width-down/282?cb=20200803115324",
    )

    Villager.create(
        name: "Bluebear",
        birthday: "June 24",
        gender: "Female",
        species: "Cub"
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/4/49/Bluebear_NH.png/revision/latest/scale-to-width-down/286?cb=20200817185619",
    )

    Villager.create(
        name: "Skye",
        birthday: "March 24",
        gender: "Female",
        species: "Wolf",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/d/d1/Skye_NH.png/revision/latest/scale-to-width-down/248?cb=20200224182217",
    )

    Villager.create(
        name: "Daisy",
        birthday: "November 16",
        gender: "Female",
        species: "Dog",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/9/96/Daisy_NH.png/revision/latest?cb=20200802135104",
    )

    Villager.create(
        name: "Snake",
        birthday: "November 3",
        gender: "Male",
        species: "Rabbit",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/e/ec/Snake_NH.png/revision/latest?cb=20200321203921",
    )

    Villager.create(
        name: "Lionel",
        birthday: "July 29",
        gender: "Male",
        species: "Lion",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/b/bb/Lionel_NH.png/revision/latest/scale-to-width-down/301?cb=20200718074253",
    )

    Villager.create(
        name: "Henry",
        birthday: "September 21",
        gender: "Male",
        species: "Frog",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/2/26/Henry_NH.png/revision/latest/scale-to-width-down/288?cb=20200802145016",
    )

    Villager.create(
        name: "Freya",
        birthday: "December 14",
        gender: "Female",
        species: "Wolf",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/e/ee/Freya_NH.png/revision/latest/scale-to-width-down/250?cb=20200820061634",
    )

    Villager.create(
        name: "Elise",
        birthday: "March 21",
        gender: "Female",
        species: "Monkey",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/0/0c/Elise_NH.png/revision/latest/scale-to-width-down/261?cb=20200802160710",
    )

    Villager.create(
        name: "Cole",
        birthday: "August 10",
        gender: "Male",
        species: "Rabbit",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/f/f6/Cole_NH.png/revision/latest/scale-to-width-down/247?cb=20200803114150",
    )
    
    Villager.create(
        name: "Curt",
        birthday: "July 1",
        gender: "Male",
        species: "Bear",
        image_url: "https://static.wikia.nocookie.net/animalcrossing/images/2/27/Curt_NH.png/revision/latest/scale-to-width-down/200?cb=20200820052841"
    )


puts "Seeding Dream Villagers..."
        10.times do
           DreamVillager.create(player_id: Player.ids.sample, villager_id: Villager.ids.sample)
        end


puts "Seeding User Villagers..."
        10.times do
           UserVillager.create(player_id: Player.ids.sample, villager_id: Villager.ids.sample)
        end

puts "Seeding Villager Personalities..."
        35.times do
           VillagerPersonality.create(villager_id: Villager.ids.sample, personality_id: Personality.ids.sample)
        end

puts "All done seeding! (:"
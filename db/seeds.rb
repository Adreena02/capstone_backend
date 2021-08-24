require 'faker'

puts "Clearing old data..."
Player.destroy_all
Player.reset_pk_sequence
Personality.destroy_all
Personality.reset_pk_sequence
Villager.destroy_all
Villager.reset_pk_sequence
UserVillager.destroy_all
UserVillager.reset_pk_sequence
VillagerPersonality.destroy_all
VillagerPersonality.reset_pk_sequence
DreamVillager.destroy_all
DreamVillager.reset_pk_sequence

puts "Seeding Players..."
    10.times do
        Player.create(
                user_name: Faker::Internet.username,
                email: Faker::Internet.email)
    end

        # usernames = (Faker::Internet.username)
        # emails = (Faker::Internet.email(name: usernames.sample))
        # 10.times do
        #         Player.create(usernames: usernames.sample, emails: emails.sample)
        # end

puts "Seeding Personalities..."
        personality_names = ["normal", "lazy", "uchi", "snooty", "cranky", "jock", "peppy", "smug"]
        8.times do
                Personality.create(name: personality_names.sample)
        end

puts "Seeding Villagers..."
    Villager.create(
        name: "Ankha",
        birthday: "September 22",
        gender: "Girl",
        species: "Cat",
        img_url: "https://aideanimalcrossing.com/wp-content/uploads/2020/10/Neferti.jpg"
    )

    Villager.create(
        name: "Bob",
        birthday: "January 1",
        gender: "Boy",
        species: "Cat",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/2/23/Bob_NewLeaf.png"
    )

    Villager.create(
        name: "Merengue",
        birthday: "March 19",
        gender: "Girl",
        species: "Rhino",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/1/10/Merengue_NewHorizon.png"
    )

    Villager.create(
        name: "Sherb",
        birthday: "January 18",
        gender: "Boy",
        species: "Goat",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/c/c7/NewGoat_1.png",
    )

    Villager.create(
        name: "Diana",
        birthday: "January 4",
        gender: "Girl",
        species: "Deer",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/d/d9/Diana_NewLeaf.png",
    )

    Villager.create(
        name: "Marshal",
        birthday: "September 29",
        gender: "Boy",
        species: "Squirrel",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/d/d8/Marshal_NewHorizon.png",
    )

    Villager.create(
        name: "Audie",
        birthday: "August 31",
        gender: "Girl",
        species: "Wolf",
        img_url: "https://www.belltreeforums.com/attachments/1596688302994-png.299085/",
    )

    Villager.create(
        name: "Lucky",
        birthday: "November 4",
        gender: "Boy",
        species: "Dog",
        img_url: "https://i-ac.db0.company/u/villager/219Lucky-JUL6lg.png",
    )

    Villager.create(
        name: "Pekoe",
        birthday: "May 18",
        gender: "Girl",
        species: "Cub",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/c/ca/Pekoe_NewLeaf.png",
    )

    Villager.create(
        name: "Zucker",
        birthday: "March 8",
        gender: "Boy",
        species: "Octopus",
        img_url: "https://i-ac.db0.company/u/villager/397Zucker-oIjefT.png",
    )

    Villager.create(
        name: "Cherry",
        birthday: "May 11",
        gender: "Girl",
        species: "Dog",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/a/ab/Cherry_NewLeaf.png",
    )

    Villager.create(
        name: "Stitches",
        birthday: "February 10",
        gender: "Boy",
        species: "Cub",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/8/85/Stitches_NewLeaf.png",
    )

    Villager.create(
        name: "Judy",
        birthday: "March 10",
        gender: "Girl",
        species: "Cub",
        img_url: "https://static.wikia.nocookie.net/4d966812-47c4-4933-988c-6f22202e9f69",
    )

    Villager.create(
        name: "Dobie",
        birthday: "February 17",
        gender: "Boy",
        species: "Wolf",
        img_url: "https://pbs.twimg.com/media/EPuN_iAXkAAhK2R.jpg",
    )

    Villager.create(
        name: "Fauna",
        birthday: "March 26",
        gender: "Girl",
        species: "Deer",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/6/61/Fauna_NewLeaf.png",
    )

    Villager.create(
        name: "Raymond",
        birthday: "October 1",
        gender: "Boy",
        species: "Cat",
        img_url: "https://img.game8.co/3251211/137045715311e7e70927f24ad6640e94.png/show",
    )

    Villager.create(
        name: "Coco",
        birthday: "March 1",
        gender: "Girl",
        species: "Rabbit",
        img_url: "https://pbs.twimg.com/media/EPuV_i3U0AAXJt0.jpg",
    )

    Villager.create(
        name: "Dom",
        birthday: "March 18",
        gender: "Boy",
        species: "Sheep",
        img_url: "https://cdn141.picsart.com/330810791026211.png?type=webp&to=min&r=640",
    )

    Villager.create(
        name: "Ketchup",
        birthday: "July 27",
        gender: "Girl",
        species: "Frog",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/a/a3/Ketchup_HD.png?width=325",
    )

    Villager.create(
        name: "Ribbot",
        birthday: "February 13",
        gender: "Boy",
        species: "Frog",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/e/ef/Ribbot_NewLeaf_Official.png",
    )

    Villager.create(
        name: "Rosie",
        birthday: "February 27",
        gender: "Girl",
        species: "Cat",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/1/1f/Rosie_NewLeaf.png",
    )

    Villager.create(
        name: "Julian",
        birthday: "March 15",
        gender: "Boy",
        species: "Horse",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/8/87/Julian_NewLeaf.png",
    )

    Villager.create(
        name: "Sprinkle",
        birthday: "February 20",
        gender: "Girl",
        species: "Penguin",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/d/d4/Sprinkle_HD.png",
    )
   
    Villager.create(
        name: "Drago",
        birthday: "February 12",
        gender: "Boy",
        species: "Alligator",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/6/69/Drago.png",
    )

    Villager.create(
        name: "Lopez",
        birthday: "August 20",
        gender: "Boy",
        species: "Deer",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/6/6d/Lopez_NewLeaf.png",
    )

    Villager.create(
        name: "Bluebear",
        birthday: "June 24",
        gender: "Girl",
        species: "Cub",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/e/e6/Bluebear_-_Animal_Crossing_New_Leaf.png",
    )

    Villager.create(
        name: "Skye",
        birthday: "March 24",
        gender: "Girl",
        species: "Wolf",
        img_url: "https://i-ac.db0.company/u/villager/337Skye-2Xtoo2.png",
    )

    Villager.create(
        name: "Daisy",
        birthday: "November 16",
        gender: "Girl",
        species: "Dog",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/3/36/Daisy_NewLeaf_Official.png",
    )

    Villager.create(
        name: "Snake",
        birthday: "November 3",
        gender: "Boy",
        species: "Rabbit",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/b/b1/Snake_NewHorizon.png",
    )

    Villager.create(
        name: "Lionel",
        birthday: "July 29",
        gender: "Boy",
        species: "Lion",
        img_url: "https://i-ac.db0.company/u/villager/213Lionel-BRQVlk.png",
    )

    Villager.create(
        name: "Henry",
        birthday: "September 21",
        gender: "Boy",
        species: "Frog",
        img_url: "https://i-ac.db0.company/u/villager/174Henry-cMmVJD.png",
    )

    Villager.create(
        name: "Freya",
        birthday: "December 14",
        gender: "Girl",
        species: "Wolf",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/5/5b/Freya_NewHorizon.png",
    )

    Villager.create(
        name: "Elise",
        birthday: "March 21",
        gender: "Girl",
        species: "Monkey",
        img_url: "https://i-ac.db0.company/u/villager/127Elise-zdwXq0.png",
    )

    Villager.create(
        name: "Cole",
        birthday: "August 10",
        gender: "Boy",
        species: "Rabbit",
        img_url: "https://i-ac.db0.company/u/villager/96Cole-ZmG1Br.png",
    )
    
    Villager.create(
        name: "Curt",
        birthday: "July 1",
        gender: "Boy",
        species: "Bear",
        img_url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/b/b3/Curt_NewLeaf.png"
    )

puts "Seeding User Villagers..."
        36.times do
           UserVillager.create(player_id: Player.ids.sample, villager_id: Villager.ids.sample)
        end

puts "Seeding Villager Personalities..."
        35.times do
           VillagerPersonality.create(villager_id: Villager.ids.sample, personality_id: Personality.ids.sample)
        end

puts "Seeding Dream Villagers..."
        15.times do
           DreamVillager.create(player_id: Player.ids.sample, villager_id: Villager.ids.sample)
        end

puts "All done seeding! (:"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profile.create(
  text_one: 'Picture this: It’s November 24, 2020, and it has been five days since the U.S. premiere of the Supernatural finale. You’re devastated, confused. Castiel told Dean Winchester he loved him, but Dean was never given a chance to say if he did too. In fact, the finale treated it like the “I love you” never happened.',
  text_two: 'Then, Warner Brothers LatAm releases the Spanish dub of Supernatural''s ""Despair”, episode 15x18. In it, after Castiel says “te amo” (a romantic “I love you”), Dean Winchester doesn’t say “don’t do this”, like in the U.S. version, he instead says "Yo a ti, Cas" ("I, you, Cas").',
  text_three: "The internet explodes! We are excited and hurt all over again. Hashtags #TheySilencedYou, #TheySilencedUs, #TheySilencedThem start trending on Twitter. The change is blamed on a a ""rogue translator"" from the Latin American translation team, and someone says it was never in the script.",
  text_four: "Why was there a difference? Why was Dean allowed to reciprocate his love in the Spanish version but not in English?",
  text_five: "We propose another question: Why does this keep happening?",
  text_six: "The CW has a history of blatant queer erasure in many of its show, but this is the last straw, and we are tired of it. We are tired of being silenced. So we're telling them to #HaltTheSilence, and you can too.",
  url: "https://www.youtube.com/watch?v=aXI_hdCddNQ"
)

Step.create(
  text: "Unfollow the US CW accounts. This includes the official Supernatural one, and all other CW shows. Do not reply to actors who use official tags."
)

Step.create(
  text: "Stop streaming CW shows immediately. Do you use Netflix, or another streaming service, to watch CW shows? Cancel it. Tell them the deletion of queer content in the U.S. version of Supernatural was allowed in other countries."
)

Step.create(
  text: "Stop engaging on any official hashtags on any major media platform. Start replacing official hashtags with #HaltTheSilence."
)

Step.create(
  text: "Do not buy official CW/WB swag, boxsets, episodes, go to conventions, watch other shows, etc."
)

Step.create(
  text: "Sign up for our newsletter to learn more on how to #HaltTheSilence."
)

Social.create(
  tumblr: 'www.HaltTheSilence.tumblr.com',
  twitter: 'https:/twitter.com/haltthesilence',
  tiktok: 'https://vm.tiktok.com/ZMJCvxoXt/',
  facebook: 'Fb.me/HaltTheSilence',
  instagram: 'https://www.instagram.com/haltthesilence/',
  youtube: 'youtube.com',
  reddit: 'reddit.com'

)

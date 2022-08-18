# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Episode.destroy_all
Race.destroy_all
Review.destroy_all
User.destroy_all

episodes = [
        {
        insta_pic: "https://www.fia.com/sites/default/files/styles/content_details/public/news/main_image/webp.net-resizeimage.jpg?itok=yzNqakBK",
        applepods: "https://podcasts.apple.com/us/podcast/e02-bahrain-grand-prix-2022/id1611983270?i=1000552382842",
        spotify: "https://open.spotify.com/episode/6OFxBwTai4RcIEm3WHM2jI?si=8555dd1441e04cc0",
        blurb: "New cars, new pecking order."
        },
        {
        insta_pic: "https://s3-eu-west-1.amazonaws.com/racingnews-v2-prod/2022/Perez/_1125x633_crop_center-center_85_none/SI202203260419_news.jpg?v=1648370713",
        applepods: "https://podcasts.apple.com/us/podcast/e03-saudi-arabian-grand-prix-2022/id1611983270?i=1000555406869",
        spotify: "https://open.spotify.com/episode/7pbXhpNj6KZ3qyiuhKtQ6N?si=VF9UAtg7SL-Sxj_nuVHTMw",
        blurb: "Our Jeddah Grand Prix coverage is live! Jack makes a pun so bad that Nick is forced to immediately quit the pod."
        },
        {
        insta_pic: "https://www.formula1.com/content/fom-website/en/racing/2022/Australia/_jcr_content/image16x9.img.1536.high.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e04-australian-grand-prix-2022/id1611983270?i=1000556912580",
        spotify: "https://open.spotify.com/episode/0ehCy7KthBdNmTvquS8Gou?si=Qi5tr_t8TUmzrZSMD2fgvg",
        blurb: "We are back! Aussie GP coverage is live. We talk fun facts, the most hated driver, and some more upside down fun."
        },
        {
        insta_pic: "https://d2n9h2wits23hf.cloudfront.net/image/v1/static/6057949432001/9e17ec19-c118-4872-bcc9-aca37d1a5f5f/9cf521cd-c5cd-4459-a30b-7b7c44e72c36/997x516/match/image.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e05-emilia-romagna-grand-prix-2022/id1611983270?i=1000558545433",
        spotify: "https://open.spotify.com/episode/5SYeh4pyxu2LSmRf6AUhC2?si=Z8nQuf0ZTPqtmxfafbHfNQ",
        blurb: "Real Gs move in silence like Emilia Romagna."
        },
        {
        insta_pic: "https://www.formula1.com/content/dam/fom-website/manual/Misc/2022manual/2022Races/MiamiGP/GettyImages-1240451810.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e06-miami-grand-prix-2022/id1611983270?i=1000560517211",
        spotify: "https://open.spotify.com/episode/6aAYKqySCBuKXII5xPpgJv?si=yBB4_ydLR0GlniI5il6xuA",
        blurb: "E. coli and an extra sweaty Lewis Hamilton (y u wearing leather in Miami, bro??)."
        },
        {
        insta_pic: "https://www.formula1.com/content/fom-website/en/racing/2022/Spain/_jcr_content/image16x9.img.1536.high.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e07-spanish-grand-prix-2022/id1611983270?i=1000563299000",
        spotify: "https://open.spotify.com/episode/5JzMlj11CQkTV9Q0FjnPbU?si=u1fGt5QFS5iLtzJKs6rRLg",
        blurb: "What 👏🏼 a 👏🏼 race 👏🏼."
        },
        {
        insta_pic: "https://www.formula1.com/content/dam/fom-website/2018-redesign-assets/Racehub%20header%20images%2016x9/Monaco.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e08-monaco-grand-prix-2022/id1611983270?i=1000564905788",
        spotify: "https://open.spotify.com/episode/4kN62m0emBL89cdPddi21B?si=IulljhXSSPybmXz9dIU-zA",
        blurb: "Monaco…"
        },
        {
        insta_pic: "https://www.formula1.com/content/fom-website/en/racing/2022/Azerbaijan/_jcr_content/image16x9.img.1536.high.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e09-azerbaijan-grand-prix-2022/id1611983270?i=1000566370773",
        spotify: "https://open.spotify.com/episode/5fWBsdh18HNFfbzivH0Qgr?si=tC_fQ-9PQ2ihaTpFw0Xogw",
        blurb: "We may both be wearing black for this episode but we swear to you, this wasn’t on porpoise."
        },
        {
        insta_pic: "https://www.formula1.com/content/dam/fom-website/2018-redesign-assets/Racehub%20header%20images%2016x9/Canada.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e10-canadian-grand-prix-2022/id1611983270?i=1000567156884",
        spotify: "https://open.spotify.com/episode/4DauBmbGqqVCOoEQQjkg3g?si=aYwro4MWQUqu-GFNRffORQ",
        blurb: "We have officially abandoned video, so no more quirky photos of our faces (Yes, this means you’ll need to hang out w us to see what we look like :/). This was the unfortunate cost of an audio upgrade we’ve made that we think you’ll really enjoy!"
        },
        {
        insta_pic: "https://www.formula1.com/content/fom-website/en/racing/2022/Great_Britain/_jcr_content/image16x9.img.1536.high.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e11-british-grand-prix-2022/id1611983270?i=1000568791152",
        spotify: "https://open.spotify.com/episode/4AJ1rZxIMEjr43a5hvmntQ?si=6UF_oqTLQ321jUr57xFMYA",
        blurb: "What. A. Race. Silverstone definitely did not disappoint."
        },
        {
        insta_pic: "https://www.formula1.com/content/dam/fom-website/2018-redesign-assets/Racehub%20header%20images%2016x9/Austria.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e12-austrian-grand-prix-2022/id1611983270?i=1000569663351",
        spotify: "https://open.spotify.com/episode/4PVndgAPWKH9dsek3iCTsh?si=Rcw9yzHxRqiBOzt7q8uBmw",
        blurb: "Things are really starting to heat up…"
        },
        {
        insta_pic: "https://www.formula1.com/content/dam/fom-website/sutton/2022/France/Sunday/1410640812.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e13-french-grand-prix-2022/id1611983270?i=1000571337469",
        spotify: "https://open.spotify.com/episode/065STXKK0s6ByJcg0JpTzz?si=bN6S-rN4T_mz4pEs7RyI8Q",
        blurb: "What do fries, toast, presses, and last weekend’s Grand Prix have in common?"
        },
        {
        insta_pic: "https://www.formula1.com/content/dam/fom-website/2018-redesign-assets/Racehub%20header%20images%2016x9/Hungary.jpg.transform/9col/image.jpg",
        applepods: "https://podcasts.apple.com/us/podcast/e14-hungarian-grand-prix-2022/id1611983270?i=1000574831816",
        spotify: "https://open.spotify.com/episode/7fO20zLLF4CRI9SujJsX25?si=8TXUtizbQd6XATUj82CSZQ",
        blurb: "Spoiler Alert: Ferrari Doesn’t Win"
        }
    ]

races = [
    {
        name: "Bahrain GP",
        date: "03/20",
        episode_id: 1,
        round: 1,
        driver_standings_first: "Charles LeClerc, 26 pts",
        driver_standings_second: "Carlos Sainz, 18 pts",
        driver_standings_third: "Lewis Hamilton, 15 pts",
        constructor_standings_first: "Ferrari, 44 pts",
        constructor_standings_second: "Mercedes, 27 pts",
        constructor_standings_third: "Haas, 10 pts",
        results_first: "Charles Leclerc",
        results_second: "Carlos Sainz",
        results_third: "Lewis Hamilton"
    },
    {
        name: "Saudi Arabian GP",
        date: "03/27",
        episode_id: 2,
        round: 2,
        driver_standings_first: "Charles LeClerc, 45 pts",
        driver_standings_second: "Carlos Sainz, 33 pts",
        driver_standings_third: "Max Verstappen, 25 pts",
        constructor_standings_first: "Ferrari, 78 pts",
        constructor_standings_second: "Mercedes, 38 pts",
        constructor_standings_third: "Red Bull, 37 pts",
        results_first: "Max Verstappen",
        results_second: "Charles Leclerc",
        results_third: "Carlos Sainz"
    },
    {
        name: "Australian GP",
        date: "04/10",
        episode_id: 3,
        round: 3,
        driver_standings_first: "Charles LeClerc, 71 pts",
        driver_standings_second: "George Russel, 37 pts",
        driver_standings_third: "Carlos Sainz, 33 pts",
        constructor_standings_first: "Ferrari, 104 pts",
        constructor_standings_second: "Mercedes, 65 pts",
        constructor_standings_third: "Red Bull, 55 pts",
        results_first: "Charles Leclerc",
        results_second: "Sergio Pérez",
        results_third: "George Russell"
    },
    {
        name: "Emiglia Romagna GP",
        date: "04/24",
        episode_id: 4,
        round: 4,
        driver_standings_first: "Charles LeClerc, 86 pts",
        driver_standings_second: "Max Verstappen, 59 pts",
        driver_standings_third: "Sergio Perez 54 pts",
        constructor_standings_first: "Ferrari, 124 pts",
        constructor_standings_second: "Red Bull, 113 pts",
        constructor_standings_third: "Mercedes, 77 pts",
        results_first: "Max Verstappen",
        results_second: "Sergio Pérez",
        results_third: "Lando Norris"
    },
    {
        name: "Miami GP",
        date: "05/08",
        episode_id: 5,
        round: 5,
        driver_standings_first: "Charles LeClerc, 104 pts",
        driver_standings_second: "Max Verstappen, 85 pts",
        driver_standings_third: "Sergio Perez, 66 pts",
        constructor_standings_first: "Ferrari, 157 pts",
        constructor_standings_second: "Red Bull, 151 pts",
        constructor_standings_third: "Mercedes, 95 pts",
        results_first: "Max Verstappen",
        results_second: "Charles Leclerc",
        results_third: "Carlos Sainz"
    },
    {
        name: "Spanish GP",
        date: "05/22",
        episode_id: 6,
        round: 6,
        driver_standings_first: "Max Verstappen, 110pts",
        driver_standings_second: "Charles LeClerc, 104 pts",
        driver_standings_third: "Sergio Perez, 85 pts",
        constructor_standings_first: "Red Bull, 195 pts",
        constructor_standings_second: "Ferrari, 169 pts",
        constructor_standings_third: "Mercedes, 120 pts",
        results_first: "Max Verstappen",
        results_second: "Sergio Pérez",
        results_third: "George Russell"
    },
    {
        name: "Monaco GP",
        date: "05/29",
        episode_id: 7,
        round: 7,
        driver_standings_first: "Max Verstappen, 125 pts",
        driver_standings_second: "Charles LeClerc, 116 pts",
        driver_standings_third: "Sergio Perez, 110 pts",
        constructor_standings_first: "Red Bull, 235 pts",
        constructor_standings_second: "Ferrari, 199 pts",
        constructor_standings_third: "Mercedes, 134 pts",
        results_first: "Sergio Pérez",
        results_second: "Carlos Sainz",
        results_third: "Max Verstappen"
    },
    {
        name: "Azerbaijan GP",
        date: "06/12",
        episode_id: 8,
        round: 8,
        driver_standings_first: "Max Verstappen, 150 pts",
        driver_standings_second: "Sergio Perez, 129 pts",
        driver_standings_third: "Charles LeClerc, 116 pts",
        constructor_standings_first: "Red Bull, 279 pts",
        constructor_standings_second: "Ferrari, 199 pts",
        constructor_standings_third: "Mercedes, 161 pts",
        results_first: "Max Verstappen",
        results_second: "Sergio Pérez",
        results_third: "George Russell"
    },
    {
        name: "Candaian GP",
        date: "06/19",
        episode_id: 9,
        round: 9,
        driver_standings_first: "Max Verstappen, 175 pts",
        driver_standings_second: "Sergio Perez, 129 pts",
        driver_standings_third: "Charles LeClerc 126 pts",
        constructor_standings_first: "Red Bull, 304 pts",
        constructor_standings_second: "Ferrari, 228 pts",
        constructor_standings_third: "Mercedes, 188 pts",
        results_first: "Max Verstappen",
        results_second: "Carlos Sainz",
        results_third: "Lewis Hamilton"
    },
    {
        name: "British GP",
        date: "07/03",
        episode_id: 10,
        round: 10,
        driver_standings_first: "Max Verstappen, 181 pts",
        driver_standings_second: "Sergio Perez, 147 pts",
        driver_standings_third: "Charles LeClerc, 138 pts",
        constructor_standings_first: "Red Bull, 328 pts",
        constructor_standings_second: "Ferrari, 265 pts",
        constructor_standings_third: "Mercedes, 204 pts",
        results_first: "Carlos Sainz",
        results_second: "Sergio Pérez",
        results_third: "Lewis Hamilton"
    },
    {
        name: "Austrian GP",
        date: "07/10",
        episode_id: 11,
        round: 11,
        driver_standings_first: "Max Verstappen, 208 pts",
        driver_standings_second: "Charles LeClerc, 170 pts",
        driver_standings_third: "Sergio Perez, 151 pts",
        constructor_standings_first: "Red Bull, 359 pts",
        constructor_standings_second: "Ferrari, 303 pts",
        constructor_standings_third: "Mercedes, 237 pts",
        results_first: "Charles Leclerc",
        results_second: "Max Verstappen",
        results_third: "Lewis Hamilton"
    },
    {
        name: "French GP",
        date: "07/24",
        episode_id: 12,
        round: 12,
        driver_standings_first: "Max Verstappen, 233 pts",
        driver_standings_second: "Charles LeClerc, 170 pts",
        driver_standings_third: "Sergio Perez, 163 pts",
        constructor_standings_first: "Red Bull, 396 pts",
        constructor_standings_second: "Ferrari, 314 pts",
        constructor_standings_third: "Mercedes, 270 pts",
        results_first: "Max Verstappen",
        results_second: "Lewis Hamilton",
        results_third: "George Russell"
    },
    {
        name: "Hungaian GP",
        date: "07/31",
        episode_id: 13,
        round: 13,
        driver_standings_first: "Max Verstappen, 258 pts",
        driver_standings_second: "Charles LeClerc, 178 pts",
        driver_standings_third: "Sergio Perez, 173 pts",
        constructor_standings_first: "Red Bull, 431 pts",
        constructor_standings_second: "Ferrari, 334 pts",
        constructor_standings_third: "Mercedes, 304 pts",
        results_first: "Max Verstappen",
        results_second: "Lewis Hamilton",
        results_third: "George Russel"
    }
]

puts "seeding episodes"
episodes.each do |o|
    Episode.create!(
        insta_pic: o[:insta_pic], 
        applepods: o[:applepods],
        spotify: o[:spotify],
        blurb: o[:blurb]
    )
end
puts "seeding episodes complete"

puts "seeding races"
races.each do |o|
    Race.create(
        name: o[:name],
        date: o[:date],
        episode_id: o[:episode_id],
        round: o[:round],
        driver_standings_first: o[:driver_standings_first],
        driver_standings_second: o[:driver_standings_second],
        driver_standings_third: o[:driver_standings_third],
        constructor_standings_first: o[:constructor_standings_first],
        constructor_standings_second: o[:constructor_standings_second],
        constructor_standings_third: o[:constructor_standings_third],
        results_first: o[:results_first],
        results_second: o[:results_second],
        results_third: o[:results_third]
    )
end
puts "seeding races complete"

puts "seeding users"

30.times do
    User.create!(
        username: Faker::Name.first_name,
        password_digest: "1234"
    )
end

puts "seeding reviews"

150.times do
    Review.create!(
        user_id: User.all.ids.sample,
        episode_id: Episode.all.ids.sample,
        comment: Faker::TvShows::RickAndMorty.quote,
        rating: rand(5)
    )
end

puts "seeding users"



puts "seeding complete"
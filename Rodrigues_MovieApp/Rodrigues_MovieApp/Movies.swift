//
//  Movies.swift
//  Rodrigues_MovieApp
//
//  Created by Vinicius Rodrigues on 11/18/24.
//

import Foundation

struct Movies {
    let genre: String
    let list_Array: [MovieList]
}

struct MovieList {
    let movieName: String
    let movieImage: String
    let movieInfo: String
}

let actionMovies = [
    MovieList(movieName: "The Terminator", movieImage: "the terminator", movieInfo: "The Terminator is a 1984 science fiction action film about a cyborg assassin sent back in time to kill a young woman who will give birth to the leader of the human resistance against a future war with machines"),
    MovieList(movieName: "Casino Royale 007", movieImage: "casino royale 7", movieInfo: "After earning a licence to kill, secret agent James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casino Royale, in Montenegro."),
    MovieList(movieName: "The Karate Kid", movieImage: "the karate kid", movieInfo: "Recently relocated from NJ to LA, Daniel becomes the target of a gang of Cobra Kai dojo students. When Mr. Miyagi saves him with expert Karate skills, Daniel convinces him to teach him to defend himself, and put his bullies in their place"),
    MovieList(movieName: "Real Steel", movieImage: "real steel", movieInfo: "Real Steel is a 2011 movie about a former boxer who teams up with his estranged son to build and train a championship robot in a near-future where robot boxing is a top sport"),
    MovieList(movieName: "Die Hard", movieImage: "die hard", movieInfo: "A New York City police officer tries to save his estranged wife and several others taken hostage by terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.")
]

let dramaMovies = [
    MovieList(movieName: "GoodFellas", movieImage: "goodfellas", movieInfo: "The lowly, blue-collar side of New York's Italian mafia is explored in this crime biopic of wiseguy Henry Hill. As he makes his way from strapping young petty criminal, to big-time thief, to middle-aged cocaine addict and dealer, the film explores in detail the rules and traditions of organized crime."),
    MovieList(movieName: "City of God", movieImage: "city of god", movieInfo: "The film offers an unflinching look at gang life in the City of God, as it follows the favela through three decades; the 60's, 70's and 80's, and shows how violence just spirals into more violence with the disturbingly high amounts of violence in the favela, most involving teenagers and children."),
    MovieList(movieName: "The Godfather", movieImage: "the godfather", movieInfo: "A violent, emotionally charged exploration of a Mafia family, The Godfather is a mythic gangster film, but it is also the story of a father and his sons. Marlon Brando won the Academy Award for best actor for his portrayal of the title capo, Vito Corleone."),
    MovieList(movieName: "Forrest Gump", movieImage: "forrest gump", movieInfo: "This film is about the life of an Alabama man with an I.Q. of 75. He found love at a young age and went through a lot of adventures through the 50's, 60's and 70's to make his love real, to Find God, and to enjoy life."),
    MovieList(movieName: "12 Angry Men", movieImage: "12 angry men", movieInfo: "The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.")
]

let horrorMovies = [
    MovieList(movieName: "Chucky", movieImage: "chucky", movieInfo: "Chucky is portrayed as a vicious serial killer who, as he bleeds out from a gunshot wound, transfers his soul into a Good Guy doll and continuously tries to transfer it to a human body. The character has become one of the most recognizable horror icons and has been referenced numerous times in popular culture"),
    MovieList(movieName: "The Exorcist", movieImage: "the exorcist", movieInfo: "The story chronicles a single mother's struggle to save her daughter from a mysterious ailment, later revealed to be demonic possession. She enlists the help of two Roman Catholic priests, who attempt to perform an exorcism."),
    MovieList(movieName: "It", movieImage: "it", movieInfo: "When young children in the little town Derry, Maine goes missing a group of seven kids find out that the killer is not a man. The killer is the evil clown Pennywise who can shapeshift into the thing you are most afraid of. The kids, also known as the Losers Club, decide to fight and kill It. But how can you fight something who knows all your biggest fears?"),
    MovieList(movieName: "The Shining", movieImage: "the shining", movieInfo: "The film presents the descent into insanity of a recovering alcoholic and aspiring novelist (Nicholson) who takes a job as winter caretaker for a haunted resort hotel with his wife (Duvall) and clairvoyant son (Lloyd)."),
    MovieList(movieName: "Smile", movieImage: "smile", movieInfo: "The film stars Sosie Bacon as a therapist who witnesses the bizarre suicide of a patient, then experiences increasingly disturbing and daunting experiences that lead her to believe she is experiencing something supernatural.")
]

let comedyMovies = [
    MovieList(movieName: "You Don't Mess with the Zohan", movieImage: "zohan", movieInfo: "Zohanele Zohan Dvir is an Israeli counter-terrorist commando reputed for his promiscuity and superhuman traits. Despite his success, he is tired of Israel's everlasting conflict; he dreams of leaving the military to become a hairstylist for John Paul Mitchell Systems in the United States, but his parents disapprove of him."),
    MovieList(movieName: "Ted", movieImage: "ted", movieInfo: "When John Bennett (Mark Wahlberg) was a little boy, he made a wish that Ted (Seth MacFarlane), his beloved teddy bear, would come alive. Thirty years later, foul-mouthed Ted is still John's constant companion, much to the chagrin of Lori (Mila Kunis), John's girlfriend."),
    MovieList(movieName: "Grown Ups", movieImage: "grown ups", movieInfo: "The film tells the story of five lifelong friends who, after winning their junior high school basketball championship in 1978, reunite three decades later for a 4th of July weekend after learning about the sudden death of their former coach."),
    MovieList(movieName: "Bean", movieImage: "bean", movieInfo: "Well-meaning, yet clumsy and destructive Mr. Bean works as a security guard at the National Gallery in London. The gallery's board of directors, who despise Bean for his laziness, attempt to fire him but are blocked by the Gallery's sentimental chairman."),
    MovieList(movieName: "Vacation", movieImage: "vacation", movieInfo: "A vacation movie typically depicts a family embarking on a road trip or holiday getaway, often encountering comedic mishaps and challenges as they navigate new environments, strained relationships, and unexpected situations, usually with the goal of reconnecting and creating memorable experiences despite the chaos.")
]

var moviesInfo = [
    Movies(genre: "Drama", list_Array: dramaMovies),
    Movies(genre: "Action", list_Array: actionMovies),
    Movies(genre: "Horror", list_Array: horrorMovies),
    Movies(genre: "Comedy", list_Array: comedyMovies)
]

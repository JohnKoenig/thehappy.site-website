import Vapor
import Foundation

func routes(_ app: Application) throws {

    app.get ("about") { req in
        //let myTitle = "Welcome!"
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.timeZone = TimeZone(abbreviation: "EST")
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        let myDate = dateFormatter.string(from: Date())
        return req.view.render("standard", ["title": "Swift on Vapor!", "body": myDate])
    }
    
    app.get { req in
        let strResponse2 :Set = ["Great!",
                                 "Super!",
                                 "Amazing!",
                                 "Wow!",
                                 "The Best!",
                                 "Crushing It!",
                                 "The GOAT!",
                                 "Unbelievable!",
                                 "Fantastic!",
                                 "The Bee's Knees!",
                                 "The Coolest!",
                                 "Terrific!",
                                 "Spectacular!",
                                 "Spectacle to Behold!"
                                 ]
        
        return req.view.render("happy", ["body": strResponse2.randomElement()])
    }
      
    app.get ("challenge") { req in
        let strChallenge :Set = ["Make someone smile.",
                                 "Give a compliment.",
                                 "Clean an area someone else uses.",
                                 "Bring someone a coffee, tea, or water.",
                                 "Help someone finish a chore.",
                                 "Send someone a complementary letter, email, or text message.",
                                 "Send someone a small gift card with a note.",
                                 "Call a family member you haven't spoken to in a while.",
                                 "Ask someone about their family.",
                                 "Complement a coworker to their supervisor."
                                 ]
        
        let strBGColor: Set = ["#ffea6c",
                               "#54fffb",
                               "#e7b2ff",
                               "#89ffcc"
                               ]
        
        return req.view.render("challenge", ["body": strChallenge.randomElement(),"bgcolor": strBGColor.randomElement()])
    }
}

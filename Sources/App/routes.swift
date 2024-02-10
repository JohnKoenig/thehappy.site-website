import Vapor
import Foundation

func routes(_ app: Application) throws {

    app.get { req in
        //let myTitle = "Welcome!"
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.timeZone = TimeZone(abbreviation: "EST")
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        let myDate = dateFormatter.string(from: Date())
        return req.view.render("standard", ["title": "Swift on Vapor!", "body": myDate])
    }
    
    app.get ("happy") { req in
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
        //return req.view.render("happy", ["body": strResponse[Int.random(in:1..<10)]])
    }
    
}

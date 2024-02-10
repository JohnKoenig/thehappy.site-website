import Vapor
import Foundation

func routes(_ app: Application) throws {

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
        //return req.view.render("happy", ["body": strResponse[Int.random(in:1..<10)]])
    }
    
}

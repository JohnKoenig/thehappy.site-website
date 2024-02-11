import Vapor
import Foundation

func routes(_ app: Application) throws {

    app.get { req in
        let strResponse :Set = ["Great!",
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
        
        let strBGColor: Set = ["#ff9a55",
                               "#ffea6c",
                               "#54fffb",
                               "#e7b2ff",
                               "#89ffcc"
                               ]
        
        return req.view.render("happy", ["body": strResponse.randomElement(),"bgcolor": strBGColor.randomElement()])
    }
    
    app.get ("goodnews") { req in
        return req.view.render("goodnews", ["body": "1"])
    }
    
}

import UIKit


func exercise() {
    struct User {
        let Username: String
        let Email: Optional<Any>
        let Followers: Int
        var isActive: Bool
        
        init(Username:String, Email:Optional<Any>, Followers:Int, isActive:Bool) {
            self.Username = Username
            self.Email = Email
            self.Followers = Followers
            self.isActive = isActive
        }
        func logStatus() { if isActive == true {
            print ("\(Username) is working hard!)")
        }
            else {
                print ("\(Username) has left this world...)")
            }
        }
        
    }

    var richard = User(Username: "Rich", Email: "richard69@gmail.com", Followers: 0, isActive: false)
    richard.logStatus()
    
    
    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(Username: "Elon", Email: "elon@tesla.com", Followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.Username) on \(musk.Email!) ...")
    print("\(musk.Username) has \(musk.Followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
    
}
 

exercise()

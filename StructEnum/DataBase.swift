
import Foundation

class DataBase {
    
    var users: [User] = []
    
    init(users: [User]) {
        self.users = users
    }
    
    func showAllUsersInfo () {
        for user in users {
            let userPhoneNumber = "\(user.countryCode.rawValue)\(user.phoneNumber)"
            print(user.firstName,user.lastName,userPhoneNumber)
        }
    }
    
    func showInfoByCountryCode (countryCode: Code) {
        for user in users {
            if user.countryCode == countryCode {
                let userPhoneNumber = "\(user.countryCode.rawValue)\(user.phoneNumber)"
                print(user.firstName,user.lastName,userPhoneNumber)
            }
        }
    }
}

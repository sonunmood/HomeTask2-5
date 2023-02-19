
import Foundation

var database = DataBase(users: [])

for _ in 1...3 {
    
    print("Введите имя")
    let name = readLine()!
    
    print("Введите фамилию")
    let name2 = readLine()!
    
    print("Выберите страну")
    let country = readLine()!
    var chosenCountry = Code.kyrgyzstan
    
    switch country {
    case "kyrgyzstan": chosenCountry = Code.kyrgyzstan
    case "china": chosenCountry = Code.china
    case "russia": chosenCountry = Code.russia
    case "turkey": chosenCountry = Code.turkey
    default:
        ()
    }
    
    print("Введите номер")
    let phoneNumber = Int(readLine()!)!
    
    let user = User(firstName: name, lastName: name2, phoneNumber: phoneNumber, countryCode: chosenCountry)
    
    database.users.append(user)
    
    database.showAllUsersInfo()
    
    database.showInfoByCountryCode(countryCode:.china)
}

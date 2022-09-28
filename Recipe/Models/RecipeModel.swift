//
//  RecipeModel.swift
//  Recipe
//
//  Created by Buğra on 26.09.2022.
//

import Foundation


enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe : Identifiable {
    let id = UUID()
    let name : String
    let image : String
    let description : String
    let ingredients : String
    let directions : String
    let category : Category.RawValue
    let datePublished : String
    let url : String
}

extension Recipe {
    static let all: [Recipe] = [
    Recipe(
        name: "Beyaz Peynirli Fırında Makarna",
        image: "https://cdn.yemek.com/mncrop/620/388/uploads/2014/06/beyaz-peynirli-firin-makarna-son-yemekcom.jpg",
        description: "Makarna başlı başına gözde bir yiyecek. Üzerine bir de beyaz peynir ilavesiyle fırınlandığını ve biraz bekletildiğinde adeta dilimlenebilecek bir börek halini aldığını düşünün. Bir su böreği yiyormuş gibi hissedeceğiniz bu makarna tarifi damaklarınızı şenlendirecek. Eğer beyaz peynirden hoşlanmıyorsanız sevdiğiniz başka peynirler ile de pişirebilirsiniz.",
        ingredients: "1/2 paket fırın makarna\n250 gr beyaz peynir\n1/2 demet maydanoz",
        directions: "",
        category: "Main",
        datePublished: "2021-09-26",
        url: "https://yemek.com/tarif/beyaz-peynirli-firinda-makarna/"),
    Recipe(
        name: "Tel Şehriyeli Çıtır Patates Tarifi",
        image: "https://cdn.yemek.com/mncrop/620/388/uploads/2022/05/tel-sehriyeli-patates-yemekcom.jpg",
        description: "En sevdiğiniz atıştırmalıklara yenisini eklemeye hazır olun. Dışı tel şehriye kaplı patates topları yapıyor, içine de akışkan bir kaşar peyniri saklıyoruz. Çıtır çıtır yenecek, soslara bana bana lezzeti çıkacak nefis bir lezzete ulaşıyoruz. Toplamda 30-35 dakikada sofranıza gelecek bu pratik tarif vejetaryen beslenenler için de ideal. Kısa sürede enfes lezzete erişebileceğiniz bir tarif arıyorsanız tel şehriyeli çıtır patates tam size göre.",
        ingredients: "1 Su Bardağı Tel Şehriye\n4 adet patates",
        directions: "",
        category: "Snack",
        datePublished: "2021-09-26",
        url: "https://yemek.com/tarif/tel-sehriyeli-citir-patates/"),
    Recipe(
        name: "Urfa'nın En Sevilenlerinden: Bostana Salatası Tarifi",
        image: "https://cdn.yemek.com/mncrop/620/388/uploads/2021/09/bostana-salatasi-one-cikan.jpg",
        description: "Şanlıurfa mutfağından çıkan lezzetler saymakla bitmez. Urfa kebabından çiğ köftesine, patlıcan kebabından kelle paça çorbasına kadar her yemeğin tek lokması gönülleri sarmaya yeterlidir. Genellikle bol et kullanılan yemekleri meşhur olsa da, ana yemeklerle servis edilen yancıları ve salataları da oldukça meşhurdur. Bir ana yemeği en üst noktaya taşıyan en önemli şeylerden biri de bu yan yemeklerdir hiç şüphesiz!",
        ingredients: "6 adet domates\n2 adet salatalık\n1/2 adet kuru soğan (ya da 1 küçük soğan)",
        directions: "",
        category: "Salad",
        datePublished: "2021-09-26",
        url: "https://yemek.com/tarif/bostana-salatasi/")
    ]
}

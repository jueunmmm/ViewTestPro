//
//  Drinks.swift
//  ViewTestPro
//
//  Created by Jueun Moon on 2023/05/08.
//

//drinks: [
//    {
//    idDrink: "11007",
//    strDrink: "Margarita",
//    strDrinkAlternate: null,
//    strTags: "IBA,ContemporaryClassic",
//    strVideo: null,
//    strCategory: "Ordinary Drink",
//    strIBA: "Contemporary Classics",
//    strAlcoholic: "Alcoholic",
//    strGlass: "Cocktail glass",
//    strInstructions: "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.",
//    strInstructionsES: null,
//    strInstructionsDE: "Reiben Sie den Rand des Glases mit der Limettenscheibe, damit das Salz daran haftet. Achten Sie darauf, dass nur der äußere Rand angefeuchtet wird und streuen Sie das Salz darauf. Das Salz sollte sich auf den Lippen des Genießers befinden und niemals in den Cocktail einmischen. Die anderen Zutaten mit Eis schütteln und vorsichtig in das Glas geben.",
//    strInstructionsFR: null,
//    strInstructionsIT: "Strofina il bordo del bicchiere con la fetta di lime per far aderire il sale.
//    Avere cura di inumidire solo il bordo esterno e cospargere di sale.
//    Il sale dovrebbe presentarsi alle labbra del bevitore e non mescolarsi mai al cocktail.
//    Shakerare gli altri ingredienti con ghiaccio, quindi versarli delicatamente nel bicchiere.",
//    strInstructionsZH-HANS: null,
//    strInstructionsZH-HANT: null,
//    strDrinkThumb: "https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg",
//    strIngredient1: "Tequila",
//    strIngredient2: "Triple sec",
//    strIngredient3: "Lime juice",
//    strIngredient4: "Salt",
//    strIngredient5: n

import Foundation

// JSON을 받을 VO의 타입은 항상 Codabl
struct Drinks: Codable {
    var drinks: [Drink]
}

struct Drink: Codable {
    let strDrink: String?
    let strInstructions: String?
    let strDrinkThumb: String?
}

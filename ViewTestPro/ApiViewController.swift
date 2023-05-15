//
//  ApiViewController.swift
//  ViewTestPro
//
//  Created by Jueun Moon on 2023/04/29.
//

import UIKit
import Kingfisher

class ApiViewController: UIViewController {
    
    @Published var searchText: String = ""
    
    @IBOutlet weak var drinkNm: UILabel!
    @IBOutlet weak var drinkInstr: UILabel!
    @IBOutlet weak var drinkImg: UIImageView!
    
    @IBOutlet weak var stackVC: UIStackView!
    
    var drinksArr: [Drink]?
    
//    func request() async {
//          guard searchText != "" else { return }
//          // URLComponents 객체 생성
//          var components = URLComponents(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php")!
//          // url에 쿼리 스트링 추가하기
//          components.queryItems = [URLQueryItem(name: "s", value: searchText)]
//          // 쿼리스트링이 붙은 url값 얻을 수 있음
//          let url = components.url!
//
//          let request = URLRequest(url: url)
//          guard let (data, _) = try? await URLSession.shared.data(for: request) else { return }
//          guard let drinks = try? JSONDecoder().decode(Drinks.self, from: data) else { return }
//          DispatchQueue.main.async {
//              self.drinks = drinks.drinks
//          }
//      }
     
    // IndexViewController에서 버큰 클릭 > stackView화면 호출 > 호출 시 API통신 (데이터 로드)
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        fetchJOSN()
        
    }
    
    func fetchJOSN() {
        
        var components = URLComponents(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php")!
        components.queryItems = [URLQueryItem(name: "s", value: "margarita")]
        let url = components.url!
//        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita") else {
//            return
//        }
        print("url: ", url)
        
        //data task
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {return}
            
            do
            {   // JSON 데이터 받아오기
                let drinksInfo = try JSONDecoder().decode(Drinks.self, from: data)
                print("Drinks", drinksInfo)
                
                self.drinksArr = drinksInfo.drinks
                let imgURL = URL(string: drinksInfo.drinks[0].strDrinkThumb ?? "")
                
                // [weak self] in : 메모리를 관리하는 방식 , 주로 class타입에서 사용, 비동기 방식인 경우
                // 상호참조로 인해 메모리에서 삭제되지 않는 것을 방지
                DispatchQueue.main.async { [weak self] in
                    self?.drinkNm.text = drinksInfo.drinks[0].strDrink
                    self?.drinkInstr.text = drinksInfo.drinks[0].strInstructions
                    self?.drinkImg.kf.setImage(with: .network(imgURL!))
                }
                    
            
                
            } catch {
                print("Error", error)
            }
            
        }.resume()
    }
    
    // json파일 저장하기
    func saveJsonData(data: Drinks) {
        let JSONEncoder = JSONEncoder()
        
        do{
            let encodeData = try JSONEncoder.encode(data)
            
            guard let documentDirUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {return}
            let fileUrl = documentDirUrl.appendingPathComponent("drinkInfo.json")
            
            do{
                try encodeData.write(to: fileUrl)
            } catch {
                print(error)
            }
        } catch {
            print(error)
        }
    }
    
}

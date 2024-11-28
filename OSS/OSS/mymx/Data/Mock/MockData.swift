//
//  MockData.swift
//  mymx
//
//  Created by ice on 2024/11/20.
//

import Foundation

class MockData{
    var photo = Photo(
        id: "19815418020",
        author_id: "3326512",
        name: "heihei",
        avatar: "http://p9-tc-sign.byteimg.com/tuchong-avatar/ll_3326512_5~tplv-5iz1hipi7z-image.jpeg?rk3s=ab7029e6&x-expires=1718964382&x-signature=yR5m0uGWeaZjiP0thw1YFAgSdkA%3D",
        title_image: "https://photo.tuchong.com/3326512/lr/936199158.webp",
        images: [
            Photo.Image(imageUrl: "https://photo.tuchong.com/3326512/lr/936199158.webp", width: 599, height: 900)
        ],
        title: "hi",
        content: "hello",
        published_at: "2024-06-21 13:51:02")
    
    var poetryWeatherResult: PoetryWeatherResult = load("poetry_weather.json")
    
    var imageUrl = "https://6963-icemono-1giecaaj02676f6a-1304448608.tcb.qcloud.la/images/banner/img_gg5280mm.JPG?sign=5b23ecfdc1d68cd4160d888627521c53&t=1722019551"
    
   
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch  {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
}




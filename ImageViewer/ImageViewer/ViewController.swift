//
//  ViewController.swift
//  ImageViewer
//
//  Created by gaeun joo on 2022/03/31.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1    //이미지 뷰어에 나타날 이미지의 순서를 저장하고 비교할 변수
    var maxImage = 6    //이미지 최대 개수(6개)를 기준으로 비교할 숫자
    var imageFlower: UIImage?   //이미지 뷰어에 나타날 이미지 UIImage 타입의 변수
    
    @IBOutlet var imgView: UIImageView! //이미지 뷰에 대한 아울렛 변수
    @IBOutlet var prevPage: UIButton!   //버튼에 대한 아울렛 변수
    @IBOutlet var nextPage: UIButton!   //버튼에 대한 아울렛 변수
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageFlower = UIImage(named: "1.png")   //imageFlower에 "1.png" 이미지를 할당
        
        imgView.image = imageFlower //위에서 할당한 imageFlower이미지를 imgView에 할당
    }
    
    //[이전]버튼에 대한 액션 함수
    @IBAction func goprevPage(_ sender: UIButton) {
        numImage = numImage - 1 //numImage 변수를 1 줄임
        
        if (numImage > maxImage) {  //numImage가 maxImage보다 크다면, 첫번째 사진이 보이게 numImage = 1
            numImage = 1
        }
        
        if (numImage < 1) { //numImage가 1보다 작다면, 마지막 사진이 보이게 numImage = maxImage
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"   //imageName을 numImage.png 형식으로 변경
        
        imgView.image = UIImage(named: imageName)   //imgView에 수정된 imageName을 할당
    }
    @IBAction func gonextPage(_ sender: UIButton) {
        numImage = numImage + 1 //numImage 변수를 1 늘임
        
        if (numImage > maxImage) {  //numImage가 maxImage보다 크다면, 첫번째 사진이 보이게 numImage = 1
            numImage = 1
        }
        
        if (numImage < 1) { //numImage가 1보다 작다면, 마지막 사진이 보이게 numImage = maxImage
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"   //imageName을 numImage.png 형식으로 변경
        
        imgView.image = UIImage(named: imageName)   //imgView에 수정된 imageName을 할당
    }
    

}


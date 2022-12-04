//
//  ViewController.swift
//  SocialLogin
//
//  Created by 김유빈 on 2022/11/25.
//

import UIKit
import KakaoSDKUser

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func kakaoLoginButtonTouchUpInside(_ sender: UIButton) {
        // 카카오톡으로 로그인 하기
        /*
        // 카카오톡 설치 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")
                    //do something
                    _ = oauthToken
                }
         }
         */
        // 카카오 계정으로 로그인 하기
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
            if let error = error {
                print(error)
            }
            else {
                print("loginWithKakaoTalk() success.")
                _ = oauthToken
            }
        }
    }
}

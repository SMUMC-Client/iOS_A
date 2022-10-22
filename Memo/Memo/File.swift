//
//  File.swift
//  Memo
//
//  Created by 김유빈 on 2022/10/07.
//

import Foundation

class Memo {
    var content: String // 새로운 메모
    var insertData: Date // 메모 저장 날짜
    
    init(content: String) {
        self.content = content
        insertData = Date()
    }
    
    // table view에 메모를 표시하기 위한 dummy data
    static var dummyMemoList = {
        Memo(content: "week1 workbook")
        Memo(content: "week2 workbook")
    }
}

//
//  MeetupFeedTableDataProvider.swift
//  BrowseMeetup
//
//  Created by Ziad on 12/18/16.
//  Copyright © 2016 Intensify Studio. All rights reserved.
//

import Foundation
import AsyncDisplayKit

class MeetupFeedTableDataProvider: NSObject, ASTableDataSource {
    
    //ASTableDataSource : UITableViewDataSource와 같은 역할로 예상
    //ASTableDelegate: UITableViewDelegate와 같은 역할
    
    var _groups: [Group]? // 선언한 데이터모델
    weak var _tableNode: ASTableNode? // UITableView
    
    ///--------------------------------------
    // MARK - Table data source
    ///--------------------------------------
    
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return _groups?.count ?? 0
    }
    
    // cellForRowAt
    func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
        
        let group = _groups![indexPath.row]
        let cellNodeBlock = { () -> ASCellNode in
            return GroupCellNode(group: group)
        }
        return cellNodeBlock
    }
    
    ///--------------------------------------
    // MARK - Helper Methods
    ///--------------------------------------
    
    func insertNewGroupsInTableView(_ groups: [Group]) {
        _groups = groups
        
        let section = 0
        var indexPaths = [IndexPath]()
        groups.enumerated().forEach { (row, group) in
            let path = IndexPath(row: row, section: section)
            indexPaths.append(path)
        }
        _tableNode?.insertRows(at: indexPaths, with: .none)
    }
}

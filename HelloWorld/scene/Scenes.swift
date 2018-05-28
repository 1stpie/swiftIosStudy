//
//  Scenes.swift
//  HelloWorld
//
//  Created by Macbook Pro on 2018. 5. 17..
//  Copyright © 2018년 Min. All rights reserved.
//

import Foundation

class  Scenes {
    public struct TableRowData {
        var title: String
        var storyBoardId: String
        
        init(_ title:String, _ storyBoardId: String){
            self.title = title
            self.storyBoardId = storyBoardId
        }
    }
    
    //[key value and title : storyBoard ID]
    public static let lists: Array<Scenes.TableRowData> = [
        Scenes.TableRowData("UICollectionView","collectionViewController"),
        Scenes.TableRowData("UIStackView", "stackViewController"),
        Scenes.TableRowData("UIScrollView", "scrollViewController"),
        Scenes.TableRowData("UIWebkitView", "webkitViewTestContoller"),
        Scenes.TableRowData("Label, TextField, TextView", "LabelTextFieldTestController"),
        Scenes.TableRowData("NavigationBar", "NavigationBarTestController"),
        Scenes.TableRowData("SearchBar", "SearchBarTestController"),
        Scenes.TableRowData("Tabbar, ToolBar", "TabbarTestController"),
       
    ]
}

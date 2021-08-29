//
//  ListViewModel.swift
//  Playground
//
//  Created by user204215 on 8/29/21.
//

import Foundation

class ListViewModel {
    private var state: ListState
     
    
    init(){
        state = None()
    }
    
    func loadData(){
        Networking.getJSONResult("https://reqres.in/api/users?page=2", Pages.self,
                                 onCompleted: onCompleted,
                                 onError: onError)
    }
    
    private func onCompleted(pages: Pages){
        
    }
    
    private func onError(string: String){
        
    }
    
    func getState() -> ListState{
        return state
    }
}

protocol ListState{}

class None: ListState{}

class Loading: ListState{}

class Loaded: ListState {
    let pages: Pages
    init(pages: Pages) {
        self.pages = pages
    }
}

class Error: ListState {
    let error: String
    init(error : String) {
        self.error = error
    }
}

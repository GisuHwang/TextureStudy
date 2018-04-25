//
//  MeetupFeedInteractor.swift
//  BrowseMeetup
//
//  Created by Ziad on 10/23/16.
//  Copyright © 2016 Intensify Studio. All rights reserved.
//

import Foundation

// protocol 상속
final class MeetupFeedInteractor: MeetupFeedInteractorInput {
    
    var dataManager: MeetupFeedDataManager?
    
    var output: MeetupFeedInteractorOutput?
    
    // delegate method
    func findGroupItemsNearby() {
        dataManager?.searchForGroupNearby(completion: output!.foundGroupItems)
        
    }
}

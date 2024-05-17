//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let story = [
        Story(
            text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice_1: "I'll hop in. Thanks for the help!", goToThisIfChoosed1: 2,
            choice_2: "Better ask him if he's a murderer first.", goToThisIfChoosed2: 1
            ),
        Story(
            text: "He nods slowly, unfazed by the question.",
            choice_1: "At least he's honest. I'll climb in.", goToThisIfChoosed1: 2,
            choice_2: "Wait, I know how to change a tire.", goToThisIfChoosed2: 3
                ),
        Story(
            text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice_1: "I love Elton John! Hand him the cassette tape.", goToThisIfChoosed1: 5,
            choice_2: "It's him or me! You take the knife and stab him.", goToThisIfChoosed2: 4
                ),
        Story(
            text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice_1: "The", goToThisIfChoosed1: 0,
            choice_2: "End", goToThisIfChoosed2: 0
                ),
        Story(
            text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice_1: "The", goToThisIfChoosed1: 0,
            choice_2: "End", goToThisIfChoosed2: 0
                ),
        Story(
            text: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice_1: "The", goToThisIfChoosed1: 0,
            choice_2: "End", goToThisIfChoosed2: 0
                )
        

    ]
    
    var storyNumber = 0
    
    func storyUploader() -> String {
        return story[storyNumber].text
    }
    
    func choice_1Uploader() -> String {
        return story[storyNumber].choice_1
    }
    
    func choice_2Uploader() -> String {
        return story[storyNumber].choice_2
    }
    
    mutating func nextStory(userChoice: String) {
        let current = story[storyNumber]
        if userChoice == current.choice_1 {
            storyNumber = story[storyNumber].goToThisIfChoosed1
        }
        else {
            storyNumber = story[storyNumber].goToThisIfChoosed2
        }
    }
}


//
//  RecognitionSpec.swift
//  LatchCommons
//
//  Created by Travis Holt on 4/27/16.
//  Copyright © 2016 Travis Holt. All rights reserved.
//

import Quick
import Nimble
@testable import LatchCommons

class RecognitionSpec: QuickSpec {
    
    override func spec() {
        describe("init()") { 
            it("creates a recgnition") {
                let recognition = Recognition()
                expect(recognition).to(beTruthy())
            }
        }
        
        describe("greet()") {
            var recognition: Recognition!
            beforeEach() {
                recognition = Recognition()
            }
            
            it("returns 'Hello'") {
                let greeting = recognition.greet()
                expect(greeting).to(match("Hello"))
            }
        }
    }

}

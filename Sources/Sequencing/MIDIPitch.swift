//
//  MIDIPitch.swift
//  Gong
//
//  Created by Daniel Clelland on 25/06/17.
//  Copyright © 2017 Daniel Clelland. All rights reserved.
//

import Foundation

// MARK: Pitch setters

extension Array where Element == MIDINote {
    
    public func setPitch(_ pitch: Int) -> [MIDINote] {
        return mapPitch { _ in
            return pitch
        }
    }
    
    public func mapPitch(_ transform: (Int) -> Int) -> [MIDINote] {
        return map { note in
            var note = note
            note.pitch = transform(note.pitch)
            return note
        }
    }
    
}

// MARK: - Pitch transformations

extension Array where Element == MIDINote {
    
    public func transpose(up interval: Int) -> [MIDINote] {
        return mapPitch { pitch in
            return pitch + interval
        }
    }
    
    public func transpose(down interval: Int) -> [MIDINote] {
        return mapPitch { pitch in
            return pitch - interval
        }
    }
    
}

// MARK: - Pitch constants

public let c0 = 0
public let cSharp0 = 1
public let dFlat0 = 1
public let d0 = 2
public let dSharp0 = 3
public let eFlat0 = 3
public let e0 = 4
public let eSharp0 = 5
public let fFlat0 = 4
public let f0 = 5
public let fSharp0 = 6
public let gFlat0 = 6
public let g0 = 7
public let gSharp0 = 8
public let aFlat0 = 8
public let a0 = 9
public let aSharp0 = 10
public let bFlat0 = 10
public let b0 = 11
public let bSharp0 = 12

public let cFlat1 = 11
public let c1 = 12
public let cSharp1 = 13
public let dFlat1 = 13
public let d1 = 14
public let dSharp1 = 15
public let eFlat1 = 15
public let e1 = 16
public let eSharp1 = 17
public let fFlat1 = 16
public let f1 = 17
public let fSharp1 = 18
public let gFlat1 = 18
public let g1 = 19
public let gSharp1 = 20
public let aFlat1 = 20
public let a1 = 21
public let aSharp1 = 22
public let bFlat1 = 22
public let b1 = 23
public let bSharp1 = 24

public let cFlat2 = 23
public let c2 = 24
public let cSharp2 = 25
public let dFlat2 = 25
public let d2 = 26
public let dSharp2 = 27
public let eFlat2 = 27
public let e2 = 28
public let eSharp2 = 29
public let fFlat2 = 28
public let f2 = 29
public let fSharp2 = 30
public let gFlat2 = 30
public let g2 = 31
public let gSharp2 = 32
public let aFlat2 = 32
public let a2 = 33
public let aSharp2 = 34
public let bFlat2 = 34
public let b2 = 35
public let bSharp2 = 36

public let cFlat3 = 35
public let c3 = 36
public let cSharp3 = 37
public let dFlat3 = 37
public let d3 = 38
public let dSharp3 = 39
public let eFlat3 = 39
public let e3 = 40
public let eSharp3 = 41
public let fFlat3 = 40
public let f3 = 41
public let fSharp3 = 42
public let gFlat3 = 42
public let g3 = 43
public let gSharp3 = 44
public let aFlat3 = 44
public let a3 = 45
public let aSharp3 = 46
public let bFlat3 = 46
public let b3 = 47
public let bSharp3 = 48

public let cFlat4 = 47
public let c4 = 48
public let cSharp4 = 49
public let dFlat4 = 49
public let d4 = 50
public let dSharp4 = 51
public let eFlat4 = 51
public let e4 = 52
public let eSharp4 = 53
public let fFlat4 = 52
public let f4 = 53
public let fSharp4 = 54
public let gFlat4 = 54
public let g4 = 55
public let gSharp4 = 56
public let aFlat4 = 56
public let a4 = 57
public let aSharp4 = 58
public let bFlat4 = 58
public let b4 = 59
public let bSharp4 = 60

public let cFlat5 = 59
public let c5 = 60
public let cSharp5 = 61
public let dFlat5 = 61
public let d5 = 62
public let dSharp5 = 63
public let eFlat5 = 63
public let e5 = 64
public let eSharp5 = 65
public let fFlat5 = 64
public let f5 = 65
public let fSharp5 = 66
public let gFlat5 = 66
public let g5 = 67
public let gSharp5 = 68
public let aFlat5 = 68
public let a5 = 69
public let aSharp5 = 70
public let bFlat5 = 70
public let b5 = 71
public let bSharp5 = 72

public let cFlat6 = 71
public let c6 = 72
public let cSharp6 = 73
public let dFlat6 = 73
public let d6 = 74
public let dSharp6 = 75
public let eFlat6 = 75
public let e6 = 76
public let eSharp6 = 77
public let fFlat6 = 76
public let f6 = 77
public let fSharp6 = 78
public let gFlat6 = 78
public let g6 = 79
public let gSharp6 = 80
public let aFlat6 = 80
public let a6 = 81
public let aSharp6 = 82
public let bFlat6 = 82
public let b6 = 83
public let bSharp6 = 84

public let cFlat7 = 83
public let c7 = 84
public let cSharp7 = 85
public let dFlat7 = 85
public let d7 = 86
public let dSharp7 = 87
public let eFlat7 = 87
public let e7 = 88
public let eSharp7 = 89
public let fFlat7 = 88
public let f7 = 89
public let fSharp7 = 90
public let gFlat7 = 90
public let g7 = 91
public let gSharp7 = 92
public let aFlat7 = 92
public let a7 = 93
public let aSharp7 = 94
public let bFlat7 = 94
public let b7 = 95
public let bSharp7 = 96

public let cFlat8 = 95
public let c8 = 96
public let cSharp8 = 97
public let dFlat8 = 97
public let d8 = 98
public let dSharp8 = 99
public let eFlat8 = 99
public let e8 = 100
public let eSharp8 = 101
public let fFlat8 = 100
public let f8 = 101
public let fSharp8 = 102
public let gFlat8 = 102
public let g8 = 103
public let gSharp8 = 104
public let aFlat8 = 104
public let a8 = 105
public let aSharp8 = 106
public let bFlat8 = 106
public let b8 = 107
public let bSharp8 = 108

public let cFlat9 = 107
public let c9 = 108
public let cSharp9 = 109
public let dFlat9 = 109
public let d9 = 111
public let dSharp9 = 111
public let eFlat9 = 111
public let e9 = 112
public let eSharp9 = 113
public let fFlat9 = 112
public let f9 = 113
public let fSharp9 = 114
public let gFlat9 = 114
public let g9 = 115
public let gSharp9 = 116
public let aFlat9 = 116
public let a9 = 117
public let aSharp9 = 118
public let bFlat9 = 118
public let b9 = 119
public let bSharp9 = 121

public let cFlat10 = 119
public let c10 = 120
public let cSharp10 = 121
public let dFlat10 = 121
public let d10 = 123
public let dSharp10 = 123
public let eFlat10 = 123
public let e10 = 124
public let eSharp10 = 125
public let fFlat10 = 124
public let f10 = 125
public let fSharp10 = 126
public let gFlat10 = 126
public let g10 = 127

// MARK: - Interval constants

public let perfectUnison = 0
public let minorSecond = 1
public let majorSecond = 2
public let minorThird = 3
public let majorThird = 4
public let perfectFourth = 5
public let perfectFifth = 7
public let minorSixth = 8
public let majorSixth = 9
public let minorSeventh = 10
public let majorSeventh = 11
public let perfectOctave = 12

public let diminishedSecond = 0
public let augmentedUnison = 1
public let diminishedThird = 2
public let augmentedSecond = 3
public let diminishedFourth = 4
public let augmentedThird = 5
public let diminishedFifth = 6
public let augmentedFourth = 6
public let diminishedSixth = 7
public let augmentedFifth = 8
public let diminishedSeventh = 9
public let augmentedSixth = 10
public let diminishedOctave = 11
public let augmentedSeventh = 12
public let diminishedNinth = 12
public let augmentedOctave = 13

public let minorNinth = 13
public let majorNinth = 14
public let minorTenth = 15
public let majorTenth = 16
public let perfectEleventh = 17
public let perfectTwelfth = 19
public let minorThirteenth = 20
public let majorThirteenth = 21
public let minorFourteenth = 22
public let majorFourteenth = 23
public let doubleOctave = 24

public let diminishedTenth = 14
public let augmentedNinth = 15
public let diminishedEleventh = 16
public let augmentedTenth = 17
public let diminishedTwelfth = 18
public let augmentedEleventh = 18
public let diminishedThirteenth = 19
public let augmentedTwelfth = 20
public let diminishedFourteenth = 21
public let augmentedThirteenth = 22
public let diminishedFifteenth = 23
public let augmentedFourteenth = 24
public let augmentedFifteenth = 25

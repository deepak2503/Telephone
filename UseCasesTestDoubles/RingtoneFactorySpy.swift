//
//  RingtoneFactorySpy.swift
//  Telephone
//
//  Copyright (c) 2008-2016 Alexey Kuznetsov
//  Copyright (c) 2016 64 Characters
//
//  Telephone is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Telephone is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//

import UseCases

public final class RingtoneFactorySpy {
    public fileprivate(set) var createRingtoneCallCount = 0
    public fileprivate(set) var invokedInterval: Double = 0
    
    fileprivate var ringtone: Ringtone!

    public init() {}

    public func stub(with ringtone: Ringtone) {
        self.ringtone = ringtone
    }
}

extension RingtoneFactorySpy: RingtoneFactory {
    public func createRingtone(interval: Double) -> Ringtone {
        createRingtoneCallCount += 1
        invokedInterval = interval
        return ringtone
    }
}

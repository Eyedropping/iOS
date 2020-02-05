//
//  ClockView.swift
//  SBiOS_m11
//
//  Created by Dmitry Aksyonov on 09.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

@IBDesignable class ClockView: UIView {
    
    var isSetup = false
    
    // MARK: - setting the elements of the clock
    private let topMarker = UIView()
    private let leftMarker = UIView()
    private let rightMarker = UIView()
    private let bottomMarker = UIView()
    private let hoursLine = UIView()
    private let minutesLine = UIView()
    private let secondsLine = UIView()
    private let roundedView = UIView()
    
    // MARK: - setting the initial markup
    
    // markers markup
    var markerSize: CGFloat = 4
    var markerLegth: CGFloat = 12
    var markerColor: UIColor = .blue
    
    // accessories and hoursLine markup
    var hoursLineSize: CGFloat = 3.5
    
    @IBInspectable var hoursLineOffset: CGFloat = 45 {
        didSet { layoutSubviews() }
    }
    @IBInspectable var hoursLineColor: UIColor = .green {
        didSet { hoursLine.backgroundColor = hoursLineColor }
    }
    
    // setting minutesLine markup
    var minutesLineSize: CGFloat = 2
    
    @IBInspectable var minutesLineOffset: CGFloat = 30 {
        didSet { layoutSubviews() }
    }
    @IBInspectable var minutesLineColor: UIColor = .green {
        didSet { minutesLine.backgroundColor = minutesLineColor }
    }
    // setting secondsLine markup
    var secondsLineSize: CGFloat = 1
    
    @IBInspectable var secondsLineOffset: CGFloat = 15 {
        didSet { layoutSubviews() }
    }
    @IBInspectable var secondsLineColor: UIColor = .green {
        didSet { secondsLine.backgroundColor = secondsLineColor }
    }
    
    var roundedViewColor: UIColor = .black
    
    // setting values for the line
    @IBInspectable var hours: CGFloat = 19 {
        didSet { layoutIfNeeded() }
    }
    @IBInspectable var minutes: CGFloat = 15 {
        didSet { layoutIfNeeded() }
    }
    @IBInspectable var seconds: CGFloat = 13 {
        didSet { layoutIfNeeded() }
    }
    
    // MARK: - sole method of updating hoursLine
    
    func updateHours() {
        let hAngle: CGFloat = CGFloat.pi * 2 * (hours / CGFloat(12))
        hoursLine.transform = CGAffineTransform(rotationAngle: hAngle)
    }
    
    func updateMinutes() {
        let mAngle: CGFloat = CGFloat.pi * 2 * (minutes / CGFloat(60))
        minutesLine.transform = CGAffineTransform(rotationAngle: mAngle)
    }
    
    func updateSeconds() {
        let sAngle: CGFloat = CGFloat.pi * 2 * (seconds / CGFloat(60))
        secondsLine.transform = CGAffineTransform(rotationAngle: sAngle)
    }
    
    
    // MARK: - setting methods to  lay out the clock view and it's core elemets
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if isSetup { return }
        isSetup = true
        
        // setting up views width and height
        let w = frame.size.width
        let h = frame.size.height
        
        // setting up marker frames
        topMarker.frame = CGRect(x: w / 2 - markerSize / 2, y: 0, width: markerSize, height: markerLegth)
        leftMarker.frame = CGRect(x: 0, y: h / 2 - markerSize / 2, width: markerLegth, height: markerSize)
        rightMarker.frame = CGRect(x: w - markerLegth, y: h / 2 - markerSize / 2, width: markerLegth, height: markerSize)
        bottomMarker.frame = CGRect(x: w / 2 - markerSize / 2, y: h - markerLegth, width: markerSize, height: markerLegth)
        
        // setting up hoursLine frame and anchoring
        hoursLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1) // ?!
        minutesLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        secondsLine.layer.anchorPoint = CGPoint(x: 0.5, y: 1)
        hoursLine.frame = CGRect(x: w / 2 - hoursLineSize / 2, y: hoursLineOffset, width: hoursLineSize, height: h / 2 - hoursLineOffset)
        minutesLine.frame = CGRect(x: w / 2 - minutesLineSize / 2, y: minutesLineOffset, width: minutesLineSize, height: h / 2 - minutesLineOffset)
        secondsLine.frame = CGRect(x: w / 2 - secondsLineSize / 2, y: secondsLineOffset, width: secondsLineSize, height: h / 2 - secondsLineOffset)
        
        
        
        // setting up roundedview
        roundedView.frame = CGRect(x: w / 2 - 4.5, y: h / 2 - 4.5, width: 9, height: 9)
        roundedView.layer.cornerRadius = 4
        roundedView.alpha = 0.8
        roundedView.backgroundColor = roundedViewColor
        
        updateHours()
        updateMinutes()
        updateSeconds()
        
        for v in [topMarker, leftMarker, rightMarker, bottomMarker] {
            v.backgroundColor = markerColor
        }
        
        // setting up main view corner rad
        layer.cornerRadius = frame.size.width / 2
        
        // adding subviews
        for v in [topMarker, leftMarker, rightMarker, bottomMarker, hoursLine, minutesLine, secondsLine, roundedView] {
            addSubview(v)
        }
    }
}

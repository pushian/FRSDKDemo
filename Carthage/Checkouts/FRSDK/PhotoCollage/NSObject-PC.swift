//
//  NSObject-PC.swift
//  PhotoCollage
//
//  Created by Yangfan Liu on 24/8/17.
//  Copyright © 2017 Yangfan Liu. All rights reserved.
//


import UIKit

func PostDoneNotification() {
    let notification = Notification(name: Constants.notifications.FRdidTapDone, object: nil, userInfo: nil)
    NotificationCenter.default.post(notification)
}

func PostAlertNotification(title: String, message: String) {
    let info = [
        "title": title,
        "message": message
    ]
    let notification = Notification(name: Constants.notifications.FRdisplayAlert, object: info, userInfo: nil)
    NotificationCenter.default.post(notification)
}

//
//  EventLine.swift
//  ManagerEventCollectionView_Kiet_13110085
//
//  Created by Kiet Nguyen on 5/3/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import Foundation
import UIKit
class EventLine
{
    // Variables
    var dates: String            // date of the event section
    var events: [Event]     // all event in the section
    var dateImages: UIImage
    
    init(dateOfWeek: String, includeEvents: [Event], dateImage: UIImage)
    {
        dates = dateOfWeek
        events = includeEvents
        dateImages = dateImage
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.cn(), self.t2(), self.t3(), self.t4(), self.t5(), self.t6(), self.t7()]
    }
    
    // Private methods
    
    private class func cn() -> EventLine {
        //  (1) CN: Ngủ, Vệ Sinh Cá Nhân, Ăn Sáng, Học iOS, Học Android, Xem TV, Ăn Trưa, Đi Chơi, Ăn Tối, Đồ Án
        var events = [Event]()
        
        events.append(Event(titled: "Ngủ", description: "Đang ngủ.", eventImaged: #imageLiteral(resourceName: "ngu")))
        events.append(Event(titled: "Vệ Sinh Cá Nhân", description: "Thức dậy vệ sinh cá nhân.", eventImaged: #imageLiteral(resourceName: "danhrang")))
        events.append(Event(titled: "Đồ Án", description: "Làm đồ án.", eventImaged: #imageLiteral(resourceName: "doan")))
        
        return EventLine(dateOfWeek: "Chủ Nhật", includeEvents: events, dateImage: #imageLiteral(resourceName: "sunday"))
    }
    
    private class func t2() -> EventLine {
        //  (1) CN: Ngủ, Vệ Sinh Cá Nhân, Ăn Sáng, Học iOS, Học Android, Xem TV, Ăn Trưa, Đi Chơi, Ăn Tối, Đồ Án
        var events = [Event]()
        
        events.append(Event(titled: "Ngủ", description: "Đang ngủ.", eventImaged: #imageLiteral(resourceName: "ngu")))
        events.append(Event(titled: "Vệ Sinh Cá Nhân", description: "Thức dậy vệ sinh cá nhân.", eventImaged: #imageLiteral(resourceName: "danhrang")))
        events.append(Event(titled: "Học iOS", description: "Thực Hành iOS.", eventImaged: #imageLiteral(resourceName: "ios")))
        events.append(Event(titled: "Đồ Án", description: "Làm đồ án.", eventImaged: #imageLiteral(resourceName: "doan")))
        
        return EventLine(dateOfWeek: "Thứ 2", includeEvents: events, dateImage: #imageLiteral(resourceName: "monday"))
    }
    
    private class func t3() -> EventLine {
        //  (1) CN: Ngủ, Vệ Sinh Cá Nhân, Ăn Sáng, Học iOS, Học Android, Xem TV, Ăn Trưa, Đi Chơi, Ăn Tối, Đồ Án
        var events = [Event]()
        
        events.append(Event(titled: "Ngủ", description: "Đang ngủ.", eventImaged: #imageLiteral(resourceName: "ngu")))
        events.append(Event(titled: "Vệ Sinh Cá Nhân", description: "Thức dậy vệ sinh cá nhân.", eventImaged: #imageLiteral(resourceName: "danhrang")))
        events.append(Event(titled: "Học Android", description: "Thực Hành Android.", eventImaged: #imageLiteral(resourceName: "android")))
        events.append(Event(titled: "Đồ Án", description: "Làm đồ án.", eventImaged: #imageLiteral(resourceName: "doan")))
        return EventLine(dateOfWeek: "Thứ 3", includeEvents: events, dateImage: #imageLiteral(resourceName: "tuesday"))
    }
    
    private class func t4() -> EventLine {
        //  (1) CN: Ngủ, Vệ Sinh Cá Nhân, Ăn Sáng, Học iOS, Học Android, Xem TV, Ăn Trưa, Đi Chơi, Ăn Tối, Đồ Án
        var events = [Event]()
        
        events.append(Event(titled: "Ngủ", description: "Đang ngủ.", eventImaged: #imageLiteral(resourceName: "ngu")))
        events.append(Event(titled: "Vệ Sinh Cá Nhân", description: "Thức dậy vệ sinh cá nhân.", eventImaged: #imageLiteral(resourceName: "danhrang")))
        events.append(Event(titled: "Học Android", description: "Thực Hành Android.", eventImaged: #imageLiteral(resourceName: "android")))
        events.append(Event(titled: "Đồ Án", description: "Làm đồ án.", eventImaged: #imageLiteral(resourceName: "doan")))
        events.append(Event(titled: "Ăn Tối", description: "Đang ăn tối.", eventImaged: #imageLiteral(resourceName: "antoi")))
        
        return EventLine(dateOfWeek: "Thứ 4", includeEvents: events, dateImage: #imageLiteral(resourceName: "wednesday"))
    }
    
    private class func t5() -> EventLine {
        //  (1) CN: Ngủ, Vệ Sinh Cá Nhân, Ăn Sáng, Học iOS, Học Android, Xem TV, Ăn Trưa, Đi Chơi, Ăn Tối, Đồ Án
        var events = [Event]()
        
        events.append(Event(titled: "Ngủ", description: "Đang ngủ.", eventImaged: #imageLiteral(resourceName: "ngu")))
        events.append(Event(titled: "Vệ Sinh Cá Nhân", description: "Thức dậy vệ sinh cá nhân.", eventImaged: #imageLiteral(resourceName: "danhrang")))
        events.append(Event(titled: "Ăn Sáng", description: "Đang ăn sáng.", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Học Android", description: "Thực Hành Android.", eventImaged: #imageLiteral(resourceName: "android")))
        events.append(Event(titled: "Đồ Án", description: "Làm đồ án.", eventImaged: #imageLiteral(resourceName: "doan")))
        
        
        return EventLine(dateOfWeek: "Thứ 5", includeEvents: events, dateImage: #imageLiteral(resourceName: "thursday"))
    }
    
    private class func t6() -> EventLine {
        //  (1) CN: Ngủ, Vệ Sinh Cá Nhân, Ăn Sáng, Học iOS, Học Android, Xem TV, Ăn Trưa, Đi Chơi, Ăn Tối, Đồ Án
        var events = [Event]()
        
        events.append(Event(titled: "Ngủ", description: "Đang ngủ.", eventImaged: #imageLiteral(resourceName: "ngu")))
        events.append(Event(titled: "Vệ Sinh Cá Nhân", description: "Thức dậy vệ sinh cá nhân.", eventImaged: #imageLiteral(resourceName: "danhrang")))
        events.append(Event(titled: "Ăn Sáng", description: "Đang ăn sáng.", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Học TKPMHGD", description: "Đang học TKPMHGD.", eventImaged: #imageLiteral(resourceName: "tkpmhgd")))
        events.append(Event(titled: "Học Android", description: "Thực Hành Android.", eventImaged: #imageLiteral(resourceName: "android")))
        events.append(Event(titled: "Đồ Án", description: "Làm đồ án.", eventImaged: #imageLiteral(resourceName: "doan")))
        return EventLine(dateOfWeek: "Thứ 6", includeEvents: events, dateImage: #imageLiteral(resourceName: "friday"))
    }
    
    private class func t7() -> EventLine {
        //  (1) CN: Ngủ, Vệ Sinh Cá Nhân, Ăn Sáng, Học iOS, Học Android, Xem TV, Ăn Trưa, Đi Chơi, Ăn Tối, Đồ Án
        var events = [Event]()
        
        events.append(Event(titled: "Ngủ", description: "Đang ngủ.", eventImaged: #imageLiteral(resourceName: "ngu")))
        events.append(Event(titled: "Vệ Sinh Cá Nhân", description: "Thức dậy vệ sinh cá nhân.", eventImaged: #imageLiteral(resourceName: "danhrang")))
        events.append(Event(titled: "Ăn Sáng", description: "Đang ăn sáng.", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Học Android", description: "Thực Hành Android.", eventImaged: #imageLiteral(resourceName: "android")))
        events.append(Event(titled: "Ăn Trưa", description: "Đang ăn trưa.", eventImaged: #imageLiteral(resourceName: "antrua")))
        events.append(Event(titled: "Xem TV", description: "Đang xem tv.", eventImaged: #imageLiteral(resourceName: "xemtv")))
        events.append(Event(titled: "Ăn Tối", description: "Đang ăn tối.", eventImaged: #imageLiteral(resourceName: "antoi")))
        events.append(Event(titled: "Đồ Án", description: "Làm đồ án.", eventImaged: #imageLiteral(resourceName: "doan")))
        return EventLine(dateOfWeek: "Thứ 7", includeEvents: events, dateImage: #imageLiteral(resourceName: "saturday"))
    }
}

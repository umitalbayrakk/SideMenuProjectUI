//
//  SideMenuOptionModel.swift
//  SideMenuProjectUI
//
//  Created by umitalbayrak on 2.07.2025.
//

import Foundation
// Enum 
enum SideMenuOptionModel: Int  , CaseIterable {
    case dashboard
    case performance
    case profile
    case search
    case notifications
    case settings
    
    
    var title: String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .performance:
            return "Performance"
        case .profile:
            return "Profile"
        case .search:
            return "Search"
        case .notifications:
            return "Notifications"
        case .settings:
            return "Settings"
        }
    }
     var systemImageName: String {
        switch self {
        case .dashboard:
            return "filemenu.and.cursorarrow"
        case .performance:
            return "chart.bar"
        case .profile:
            return "person"
        case .search:
            return "magnifyingglass"
        case .notifications:
            return "bell"
        case .settings:
            return "gearshape"
        }
    }
}

extension SideMenuOptionModel : Identifiable{
   var id : Int {return self.rawValue}
}

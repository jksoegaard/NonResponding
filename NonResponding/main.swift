//
//  main.swift
//  NonResponding
//
//  Lists all applications that are currently not responding.
//
//  Created by Jens Kristian Søgaard <jens@mermaidconsulting.dk> on 28/07/2021.
//

import Foundation
import Cocoa
import ApplicationServices
import Carbon

for app in NSWorkspace.shared.runningApplications {
    if( isNonResponding(app.processIdentifier) ) {
      print( "\(app.localizedName ?? "N/A") (\(app.processIdentifier)) is not responding" )
    }
}

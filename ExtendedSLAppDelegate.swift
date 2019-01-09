//
//  ExtendedSLAppDelegate.swift
//  SymbolicLinker
//
//  Created by Pho Hale on 2/16/17.
//
//

import Foundation
import Cocoa
import Swift

//class ExtendedSLAppDelegate: SLAppDelegate {
//	
//}

@objc public extension SLAppDelegate {
	
//	@objc public func handleServices(pboard: NSPasteboard, userData: String, error: NSErrorPointer) {
//		debugPrint("handleServices called!")
//		debugPrint(pboard)
//		debugPrint(userData)
//		
//		if pboard.canReadItem(withDataConformingToTypes: [NSFilenamesPboardType]) {
//			//Valid Item
//			let fileArray = Array(pboard.propertyList(forType: NSFilenamesPboardType) as! NSArray)
//			
//			
//			for item in fileArray {
//				//Try to cast item as NSString
//				do {
//					let validString = try item as! NSString
//					debugPrint(validString.lastPathComponent)
//				} catch is NSError {
//					debugPrint("Couldn't decode item as NSString!")
//				}
//			}
//			//Log the items
//			
//		}
//	}

//	@objc public func MoveAndMakeSymbolicLink(url: CFURL) {
//		debugPrint("MoveAndMakeSymbolicLink")
//		let newURL: NSURL = url
//		let newURLString: String = (newURL.standardized?.absoluteString)!
//		debugPrint("input: \(newURL)")
//		
//		
//		
//	}
	@objc public func MoveAndMakeSymbolicLink(url: CFURL) {
		debugPrint("MoveAndMakeSymbolicLink")
		let newURL: NSURL = url
		//let newURLString: String = (newURL.standardized?.absoluteString)!
		debugPrint("input: \(newURL)")
	}
	
//	@objc open func MoveAndMakeSymbolicLink(url: URL) -> Int {
//		debugPrint("MoveAndMakeSymbolicLink")
//		//let newURL: NSURL = url
//		let newURLString: String = (url.standardized.absoluteString)
//		debugPrint("input: \(url)")
//		return 0
//	}
	
}



//func myService(pboard: NSPasteboard, userData: String, error: AutoreleasingUnsafeMutablePointer<NSString?>) {
//	
//	if impossible() {
//		error.memory = "Failure, application did not start properly"
//		return
//	}
//	
//	if let files = pboard.propertyListForType(NSFilenamesPboardType) as? Array<String> {
//		dataSource.insertLines(files, atIndex: 0)
//	}
//}




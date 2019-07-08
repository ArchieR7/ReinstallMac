//___FILEHEADER___

import Foundation

func DLogDebug(_ string: Any? = String(), file: String = #file, line: Int = #line, function: String = #function) {
    print("📒 \(file.components(separatedBy: "/").last ?? String())[\(line)](\(function)): \(string ?? String())")
}

func DLogWarn(_ string: Any? = String(), file: String = #file, line: Int = #line, function: String = #function) {
    print("⚠️ \(file.components(separatedBy: "/").last ?? String())[\(line)](\(function)): \(string ?? String())")
}

func DLogInfo(_ string: Any? = String(), file: String = #file, line: Int = #line, function: String = #function) {
    print("ℹ️ \(file.components(separatedBy: "/").last ?? String())[\(line)](\(function)): \(string ?? String())")
}

func DLogError(_ string: Any? = String(), file: String = #file, line: Int = #line, function: String = #function) {
    print("🚨 \(file.components(separatedBy: "/").last ?? String())[\(line)](\(function)): \(string ?? String())")
}

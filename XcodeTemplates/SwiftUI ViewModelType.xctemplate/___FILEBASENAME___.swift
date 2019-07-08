//___FILEHEADER___

import SwiftUI

protocol ViewModelType: BindableObject {
    associatedtype Input
    associatedtype Output
    
    var input: Input { get }
    var output: Output { get }
}

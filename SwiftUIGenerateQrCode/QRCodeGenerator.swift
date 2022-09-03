//
//  QRCodeGenrator.swift
//  SwiftUIGenerateQrCode
//
//  Created by Lucy on 03/09/22.
//

import Foundation
import CoreImage.CIFilterBuiltins
import UIKit

struct QRCodeGeneretor{
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    func generate(str: String) -> UIImage{
        let data = Data(str.utf8)
        filter.setValue(data, forKey: "inputMessage")
        
        if let qrCodeImage = filter.outputImage{
            if let qrCodeCGImage = context.createCGImage(qrCodeImage, from: qrCodeImage.extent){
                return UIImage(cgImage: qrCodeCGImage)
            }
        }
        
        return UIImage(systemName: "xmark") ?? UIImage()
    }
}

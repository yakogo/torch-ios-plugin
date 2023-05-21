import Foundation
import AVFoundation

private var on = false

@objc public class TorchPlugin: NSObject {
    @objc public func light() {

    guard let device = AVCaptureDevice.default(for: .video) else { return }

    if device.hasTorch {

        do {
            try device.lockForConfiguration()

            if on == false {
                device.torchMode = .on
            } else {
                device.torchMode = .off
            }

            on = !on

            device.unlockForConfiguration()
        } catch {

            print("unusable torch")
        }

    } else {
        print("error happened")
    }

    }

}

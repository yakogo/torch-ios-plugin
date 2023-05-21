import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(TorchPluginPlugin)
public class TorchPluginPlugin: CAPPlugin {
    private let implementation = TorchPlugin()

    @objc func light(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.light()
        ])
    }
}

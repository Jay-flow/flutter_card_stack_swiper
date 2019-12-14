import Flutter
import UIKit

public class SwiftFlutterCardStackSwiperPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_card_stack_swiper", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterCardStackSwiperPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

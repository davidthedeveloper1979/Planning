import LocalAuthentication
import Security

struct BiometricUnlock {
    func authenticate(completion: @escaping (Bool) -> Void) {
        let context = LAContext()
        var error: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Unlock") { success, _ in
                completion(success)
            }
        } else {
            completion(false)
        }
    }
}

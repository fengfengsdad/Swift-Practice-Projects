import UIKit

//实现AnyObject 保证该协议只能被class实现
protocol PaymentDelegate: AnyObject {
    func didCompletePayment(amount: Double)
    func didFailPayment(error: String)
}

class PaymentHandeler {
    private var delegates: [WeakPaymentDelegate?] = []
    
    func addDelegate(delegate: PaymentDelegate){
        delegates.append(WeakPaymentDelegate(delegate))
    }
    
    func proceedPayment(amount: Double, shouldFail: Bool) {
        print("Precessing payment ...")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            if shouldFail{
                self.didFail()
            }else{
                self.didProcess(amount: amount)
            }
        }
        
    }
    
    private func didProcess(amount: Double){
        for delegate in self.delegates {
            delegate?.delegate?.didCompletePayment(amount: amount)
        }
    }
    
    private func didFail(){
        for delegate in self.delegates {
            delegate?.delegate?.didFailPayment(error: "Fail processing")
        }
    }
    
}

// 辅助类: 弱引用包装器，防止循环引用
private class WeakPaymentDelegate {
    weak var delegate: PaymentDelegate?
    
    init(_ delegate: PaymentDelegate?) {
        self.delegate = delegate
    }
}

class PaymentViewHandeler: PaymentDelegate {
    func didFailPayment(error: String) {
        print(error)
    }
    
    func didCompletePayment(amount: Double) {
        print(amount)
    }
    
}


let paymentViewHandeler = PaymentViewHandeler()
let paymentHandler = PaymentHandeler()

paymentHandler.addDelegate(delegate: paymentViewHandeler)
paymentHandler.proceedPayment(amount: 20.0,shouldFail: true)


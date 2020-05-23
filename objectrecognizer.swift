
import Vision
import AVKit
import UIKit

class ViewController: AVCaptureVideoDataOutputSampleBufferDelegate, UIViewController {
  override func videDidLoad() {
  
  
  let cameraSession = AVCaptureSession()
  captureSession.sessionPreset = .photo
  letcaptueDevice = AVCaptureDevice.details (for: .video)
  
  let input= try? AVCaptureDeviceInput (device: captureDevice)
    else {
      return 
    }
  capture.addInput(input)
  
cameraSession.startRunning()

let previewLayer = AVCaptureVideoPreviewLayer (sesssion:captureSession)
view.layer.addSublayer (previewLayer)
previewLayer.frame = view.frame

let dataOutput = AVCaptureVideoDataOutput()
dataOutput.setSampleBufferDelegate (sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate?, queue: DispatchQueue (label:"videoQueue"))
captureSession.addOutput(dataOutput)

//Handles the camera input
VNImageRequestHandler (cg: CGImage, option [:])
}
  func captureOutput (out: AVCaptureOutput, didOutputsampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
    print ("Camera was able to capture a frame", Date())
    
    let pixelBuffer: CVPixelBuffer = CMSampleBufferGetImageBuffer (sampleBuffer) else {
      return
      }

//a CoreML model from the Apple website
guard let model = try? VNCoreMLModel (for: SqueezeNet().model)
else {
  return
 }
 
let core = VNCoreMLRequest (model:VNCoreModel) 
{

  guard let results = finishReq.results as? 
    [VNClassificationObservation] else {
      return
      }
      
      //what camera gets as first observation
      guard let firstObservatio = results.first else {
        return
        }
        //frame and confidence of what the model believes it is
       print (firstObservation.identifier, firstObservation.confidence)
}

  try>  VNImageRequestHandler (cvPixelBuffer:CVPixelBuffer, pixelBuffer, options: [:]).perform([request])
    }
    
 
    
}

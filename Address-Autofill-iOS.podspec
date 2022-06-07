#
#  Be sure to run `pod spec lint Address-Autofill-iOS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "Address-Autofill-iOS"
  spec.version      = "1.0.0"
  spec.summary      = "Official Address Autofill SDK for iOS to access Pataa API."
  spec.description  = <<-DESC
                   The Address Autofill SDK for iOS framework provides Pataa Autofill API
                   to easily get Pataa accociated users address details.
                   DESC

  spec.homepage     = "https://docs.pataa.com/"
  spec.license      = {
    type: 'Pataa Navigations Platform License',
    text: <<-LICENSE
    Pataa Navigations Private Limited, and affiliates. All rights reserved.
    You are hereby granted a non-exclusive, worldwide, royalty-free license to use, copy, modify and
    distribute this software in source code or binary form for use in connection with the web
    services and APIs provided by Pataa. The modifications, use, copy and distribution shall be in
    connection with/for improvement of Pataa and affiliated products only.
    As with any software that integrates with Pataa platform, your use to this software is subject to
    the Pataa Navigations Private Limited’s Terms of Use, Privacy Policy, and License agreements.
    ________________________ This software notice shall be included in all copies or substantial
    portions of the software.
    THIS SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
    HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
    WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
    OTHER DEALINGS IN THE SOFTWARE.

    LICENSE
  }

  spec.author             = 'Pataa Navigations'
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"
  


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

#   spec.source       = { :git => "https://github.com/pataa-com/Address-Autofill-iOS.git", :tag => "v#{spec.version}" }
 spec.source = {
     http: "https://github.com/pataa-com/Address-Autofill-iOS/releases/download/v#{spec.version}/PataaAutoFillSDK.xcframework.zip",
     sha1: 'f19ed355b798d3fadc90617aacfc43fdfed92be4'
  }
  spec.ios.vendored_frameworks = "PataaAutoFillSDK.xcframework"


end

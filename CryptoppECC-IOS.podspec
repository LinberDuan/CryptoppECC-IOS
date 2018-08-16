
Pod::Spec.new do |s|

  s.name         = "CryptoppECC-IOS"
  s.version      = "1.0.0"
  s.summary      = "CryptoppECC-Encryption/Decryption using ECC(Elliptic curve cryptography)"


  s.description  = <<-DESC
                CryptoppECC-Encryption/Decryption using ECC(Elliptic curve cryptography)
                *Contains functions for encryption,decryption using ECC and verify a signed certificate using ECDSA.

                *Using https://groups.google.com/forum/#!topic/cryptopp-users/LvIfAP4llx4 made a patch for compatibility with Bouncy Castle.

                *Also took help from https://github.com/3ign0n/CryptoPP-for-iOS for calculating Hash.
                   DESC

  s.homepage     = "https://github.com/LinberDuan/CryptoppECC-IOS"
  s.license      = { :type => "MIT", :file => "LICENSE.txt" }

  s.author             = { "LinberDuan" => "linber@foxmail.com" }
  s.social_media_url   = "http://www.linber.cn"
  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.10"
  s.osx.xcconfig =
  {
   'OTHER_LDFLAGS' => '-lc++'
  }
  s.prepare_command=<<-CMD
                        sh CryptoppECC-IOS/CryptoppLibrary/builder.sh
                        CMD

  s.source       = { :git => "https://github.com/LinberDuan/CryptoppECC-IOS.git", :tag =>"1.0.0" }
  s.source_files  = "CryptoppECC-IOS/CryptoppLibrary/*.h", "CryptoppECC-IOS/CryptoppWrapper/*.{h,mm}"
  s.public_header_files = "CryptoppECC-IOS/CryptoppWrapper/*.h"
  s.osx.vendored_library ="CryptoppECC-IOS/CryptoppLibrary/bin/macosx/libcryptopp.a"
  s.ios.vendored_library ="CryptoppECC-IOS/CryptoppLibrary/bin/ios/libcryptopp.a"
  s.prefix_header_file ="CryptoppECC-IOS/cryptodemolib.pch"

  s.requires_arc = true

end

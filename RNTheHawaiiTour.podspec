
Pod::Spec.new do |s|
  s.name         = "RNTheHawaiiTour"
  s.version      = "1.0.0"
  s.summary      = "RNTheHawaiiTour"
  s.description  = <<-DESC
                  RNTheHawaiiTour
                   DESC
                   s.homepage     = "https://github.com/dorislynch/TheHawaiiTour"
                   s.license      = "MIT"
                   # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
                   s.author             = { "author" => "author@domain.cn" }
                   s.platform     = :ios, "7.0"
                   s.source       = { :git => "https://github.com/dorislynch/TheHawaiiTour.git", :tag => "master" }
                   s.source_files  = "ios/**/*.{h,m}"
                   s.requires_arc = true
                 
                 
                   s.dependency "React"
                   s.dependency 'UMCommon'
                   s.dependency 'UMDevice'
                   s.dependency 'UMAPM'
                   s.dependency 'CocoaSecurity'
                   s.dependency 'JJException'
  #s.dependency "others"

end

  
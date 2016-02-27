Pod::Spec.new do |s|
  s.name         = "RNNFMDB"
  s.version      = "0.0.3"
  s.summary      = "Operations library of sqlite base on FMDB"
  s.homepage     = "https://github.com/renningning88/PYFMDB"
  s.license      = "MIT"
  s.author       = { "ningning" => "iam@ningning.ren" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/renningning88/RNNFMDB.git", :tag => s.version.to_s }
  s.source_files = "RNNFMDB/*.{h,m}"
  s.platform	 = :ios,'6.0'
  s.requires_arc = true
  s.dependency   "FMDB", "~> 2.0"
end

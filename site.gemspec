# encoding: utf-8

Gem::Specification.new do |s|
  s.name          = "gmontalvo.me"
  s.version       = "0.0.1"
  s.license       = "CC0-1.0"
  s.authors       = ["Gabriel Montalvo"]
  s.email         = ["gabe.montalvo5@gmail.com"]
  s.homepage      = "https://github.com/gamontalvo/blog.gmontalvo.me"
  s.summary       = ""

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_includes|_layouts|_sass|assets)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  s.platform      = Gem::Platform::RUBY
  s.add_runtime_dependency "jekyll", "~> 3.3"
end
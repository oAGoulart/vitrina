# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'jekyll-theme-vitrina'
  s.version       = '0.1.0'
  s.authors       = ['Augusto Goulart']
  s.email         = ['josegoulart.aluno@unipampa.edu.br']

  s.summary       = %q{ A general purpose Jekyll theme }
  s.homepage      = 'https://github.com/oAGoulart/vitrina'
  s.license       = 'MIT'

  s.metadata['plugin_type'] = 'theme'

  s.files = `git ls-files -z`.split('\x0').select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass|posts)/|(LICENSE|README)((\.(txt|md|markdown|json)|$)))}i)
  end

  s.platform = Gem::Platform::RUBY
  s.add_runtime_dependency 'github-pages'

  s.add_development_dependency 'w3c_validators', '~> 1.3.5'
end

# frozen_string_literal: true

require 'rubygems'
require 'pathname'
require 'w3c_validators'

# Verify if `file` is valid
def validate(file, ext)
  puts "Validating #{file}..."

  if ext == '.html'
    results = W3CValidators::NuValidator.new.validate_file(file)
  elsif ext == '.css'
    results = W3CValidators::CSSValidator.new.validate_file(file)
  end

  return puts "#{file} is valid!" if results.errors.empty?

  results.errors.each { |err| puts err.to_s }
end

# For every Jekyll directory with source files
Pathname.glob('../{.,_includes,_layouts,_assets}/*.{html,css}').each do |path|
  next if path.directory?

  validate path, File.extname(path)
end

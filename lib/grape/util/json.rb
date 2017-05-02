begin
  require 'multi_json'
rescue LoadError
end

module Grape
  if Object.const_defined? :MultiJson
    Json = ::MultiJson
  else
    Json = ::JSON
    Json::ParseError = Json::ParserError
  end
end

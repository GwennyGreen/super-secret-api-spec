require 'json'

require './lib/backend'


MyApp.add_route('GET', '/api/wall/v1/negative/phrases/{id}', {
  "resourcePath" => "/NegativePhrases",
  "summary" => "Returns the negative phrase with the given ID",
  "nickname" => "get_negative_phrase_by_id", 
  "responseClass" => "Phrase",
  "endpoint" => "/negative/phrases/{id}", 
  "notes" => "",
  "parameters" => [
    {
      "name" => "id",
      "description" => "ID of the phrase",
      "dataType" => "Integer",
      "paramType" => "path",
    },
    ]}) do
  cross_origin

  id_int = begin
    Integer(params["id"])
  rescue ArgumentError
    error(400)
  end

  phrase = Backend::PHRASES[:negative].find do |phrase|
    id_int == phrase.id
  end

  if phrase.nil?
    error(404)
  else
    phrase.to_json
  end
end


MyApp.add_route('GET', '/api/wall/v1/negative/phrases', {
  "resourcePath" => "/NegativePhrases",
  "summary" => "Returns a list of negative phrases",
  "nickname" => "get_negative_phrases", 
  "responseClass" => "Array<Phrase>",
  "endpoint" => "/negative/phrases", 
  "notes" => "Returns a list of negative phrases in no particular order.",
  "parameters" => [
    ]}) do
  cross_origin

  Backend::PHRASES[:negative].to_json
end

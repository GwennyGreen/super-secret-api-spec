require 'json'

require './lib/backend'


MyApp.add_route('GET', '/api/wall/v1/positive/phrases/{id}', {
  "resourcePath" => "/PositivePhrases",
  "summary" => "Returns the positive phrase with the given ID",
  "nickname" => "get_positive_phrase_by_id", 
  "responseClass" => "Phrase",
  "endpoint" => "/positive/phrases/{id}", 
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

  phrase = Backend::PHRASES[:positive].find do |phrase|
    id_int == phrase.id
  end

  if phrase.nil?
    error(404)
  else
    phrase.to_json
  end
end


MyApp.add_route('GET', '/api/wall/v1/positive/phrases', {
  "resourcePath" => "/PositivePhrases",
  "summary" => "Returns a list of positive phrases",
  "nickname" => "get_positive_phrases", 
  "responseClass" => "Array<Phrase>",
  "endpoint" => "/positive/phrases", 
  "notes" => "Returns a list of positive phrases in no particular order.",
  "parameters" => [
    ]}) do
  cross_origin

  Backend::PHRASES[:positive].to_json
end
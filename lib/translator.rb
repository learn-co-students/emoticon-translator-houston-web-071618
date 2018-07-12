require "yaml"

def load_library(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  #emoticons = YAML.load_file('./lib/emoticons.yml')
  YAML.load_file(file_path).each do |meaning, list|
    english, japanese = list
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  lib = load_library(file_path)
  result = lib["get_emoticon"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  lib = load_library(file_path)
  result = lib["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
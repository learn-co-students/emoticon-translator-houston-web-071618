# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  hash = {}
  hash["get_emoticon"] = {}
  hash["get_meaning"] = {}
  emoticons.each do |meaning, signs|
    eng_signs = signs[0]
    jap_signs = signs[1]
    hash["get_emoticon"][eng_signs] = jap_signs
    hash["get_meaning"][jap_signs] = meaning
  end
  hash
end

def get_japanese_emoticon(file_path, emoticon)
    emoticons = load_library(file_path)
    result = emoticons["get_emoticon"][emoticon]
    if result
      result
    else
      "Sorry, that emoticon was not found"
end
end

def get_english_meaning(file_path, emoticon)
    emoticons = load_library(file_path)
    result = emoticons["get_meaning"][emoticon]
    if result
      result
    else
      "Sorry, that emoticon was not found"
end
end

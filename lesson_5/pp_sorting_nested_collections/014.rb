# 14) Given the hash below, write some code to return an array containing the
# colors of the fruits and sizes of the vegetables.  The sizes should be
# uppercase and the colors should be capitalized.
# --------------------------------------------------------------------------- #

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |name, values|
  if values[:type] == 'fruit'
    values[:colors].map do |color|
      color.capitalize
    end
  elsif values[:type] == 'vegetable'
    values[:size].upcase
  end
end

# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

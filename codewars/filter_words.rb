# def filter_words(st)
#   st.split.map.with_index do |word, index|
#     index == 0 ? word.capitalize : word.downcase
#   end
#   .join(' ')
# end

def filter_words(st)
  st.split.join(" ").capitalize
end

p filter_words('HELLO world!') 
# p filter_words('HELLO world!') == 'Hello world!'
p filter_words('HELLO CAN YOU HEAR ME')
p filter_words('now THIS is REALLY interesting')
p filter_words('THAT was EXTRAORDINARY!')

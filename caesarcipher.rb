print 'Gimme a string: '
inp_string = gets.chomp
print 'Gimme the shift (whole numbers only please, positive or negative): '
inp_shift = gets.chomp.to_i

def make_arr(str)
  arr = str.split('')
end

def caesar(input_string,input_shift)
  shift = input_shift % 26

  ascii_arr = []
  final_ascii_arr = []
  input_arr = make_arr(input_string)
  changed_string_arr = []

  input_arr.each do |i|
    if i.match(/[A-Z]/) || i.match(/[a-z]/)
      ascii_arr.push(i.ord)
    else
      ascii_arr.push(i.to_s)
    end
  end

  ascii_arr.each do |i|
    if i.is_a? Integer
      if i > 96 && i < 123
        changed_ascii = i + shift
        if changed_ascii < 97
          changed_ascii += 26
        elsif changed_ascii > 122
          changed_ascii -= 26
        end
        final_ascii_arr.push(changed_ascii)
      elsif i > 64 && i < 91
        changed_ascii = i + shift
        if changed_ascii < 65
          changed_ascii += 26
        elsif changed_ascii > 90
          changed_ascii -= 26
        end
        final_ascii_arr.push(changed_ascii)
      end  
    else
      final_ascii_arr.push(i)
    end
  end

  final_ascii_arr.each do |i|
    if i.is_a? Integer
      changed_string_arr.push(i.chr)
    else
      changed_string_arr.push(i)
    end
  end

  changed_string = changed_string_arr.join('')
end

puts "Your decoded string is: \"#{caesar(inp_string,inp_shift)}\"!"
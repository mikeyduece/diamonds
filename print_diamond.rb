def print_diamond(letter)
  letter = letter.upcase.ord
  @inner_diamond =  1

  top_half(letter)
  bottom_half(letter)
end

def top_half(letter)
  top_outer_diamond = letter - 65
  (65..letter).each do |x|
    if x == 65
      puts ' ' * top_outer_diamond + x.chr
      top_outer_diamond -= 1
    else
      puts (' ' * top_outer_diamond) + x.chr + (' ' * @inner_diamond) + x.chr
      top_outer_diamond -= 1
      @inner_diamond += 2
    end
  end
end

def bottom_half(letter)
  bottom_outer_diamond = 1
  @inner_diamond = @inner_diamond - 4
  (letter - 1).downto(65).each do |y|
    if y == 65
      puts ' ' * (letter - 65) + y.chr
    else
      puts (' ' * bottom_outer_diamond) + y.chr + (' ' * @inner_diamond) + y.chr
      bottom_outer_diamond += 1
      @inner_diamond -= 2
    end
  end
end

print_diamond('c')


class Sequence

  def initialize
    @number = 0
  end

  def getting_input
    puts 'How many elements in a sequence you want to print?'
    @number = gets.to_i - 1
  end

  def builder(data)
    nextnumber = ''
    occurrence = 0
    lastchar = data[0]

    data.each_char do |char|
      if char != lastchar
        nextnumber = "#{nextnumber}#{occurrence}#{lastchar}"
        occurrence = 0
        lastchar = char
      end
      occurrence += 1
    end

    "#{nextnumber}#{occurrence}#{lastchar}"
  end

  def printing
    result = Array.new(@number,String)
    result[0] = '1'

    (1..@number).each do |n|
      result[n] = builder(result[n-1])
    end
    puts 'RESULT!!!'
    puts result.join("\n")
  end
end

seq = Sequence.new
seq.getting_input
seq.printing
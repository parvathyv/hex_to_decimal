# YOUR CODE HERE

  def hex_to_decimal(number)

     conversion_hash =
     {
        '0'=>0,
        '1'=>1,
        '2'=>2,
        '3'=>3,
        '4'=>4,
        '5'=>5,
        '6'=>6,
        '7'=>7,
        '8'=>8,
        '9'=>9,
        'A'=>10,
        'B'=>11,
        'C'=>12,
        'D'=>13,
        'E'=>14,
        'F'=>15

     }

     sum = 0
     number = number.reverse.split('').map! { |x| x.upcase if x = x.downcase }
     index_hash = Hash.new { |h,k| h[k] = [] }

     number.each_with_index do |val, i|
       index_hash[val] << i
     end

     index_hash.each do |key, value|
       value.each do |n|
         sum += conversion_hash[key].to_i * 16 ** n
         puts sum
       end
     end
  sum
  end
hex_to_decimal('CC')

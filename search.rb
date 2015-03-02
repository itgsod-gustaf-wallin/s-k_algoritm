def search(value:, array:)
  ny_array = []
  bryt_värde = 0
  dupe = 0
  value = value

  while bryt_värde == 0

    if value < array.last
      puts "Finns inte med :(, alldeles för lågt yo"
      break
    end
    if value > array.first
      puts "Finns inte med :( alldeles för högt yo"
      break
    end

    if dupe == 0


      ny_array << array.dup
      dupe = dupe + 1

    end
    number_1 = array.length
    number_1 = number_1/2

    if value == number_1
      break

    end


    if number_1 > value
      array.reverse_each do |delete|
        if delete >= number_1
          array.delete(delete)

        end
      end
    end


    if number_1 < value
      array.reverse_each do |delete|
        if delete <= number_1
          array.delete(number_1)

        end
      end
    end


    if array.length == 1 or 2
      array.reverse_each do |found_you|
        if found_you != value
          array.delete(found_you)


        end
      end

    end
    if array.length <= 1

      finns_du = array[0]
      if finns_du.to_i != value

        puts "Finns inte med :("
        break
      end
      puts array
      bryt_värde = bryt_värde + 1
    end
  end

end

v = -34256789
a = [1, 2, 3, 4, 5, 7, 8, 9, 10, 20, 4000, 515151, 151235126216]

search(value: v, array: a)
bafaef
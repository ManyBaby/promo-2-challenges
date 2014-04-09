require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array

  students.push(name)

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list

new_students = wagon_sort(students)

puts "Congratulations! Your Wagon has #{students.count - 1 } students:"
print "- "

print new_students[1]

  for x in (2...(new_students.length - 1))
    print ", " + new_students[x]
  end

print " and #{new_students.last}"


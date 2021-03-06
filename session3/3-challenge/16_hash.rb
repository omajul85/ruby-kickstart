# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# Print to stdout, each element in a hash based linked list.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# print_list head                    # >> "1\n"
# head = {:data => 2, :next => head}
# print_list head                    # >> "2\n1\n"
# head = {:data => 3, :next => head}
# print_list head                    # >> "3\n2\n1\n"
# head = {:data => 4, :next => head}
# print_list head                    # >> "4\n3\n2\n1\n"
# head = {:data => 5, :next => head}
# print_list head                    # >> "5\n4\n3\n2\n1\n"
# head = {:data => 6, :next => head}
# print_list head                    # >> "6\n5\n4\n3\n2\n1\n"

# Recursive method that creates a string with the data from the list
def find_data(list, string = "")
    if list[:next] == nil
        string += "#{list[:data]}\n"
        return string
    else
        find_data(list[:next], string += "#{list[:data]}\n")
    end
end

def print_list(list)
    puts find_data(list)
end

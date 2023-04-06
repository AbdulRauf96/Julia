# Create variable monday_distance
monday_distance = 4500

# Create variable monday_time
monday_time = 28.9

# Create variable wednesday_distance
wednesday_distance = 6000

# Create variable wednesday_time
wednesday_time = 37.1

# Calculate the total distance in miles
total_distance = (monday_distance + wednesday_distance)/1609

# Calculate the total run time in hours
total_time = (monday_time + wednesday_time)/60

# Calculate the average speed
average_speed = total_distance / total_time

# Print the average speed
println(average_speed)

# Printing the type of average_speed
println(typeof(average_speed))

# Changing the type of a variable
d_string = raw"3.1415"

# Convert d_string into a float
d_string = "3.1415"
d_float = parse(Float64, d_string)

println("d_float is a ", typeof(d_float))

# Working with strings

# Create a string
grades = "AAAAA"

# Index drama grade
drama = grades[end]

# Print drama grade with interpolation
println("Your drama grade is $drama")

# Print mathematics grade with interpolation and parentheses
println("Your mathematics grade is $(grades[1])")

#Slicing Strings
order_data = "| customer-id: 13415 | order-number: 000019034 |";
# Slice out the customer-id
customer_id = order_data[16:20]

# Slice out the order-number
order_number = order_data[38:46]
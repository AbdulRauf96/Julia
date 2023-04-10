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

# Working with Arrays and Vectors

# Create array of the days of the week
week_days = ["Monday","Tuesday","Wednesday","Thursday","Friday"]

# Create array of hours worked
hours_worked = [9,7.5,8,9.5,7]

# Print the type of the week days arrays
println(typeof(week_days))

# Print the type of the hours worked array
println(typeof(hours_worked))

# Using index to access elements of an array
# Print the first element of week_days
println(week_days[1])

# Print the last element of week_days
println(week_days[end])

#Adding elements to an array

# Create an empty array
my_array = []

# Add the number 1 to my_array
push!(my_array, 1)

# Add the number 2 to my_array
push!(my_array, 2)

println(my_array)

#Adding multiple elements to an array

# Create an empty array
my_array = []

# Add the numbers 1, 2, and 3 to my_array
append!(my_array, [1, 2, 3])

println(my_array)

runtimes = [35.1, 34.0, 34.31, 32.8, 32.04, 33.66, 32.41, 32.32, 33.37, 31.4, 31.4];
new_runtimes = [30.44, 31.21, 30.38, 30.52, 30.2];

# Remove the duplicated value
duplicated_value = pop!(runtimes)

# Append new runtimes and new_runtimes
append!(runtimes,new_runtimes)

println("Duplicated value $duplicated_value")
println("All run times: $runtimes")

# Removing elements from an array

# Create an array
my_array = [1, 2, 3]

# Remove the last element of my_array
pop!(my_array)

# Remove the first element of my_array
# shift!(my_array)

println(my_array)

# Create an array of zeros similar to np.zeros

# Create an array of zeros
my_array = zeros(Float64, 100)

# Print my_array
println(my_array)

# Create an array of ones similar to np.ones

# Create an array of ones
my_array = ones(Float64, 100)

# Print my_array
println(my_array)

# Basic Array Operations

# Create an array of 100 random numbers
my_array = rand(100)

length(my_array)

println("Multiply my_array by 2: ", my_array .* 2)

# Conditional Statements

# Create a variable
n = 10

# Check if n is the correct type
if typeof(n)==Int64
	# Print n is the correct type
	println("n is the correct type")
# Use an else statement to print if n is not the correct type
else
	println("This script only works on integers")
# Finish the conditional statement
end

println(n)

# Create a function
function power(x, y)
    # Return x to the power of y
    return x^y
end

# Call the function
x_array = [1, 2, 3, 4, 5]
y_array = [2, 3, 4, 5, 6]
z_array = power.(x_array, y_array)

# Mutating Functions

# Create an array
grades_array = ["ABCDE", "BCDAE", "CDEBA", "DFEAC", "EDCBA"]

# Create a function
# Write a grade mutating function
function topstudent!(x)
	x[4] = "AAAA"
end

println("Your previous grades were $(grades_array[4])")

# Call the function on grades_array
topstudent!(grades_array)

println("Your new grades are $(grades_array[4])")

# Loops

# Create an array
my_array = [1, 2, 3, 4, 5]

# Create a for loop
for i in my_array
	# Print the value of i
	println(i)
end

# Create a while loop

# Create a variable
i = 1

# Create a while loop
while i <= 5
	# Print the value of i
	println(i)
	# Increment i
	i += 1
end

# Import vs Using
# Import is used to import a module
# Using is used to import a function from a module

# Import the Statistics module
using Statistics

# Create an array
my_array = [1, 2, 3, 4, 5]

# Calculate the mean of my_array
mean(my_array)

println("The mean of my_array is $(mean(my_array))")

# Importing data from a CSV file and creating a DataFrame

# Import the CSV module
using CSV
#Import the DataFrames module
using DataFrames

file_contents = CSV.File("patients.csv")
df_patients = DataFrame(file_contents)
println(first(df_patients, 5))

# Load the book review data
df_books = DataFrame(CSV.File("books.csv"))

# Print column names
println(names(df_books))

# Find number of rows and columns
println(size(df_books))

# Julia is a 1-indexed language so the first row is row 1

# Print the first 5 rows of the title column
println(first(df_books[:, 1], 5))

# In Julia to slice up to a certain index you use the colon operator using the syntax start:stop

# Print the first 5 rows of the title column
println(df_books[1:5, 1])

# Descriptive Statistics

# Find the total number of ratings
total_reviews = sum(df_books[:,"ratings_count"])

println("Total number of reviews is $total_reviews")

# Summarize the DataFrame
println(describe(df_patients))	

# Find the mean heart rate
mean_hr = mean(df_patients.heartrate)

# Find the standard deviation of heart rates
std_hr = std(df_patients.heartrate)

# Calculate the normalized array of heart rates
norm_heartrate = (df_patients.heartrate .- mean_hr) ./ std_hr

# Add the normalized heartrate to the DataFrame
df_patients[!, "norm_heartrate"] = norm_heartrate

println(last(df_patients, 5))

# Filtering Data in Julia

# Filter to where the sex is female
df_female = filter(row -> row.sex == "female", df_patients)


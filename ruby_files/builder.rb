# Template for the code

#   Headers
#   Constants
#   Structures
#   Main
#   Drawing
#   Math
#   Get/Set
#   Input/Output


def builder
  files = ["headers.txt", "constants.txt", "structures.txt",
          "main.txt", "drawing_functions.txt", "math.txt",
          "get_set.txt", "input_output.txt"]
  path_to_files = "../txt_files/"
  final_file = File.open("../cerdec.txt", "w")
  files.each do |file|
    current_file = File.open(path_to_files + file, "r")
    file_data = current_file.readlines
    file_data.each do |line|
      final_file.write(line)
    end
    final_file.write("\n\n")
    current_file.close
  end
  final_file.close
end

builder
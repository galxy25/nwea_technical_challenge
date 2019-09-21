require_relative 'flatten'
# Class for running tests against module Flatten
class Test
  include Flatten
  def run
    happy_path
    obvious_sad_path
    subtle_sad_path
  end

  def happy_path
    flattened_list = [5, 6, 7, 8, 9]
    nested_list = [5, 6, [7, 8], [9]]
    happy_path_result = flatten(nested_list)
    if happy_path_result != flattened_list
      puts <<-TESTOUTPUT
Failed happy path testing, expected input
#{nested_list}
flattened to be #{flattened_list}
Got #{happy_path_result}
      TESTOUTPUT
    else
      puts <<-TESTOUTPUT
Passed happy path testing flattend
#{nested_list}
to #{happy_path_result}
      TESTOUTPUT
    end
  end

  def obvious_sad_path
    obvious_sad_path_list = { key: :NotAList }
    begin
      obvious_sad_path_result = flatten(obvious_sad_path_list)
      puts <<-TESTOUTPUT
Failed obvious sad path testing trying to flatten
#{obvious_sad_path_list}
to #{obvious_sad_path_result}
      TESTOUTPUT
    rescue StandardError => error
      puts <<-TESTOUTPUT
Passed obvious sad path testing trying to flatten
#{obvious_sad_path_list}
threw #{error}
      TESTOUTPUT
    end
  end

  def subtle_sad_path
    subtle_sad_path_list = [5, [6, 7], 8, [9, 'a'], 10]
    begin
      subtle_sad_path_result = flatten(subtle_sad_path_list)
      puts <<-TESTOUTPUT
Failed subtle sad path testing trying to flatten
#{subtle_sad_path_list}
to #{subtle_sad_path_result}
      TESTOUTPUT
    rescue StandardError => error
      puts <<-TESTOUTPUT
Passed subtle sad path testing trying to flatten
#{subtle_sad_path_list}
threw #{error}
      TESTOUTPUT
    end
  end
end

begin
  Test.new.run
rescue StandardError => error
  puts "Error running test #{error}"
end

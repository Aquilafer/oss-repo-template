# CMake generated Testfile for 
# Source directory: /common/College/3S1-Junior/Open Source/git_stuff/oss-repo-template/labs/lab-05/cmake/Tests/Tutorial/Step4
# Build directory: /common/College/3S1-Junior/Open Source/git_stuff/oss-repo-template/labs/lab-05/cmake/Tests/Tutorial/Step4
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Runs "/common/College/3S1-Junior/Open Source/git_stuff/oss-repo-template/labs/lab-05/cmake/Tests/Tutorial/Step4/Tutorial" "25")
add_test(Usage "/common/College/3S1-Junior/Open Source/git_stuff/oss-repo-template/labs/lab-05/cmake/Tests/Tutorial/Step4/Tutorial")
set_tests_properties(Usage PROPERTIES  PASS_REGULAR_EXPRESSION "Usage:.*number")
add_test(Comp25 "/common/College/3S1-Junior/Open Source/git_stuff/oss-repo-template/labs/lab-05/cmake/Tests/Tutorial/Step4/Tutorial" "25")
set_tests_properties(Comp25 PROPERTIES  PASS_REGULAR_EXPRESSION "25 is 5")
add_test(Comp-25 "/common/College/3S1-Junior/Open Source/git_stuff/oss-repo-template/labs/lab-05/cmake/Tests/Tutorial/Step4/Tutorial" "-25")
set_tests_properties(Comp-25 PROPERTIES  PASS_REGULAR_EXPRESSION "-25 is [-nan|nan|0]")
add_test(Comp0.0001 "/common/College/3S1-Junior/Open Source/git_stuff/oss-repo-template/labs/lab-05/cmake/Tests/Tutorial/Step4/Tutorial" "0.0001")
set_tests_properties(Comp0.0001 PROPERTIES  PASS_REGULAR_EXPRESSION "0.0001 is 0.01")
subdirs("MathFunctions")

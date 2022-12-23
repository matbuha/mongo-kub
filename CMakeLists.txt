cmake_minimum_required(VERSION 3.10)
project(mongodb-app)

# Find the MongoDB C++ driver
find_package(mongocxx REQUIRED)

# Add the source files
add_executable(mongodb-app main.cpp)

# Link the MongoDB C++ driver to the executable
target_link_libraries(mongodb-app PRIVATE mongocxx::mongocxx)

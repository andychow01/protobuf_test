cmake_minimum_required(VERSION 3.0)
project(protobuf_test)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")


include_directories("${CMAKE_CURRENT_SOURCE_DIR}"
                    "${CMAKE_CURRENT_SOURCE_DIR}/cpp_out/"
                    "${CMAKE_CURRENT_SOURCE_DIR}/../common/protobuf-3.2.0/include/"
                    )
link_directories("${CMAKE_CURRENT_SOURCE_DIR}/../common/protobuf-3.2.0/lib")

add_executable(add_person_cpp add_person.cc cpp_out/addressbook.pb.cc)
add_executable(list_people_cpp list_people.cc cpp_out/addressbook.pb.cc)
target_link_libraries(add_person_cpp protobuf)
target_link_libraries(list_people_cpp protobuf)



cmake_minimum_required(VERSION 2.8.3)
project(beginner_tutorials )
# find_package( OpenCV REQUIRED )


## Find catkin and any catkin packages
find_package(
    catkin  
    REQUIRED 
    COMPONENTS 
    roscpp 
    rospy 
    std_msgs 
    genmsg
    sensor_msgs
    cv_bridge
    image_transport
    image_geometry
    )
# find_package(OpenCV REQUIRED)
## Declare ROS messages and services
add_message_files(FILES Num.msg)
add_service_files(FILES AddTwoInts.srv)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()


include_directories(include ${catkin_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS})

# add_executable( app "src/kamera.cpp" )
# target_link_libraries( app ${OpenCV_LIBS} )

add_executable(kamera src/kamera.cpp)
target_link_libraries(kamera ${catkin_LIBRARIES})
add_dependencies(kamera beginner_tutorials_generate_messages_cpp)

add_executable(pc src/pc.cpp)
target_link_libraries(pc ${catkin_LIBRARIES})
add_dependencies(pc beginner_tutorials_generate_messages_cpp)

add_executable(motor src/motor.cpp)
target_link_libraries(motor ${catkin_LIBRARIES})
add_dependencies(motor beginner_tutorials_generate_messages_cpp)


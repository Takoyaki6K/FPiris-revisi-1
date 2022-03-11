#include "ros/ros.h"
#include "std_msgs/Int16.h"
#include <iostream>

using namespace std;

ros::Publisher lebar;

class lebarBenda{
  private:
  int lebar;

  public:
  //setter
  void setLebar(int _l){lebar = _l;}
  //getter
  int getLebar(){return lebar;}
};


int main(int argc, char **argv)
{
  lebarBenda ukuran;
  ros::init(argc, argv, "lebar");
  ros::NodeHandle n;
  lebar = n.advertise<std_msgs::Int16>("lebar", 1000);
  ros::Rate loop_rate(10);


  while (ros::ok())
  {
    std_msgs::Int16 angka_lebar;
    int ukuranLebar;
    cout << "masukkan lebar = ";
    cin >> ukuranLebar;
    ukuran.setLebar(ukuranLebar);
    angka_lebar.data = ukuran.getLebar();
    // ROS_INFO("angka lebar %d" , angka_lebar.data);

    
    lebar.publish(angka_lebar);

    ros::spinOnce();

    loop_rate.sleep();
  }


  return 0;
}

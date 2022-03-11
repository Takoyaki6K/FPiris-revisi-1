#include "ros/ros.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float32.h"
#include <iostream>

using namespace std;
ros::Subscriber centerX;
ros::Subscriber centerY;



class data_dari_kamera{
  private:
  float koorX, koorY;
  int input_target, input_KecepatanX, input_KecepatanY, input_kecepatanTheta;
  
  ros::Publisher center_bola_x;
  ros::Publisher center_bola_y;
  ros::Publisher target_sudut;
  ros::Publisher kecepatan_bola_x;
  ros::Publisher kecepatan_bola_y;
  ros::Publisher kecepatan_theta;

  std_msgs::Int16 titikX;
  std_msgs::Int16 titikY;
  std_msgs::Int16 target;
  std_msgs::Int16 kecepatanX;
  std_msgs::Int16 kecepatanY;
  std_msgs::Int16 kecepatanTheta;

  

  public :
  void setkoorX(int _koorX){koorX=_koorX;};
  void setkoorY(int _koorY){koorY= _koorY;};

  // void input_target_kecepatanxytheta(){
  //   cout << "masukkan target sudut = ";
  //   cin >> input_target;
  //   cout << "masukkan kecepatan x = ";
  //   cin >> input_KecepatanX;
  //   cout << "masukkan target sudut = ";
  //   cin >> input_KecepatanY;
  //   cout << "masukkan target sudut = ";
  //   cin >> input_kecepatanTheta;
  // };


  void pub_data(ros::NodeHandle *nh){
    center_bola_x = nh->advertise<std_msgs::Int16>("center_bola_x", 1000);
    center_bola_y = nh->advertise<std_msgs::Int16>("center_bola_y", 1000);
    target_sudut = nh->advertise<std_msgs::Int16>("target_sudut", 1000);
    kecepatan_bola_x = nh->advertise<std_msgs::Int16>("kecepatan_bola_x", 1000);
    kecepatan_bola_y = nh->advertise<std_msgs::Int16>("kecepatan_bola_y", 1000);
    kecepatan_theta = nh->advertise<std_msgs::Int16>("kecepatan_theta", 1000);

    // this->input_target_kecepatanxytheta();

    titikX.data = koorX;
    titikY.data = koorY;
    // target.data = input_target;
    // kecepatanX.data = input_KecepatanX;
    // kecepatanY.data = input_KecepatanY;
    // kecepatanTheta.data = input_kecepatanTheta;


    target.data = -43;
    kecepatanX.data = 8;
    kecepatanY.data = 9;
    kecepatanTheta.data = 6;

    ROS_INFO("data titik x = %d; titik Y = %d ;target sudut = %d ", titikX.data, titikY.data, target.data);
    ROS_INFO("kecepatan X = %d ;kecepatan Y = %d ; kecepatan theta =%d", kecepatanX.data, kecepatanY.data, kecepatanTheta.data );
    center_bola_x.publish(titikX);
    center_bola_y.publish(titikY);
    target_sudut.publish(target);
    kecepatan_bola_x.publish(kecepatanX);
    kecepatan_bola_y.publish(kecepatanY);
    kecepatan_theta.publish(kecepatanTheta);

  };
};

data_dari_kamera data;
void callBackX(const std_msgs::Float32::ConstPtr& xTitik){
  data.setkoorX( xTitik -> data) ;
  // cout << "ini data x dari pc " << xTitik -> data << endl;
}
void callBackY(const std_msgs::Float32::ConstPtr& yTitik){
  data.setkoorY( yTitik -> data) ;
}

int main(int argc, char **argv){
    ros::init(argc, argv, "iniPc");
    ros::NodeHandle nh;
    centerX = nh.subscribe("centerX", 1000, callBackX);
    centerY = nh.subscribe("centerY", 1000, callBackY);

    ros::Rate loop_rate(1);
    while(ros::ok()){
    data.pub_data(&nh);
    ros::spinOnce();
    loop_rate.sleep();
    }
      return 0;
}

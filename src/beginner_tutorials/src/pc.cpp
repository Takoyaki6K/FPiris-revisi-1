#include "ros/ros.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Float32.h"
#include <iostream>
#include "beginner_tutorials/TitikTengahBola.h"
#include "beginner_tutorials/DataPckeMotor.h"


using namespace std;
ros::Subscriber data_Kamera;
ros::Publisher pub_Motor;


class data_dari_kamera{
  private:
  float koorX, koorY;
  int input_target, input_KecepatanX, input_KecepatanY, input_kecepatanTheta;

  public :
  // set data x dan y
  void setkoorXY(int _koorX, int _koorY){
    koorX=_koorX;
    koorY= _koorY;
    };



  // masukkan data ke msg dan publish ke motor
  void pub_data(ros::NodeHandle *nh){
    pub_Motor = nh->advertise<beginner_tutorials::DataPckeMotor>("Kirim_ke_motor", 1000);

    beginner_tutorials::DataPckeMotor dataPc;

    dataPc.titikX = koorX;
    dataPc.titikY = koorY;
   
    dataPc.target_sudut = -143;
    dataPc.kecepatan_x = 5;
    dataPc.kecepatan_y = 5;
    dataPc.kecepatan_theta = -3;

    pub_Motor.publish(dataPc); // publish ke motor
    
  };

 
};

data_dari_kamera dataXY;

// ini callback sub
void callBackTitik(const beginner_tutorials::TitikTengahBola::ConstPtr& dataTitik){
  dataXY.setkoorXY( dataTitik -> centerX, dataTitik -> centerY );
}

int main(int argc, char **argv){
    ros::init(argc, argv, "iniPc");
    ros::NodeHandle nh;
    data_Kamera = nh.subscribe("data_X_Y", 1000, callBackTitik);//subs data_kamera
    ros::Rate loop_rate(10);
    while(ros::ok()){
    dataXY.pub_data(&nh); // panggil fungsi untuk publish
    ros::spinOnce();
    loop_rate.sleep();
    }
      return 0;
}

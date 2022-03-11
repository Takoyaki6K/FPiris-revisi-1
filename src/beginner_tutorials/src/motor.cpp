#include "ros/ros.h"
#include "std_msgs/Int16.h"
#include "std_msgs/Int16.h"
#include <iostream>

using namespace std; 

// subscriber
ros::Subscriber center_bola_x;
ros::Subscriber center_bola_y;
ros::Subscriber target_sudut;
ros::Subscriber kecepatan_bola_x;
ros::Subscriber kecepatan_bola_y;
ros::Subscriber kecepatan_theta;

class data_dari_pc{
    private:
    int x, y, sudut, speedX, speedY, speedTheta, awalX = 0 , awalY = 0, awalSpeedTheta = 0;

    public:

    void setX(int _x){x = _x;}
    void setY(int _y){y = _y;}
    void setsudut(int _sudut){sudut = _sudut;}
    void setspeedX(int _speedX){speedX = _speedX;}
    void setspeedY(int _speedY){speedY = _speedY;}
    void setspeedTheta(int _speedTheta){speedTheta = _speedTheta;}

    void takeAll(){
        ros::Rate loop_rate(2);

        // int tempX ,tempY ;
        while(ros::ok()){
        ROS_INFO ("posisi sekarang berada di x = %d ; y= %d ", awalX, awalY);
        awalX += speedX;
        awalY += speedY;   
        if (awalX > x){    
            awalX = x;
        }
        if (awalY > y){
            awalY = y;
        }
        // if (awalX == x && awalY == y && x != 0 && y != 0){
        //     ros::shutdown();
        // }


          

        ros::spinOnce();

        loop_rate.sleep();
        }
        
    }

};

data_dari_pc data;
void tengah_x(const std_msgs::Int16::ConstPtr& titikX){
    // cout << titikX->data << endl;
    data.setX(titikX->data);
    // data.takeAll();
    // ROS_INFO("data %f ",titikX->data);
}
void tengah_y(const std_msgs::Int16::ConstPtr& titikY){
    // cout << titikY->data << endl;
    data.setY(titikY->data);
    // data.takeAll();

    // ROS_INFO("data %f ",titikY->data);
    

}
void targetSudut(const std_msgs::Int16::ConstPtr& target){
    // cout << target->data << endl;
    // ROS_INFO("data %f ",target->data);
    data.setsudut(target->data);
    // data.takeAll();


}
void kecepatan_x(const std_msgs::Int16::ConstPtr& kecepatanX){
    // cout << kecepatanX->data << endl;
    // ROS_INFO("data %f ",kecepatanX->data);
    data.setspeedX(kecepatanX->data);
    // data.takeAll();

}
void kecepatan_y(const std_msgs::Int16::ConstPtr& kecepatanY){
    // cout << kecepatanY->data << endl;
    // ROS_INFO("data %f ",kecepatanY->data);
    data.setspeedY(kecepatanY->data);
    // data.takeAll();


}
void theta(const std_msgs::Int16::ConstPtr& kecepatanTheta){
    // cout << kecepatanTheta->data << endl;
    // ROS_INFO("data %f ",kecepatanTheta->data);
    data.setspeedTheta(kecepatanTheta->data);
    


}

int main(int argc, char **argv){
    ros::init(argc, argv, "motor");
    ros:: NodeHandle n;

    center_bola_x = n.subscribe("center_bola_x", 1000, tengah_x);
    center_bola_y = n.subscribe("center_bola_y", 1000, tengah_y);
    target_sudut = n.subscribe("target_sudut", 1000, targetSudut);
    kecepatan_bola_x = n.subscribe("kecepatan_bola_x", 1000, kecepatan_x);
    kecepatan_bola_y = n.subscribe("kecepatan_bola_y", 1000, kecepatan_y);
    kecepatan_theta = n.subscribe("kecepatan_theta", 1000, theta);


    data.takeAll();


    ros::spin();

    return 0;
}
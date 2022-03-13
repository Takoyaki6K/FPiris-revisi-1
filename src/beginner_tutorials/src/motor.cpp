#include "ros/ros.h"
#include "std_msgs/Int16.h"
#include <iostream>
#include "beginner_tutorials/DataPckeMotor.h"

using namespace std; 
// data dimasukkan msg (sudah)
// kasih dokumentasi (sudah)
//algorithm sudutnya dibenerin (insyaallah sudah)

// subscriber
ros::Subscriber sub_dataPc;


class data_dari_pc{
    private:
    int x, y, sudut, speedX, speedY, speedTheta, awalX = 1000 , awalY = 1000, awalTheta = 0 ;

    public:

    void setX(int _x){x = _x;}
    void setY(int _y){y = _y;}
    void setsudut(int _sudut){sudut = _sudut;}
    void setspeedX(int _speedX){speedX = _speedX;}
    void setspeedY(int _speedY){speedY = _speedY;}
    void setspeedTheta(int _speedTheta){speedTheta = _speedTheta;}

    void takeAll(){

        ros::Rate loop_rate(10);
        while(ros::ok()){
        printf("==========================================\n");
        printf("posisi X = %d \n", awalX);
        printf("posisi Y = %d \n", awalY);
        printf("Sudut    = %d \n", awalTheta);
        printf("==========================================\n");

        // mengkondisikan kapan x y bertambah dan berkurang
        if (awalX > x){ 
            awalX = awalX - speedX;

        }else {
            awalX = awalX + speedX;
        }
        if (awalY > y){ 
            awalY = awalY -  speedY;

        }else {
            awalY = awalY + speedY;
        }

        // jika x atau y sudah berada pada range tertentu maka dapat disimpulkan sampai tujuan
        if (awalX < x+10 && awalX > x-10 ){    //diberi range dengan toleransi jika awalX berada di range x + 10 dan x-10 
            awalX = x;
        }
        if (awalY < y+10 && awalY > y-10 ){     //diberi range dengan toleransi 
            awalY = y;
        }

        // logika sudut
        if (awalTheta < sudut+5 && awalTheta > sudut-5) { // diberi range dan toleransi 
            awalTheta = sudut;
        }else{
            awalTheta += speedTheta;

            if (awalTheta > 179){ // awaltheta melebihi 179 akan dikurangi 360
            awalTheta = awalTheta - 360;
            }
            if (awalTheta < -179){ // awaltheta kurang dari -179 akan ditambah 360
            awalTheta = awalTheta + 360;
            }
        }

        ros::spinOnce();
        loop_rate.sleep();
          

        }
        
    }

};

data_dari_pc data;
void ambilData(const beginner_tutorials::DataPckeMotor::ConstPtr& dataPc){
    data.setX(dataPc->titikX);
    data.setY(dataPc->titikY);
    data.setsudut(dataPc->target_sudut);
    data.setspeedX(dataPc->kecepatan_x);
    data.setspeedY(dataPc->kecepatan_y);
    data.setspeedTheta(dataPc->kecepatan_theta);
}
int main(int argc, char **argv){
    ros::init(argc, argv, "motor");
    ros:: NodeHandle n;

    sub_dataPc = n.subscribe("Kirim_ke_motor", 1000, ambilData);
    data.takeAll();


    ros::spin();

    return 0;
}
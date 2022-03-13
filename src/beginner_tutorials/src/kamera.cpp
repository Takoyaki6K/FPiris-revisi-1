#include <bits/stdc++.h>
#include <opencv2/opencv.hpp> 
#include "ros/ros.h"
#include "std_msgs/Float32.h"
#include "beginner_tutorials/TitikTengahBola.h"

using namespace std;
using namespace cv;

ros::Publisher data_Kamera;

class classOpenCV{
    private:
    Mat img, img_resized, img_hsv, thresh;

    // ini value HSV
    int L_H = 0;
    int U_H = 77;
    int L_S = 73;
    int U_S = 247;
    int L_V = 83;
    int U_V = 228;


    public:

    // dapatkan data titik tengah bola
    void getCircleInObject(string file){
        img = imread(file);
        resize(img, img_resized, Size(), 0.7, 0.7);
        cvtColor(img_resized, img_hsv, COLOR_BGR2HSV);

        inRange(img_hsv, Scalar(L_H, L_S, L_V), Scalar(U_H, U_S, U_V), thresh);

        vector<vector<Point>> contours;
            findContours(thresh, contours, RETR_TREE, CHAIN_APPROX_NONE);

            for(int i = 0; i < contours.size(); i++)
            {
                vector<Point>contours_new;
                Point2f center;
                float radius;
                contours_new = contours[i];
                minEnclosingCircle(contours_new, center, radius);
                if(radius> 30 && radius < 100) {
                    circle(img_resized, center, radius, Scalar(255, 0, 0), 3);

                    pub_data_x_y(center.x, center.y); //panggil fungsi untuk publish x y

                }

            }
            waitKey(0);
    
    };

    //publish data x dan y
    void pub_data_x_y(int x, int y){
        ros::NodeHandle n;
        beginner_tutorials::TitikTengahBola dataTitik;
        
        // yang ada di dalam tanda petik harus sama antara pub dan sub
        data_Kamera = n.advertise<beginner_tutorials::TitikTengahBola>("data_X_Y", 1000); 
                                                            
        // data x dan y dimasukkan ke msg
        dataTitik.centerX = y;
        dataTitik.centerY = x;
        ros::Rate loop_rate(10);
    
        while(ros::ok()){

        data_Kamera.publish(dataTitik); // publish ke pc
        ros::spinOnce();

        loop_rate.sleep();
        }
    }

    

};

int main(int argc, char** argv) {
    classOpenCV myClass;
    ros::init(argc, argv, "kamera");
    myClass.getCircleInObject("/home/raihanramadan/catkin_ws/src/beginner_tutorials/src/gambarBola/img5.jpg");
    return 0;
}
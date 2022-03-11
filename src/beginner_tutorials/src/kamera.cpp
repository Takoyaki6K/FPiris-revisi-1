#include <bits/stdc++.h>
#include <opencv2/opencv.hpp> 
#include "ros/ros.h"
#include "std_msgs/Float32.h"

using namespace std;
using namespace cv;

ros::Publisher centerX;
ros::Publisher centerY;

class classOpenCV{
    private:
    Mat img, img_resized, img_hsv, thresh;

    int L_H = 0;
    int U_H = 77;
    int L_S = 73;
    int U_S = 247;
    int L_V = 83;
    int U_V = 228;

    ros::Publisher centerX;
    ros::Publisher centerY;


    std_msgs::Float32 xTitik;
    std_msgs::Float32 yTitik;
    public:
    void getCircleInObject(string halo){
        img = imread(halo);
        resize(img, img_resized, Size(), 0.7, 0.7);
        // resize(img, img_resized, Size(800, 600), INTER_LINEAR);
        cvtColor(img_resized, img_hsv, COLOR_BGR2HSV);

        //value HSV
        
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
                    // contours.push_back(contours_new);
                    circle(img_resized, center, radius, Scalar(255, 0, 0), 3);

                    pub_data_x_y(center.x, center.y); //panggil fungsi untuk publish x y

                }

            }
            //  imshow("hualo", thresh);
            // imshow("gambar bola", img_resized);
            waitKey(0);
    
    };

    void pub_data_x_y(int x, int y){
        ros::NodeHandle n;
        
        centerX = n.advertise<std_msgs::Float32>("centerX", 1000);
        centerY = n.advertise<std_msgs::Float32>("centerY", 1000);

        xTitik.data = y;
        yTitik.data = x;
        ros::Rate loop_rate(1);

        while(ros::ok()){
        
        ROS_INFO("data kamera = %2f = %2f  ", xTitik.data, yTitik.data);
                    
        centerX.publish(xTitik);
        centerY.publish(yTitik);
        ros::spinOnce();

        loop_rate.sleep();
        }
    }

    

};

int main(int argc, char** argv) {
    classOpenCV myClass;
    ros::init(argc, argv, "kamera");
    ros::NodeHandle n;

    std_msgs::Float32 xTitik;
    std_msgs::Float32 yTitik;
    
    centerX = n.advertise<std_msgs::Float32>("centerX", 1000);
    centerY = n.advertise<std_msgs::Float32>("centerY", 1000);

    myClass.getCircleInObject("/home/raihanramadan/catkin_ws/src/beginner_tutorials/src/gambarBola/img2.jpg");

    return 0;
}
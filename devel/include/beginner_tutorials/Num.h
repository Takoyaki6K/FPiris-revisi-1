// Generated by gencpp from file beginner_tutorials/Num.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_NUM_H
#define BEGINNER_TUTORIALS_MESSAGE_NUM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct Num_
{
  typedef Num_<ContainerAllocator> Type;

  Num_()
    : centerX(0)
    , centerY(0)  {
    }
  Num_(const ContainerAllocator& _alloc)
    : centerX(0)
    , centerY(0)  {
  (void)_alloc;
    }



   typedef int8_t _centerX_type;
  _centerX_type centerX;

   typedef int8_t _centerY_type;
  _centerY_type centerY;





  typedef boost::shared_ptr< ::beginner_tutorials::Num_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::Num_<ContainerAllocator> const> ConstPtr;

}; // struct Num_

typedef ::beginner_tutorials::Num_<std::allocator<void> > Num;

typedef boost::shared_ptr< ::beginner_tutorials::Num > NumPtr;
typedef boost::shared_ptr< ::beginner_tutorials::Num const> NumConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::Num_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::Num_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::Num_<ContainerAllocator1> & lhs, const ::beginner_tutorials::Num_<ContainerAllocator2> & rhs)
{
  return lhs.centerX == rhs.centerX &&
    lhs.centerY == rhs.centerY;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::Num_<ContainerAllocator1> & lhs, const ::beginner_tutorials::Num_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Num_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Num_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Num_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Num_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "11a52276c7f1046a3434c96c7efb5602";
  }

  static const char* value(const ::beginner_tutorials::Num_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x11a52276c7f1046aULL;
  static const uint64_t static_value2 = 0x3434c96c7efb5602ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/Num";
  }

  static const char* value(const ::beginner_tutorials::Num_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::Num_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 centerX\n"
"int8 centerY\n"
;
  }

  static const char* value(const ::beginner_tutorials::Num_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::Num_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.centerX);
      stream.next(m.centerY);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Num_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::Num_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::Num_<ContainerAllocator>& v)
  {
    s << indent << "centerX: ";
    Printer<int8_t>::stream(s, indent + "  ", v.centerX);
    s << indent << "centerY: ";
    Printer<int8_t>::stream(s, indent + "  ", v.centerY);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_NUM_H

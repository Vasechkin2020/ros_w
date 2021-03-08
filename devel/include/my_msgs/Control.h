// Generated by gencpp from file my_msgs/Control.msg
// DO NOT EDIT!


#ifndef MY_MSGS_MESSAGE_CONTROL_H
#define MY_MSGS_MESSAGE_CONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_msgs
{
template <class ContainerAllocator>
struct Control_
{
  typedef Control_<ContainerAllocator> Type;

  Control_()
    : speed(0)
    , radius(0)
    , napravl(0)
    , startStop(0)
    , connect_flag(0)  {
    }
  Control_(const ContainerAllocator& _alloc)
    : speed(0)
    , radius(0)
    , napravl(0)
    , startStop(0)
    , connect_flag(0)  {
  (void)_alloc;
    }



   typedef uint32_t _speed_type;
  _speed_type speed;

   typedef uint32_t _radius_type;
  _radius_type radius;

   typedef uint32_t _napravl_type;
  _napravl_type napravl;

   typedef uint32_t _startStop_type;
  _startStop_type startStop;

   typedef uint32_t _connect_flag_type;
  _connect_flag_type connect_flag;





  typedef boost::shared_ptr< ::my_msgs::Control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_msgs::Control_<ContainerAllocator> const> ConstPtr;

}; // struct Control_

typedef ::my_msgs::Control_<std::allocator<void> > Control;

typedef boost::shared_ptr< ::my_msgs::Control > ControlPtr;
typedef boost::shared_ptr< ::my_msgs::Control const> ControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_msgs::Control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_msgs::Control_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_msgs::Control_<ContainerAllocator1> & lhs, const ::my_msgs::Control_<ContainerAllocator2> & rhs)
{
  return lhs.speed == rhs.speed &&
    lhs.radius == rhs.radius &&
    lhs.napravl == rhs.napravl &&
    lhs.startStop == rhs.startStop &&
    lhs.connect_flag == rhs.connect_flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_msgs::Control_<ContainerAllocator1> & lhs, const ::my_msgs::Control_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::my_msgs::Control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_msgs::Control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_msgs::Control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_msgs::Control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_msgs::Control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_msgs::Control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_msgs::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "99987f4c5a18162ec4022640f010b0e4";
  }

  static const char* value(const ::my_msgs::Control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x99987f4c5a18162eULL;
  static const uint64_t static_value2 = 0xc4022640f010b0e4ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_msgs::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_msgs/Control";
  }

  static const char* value(const ::my_msgs::Control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_msgs::Control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Структура топика с моими данными получаемыми с нижнего уровня Control\n"
"#	uint32_t speed;		   // =0..100 положение слайдера\n"
"#	uint32_t radius;	   // =0..100 положение слайдера\n"
"#	uint32_t napravl;	   // =0 если переключатель в положении A, =1 если в положении B, =2 если в положении C, ...\n"
"#	uint32_t startStop;	   // =0 если переключатель в положении A, =1 если в положении B, =2 если в положении C, ...\n"
"#	uint32_t connect_flag; // =1 if wire connected, else =0\n"
"\n"
"    uint32 speed\n"
"	uint32 radius\n"
"	uint32 napravl\n"
"	uint32 startStop\n"
"	uint32 connect_flag\n"
;
  }

  static const char* value(const ::my_msgs::Control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_msgs::Control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speed);
      stream.next(m.radius);
      stream.next(m.napravl);
      stream.next(m.startStop);
      stream.next(m.connect_flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_msgs::Control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_msgs::Control_<ContainerAllocator>& v)
  {
    s << indent << "speed: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.speed);
    s << indent << "radius: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.radius);
    s << indent << "napravl: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.napravl);
    s << indent << "startStop: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.startStop);
    s << indent << "connect_flag: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.connect_flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_MSGS_MESSAGE_CONTROL_H

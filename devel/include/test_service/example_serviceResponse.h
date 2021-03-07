// Generated by gencpp from file test_service/example_serviceResponse.msg
// DO NOT EDIT!


#ifndef TEST_SERVICE_MESSAGE_EXAMPLE_SERVICERESPONSE_H
#define TEST_SERVICE_MESSAGE_EXAMPLE_SERVICERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace test_service
{
template <class ContainerAllocator>
struct example_serviceResponse_
{
  typedef example_serviceResponse_<ContainerAllocator> Type;

  example_serviceResponse_()
    : s(0.0)  {
    }
  example_serviceResponse_(const ContainerAllocator& _alloc)
    : s(0.0)  {
  (void)_alloc;
    }



   typedef float _s_type;
  _s_type s;





  typedef boost::shared_ptr< ::test_service::example_serviceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::test_service::example_serviceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct example_serviceResponse_

typedef ::test_service::example_serviceResponse_<std::allocator<void> > example_serviceResponse;

typedef boost::shared_ptr< ::test_service::example_serviceResponse > example_serviceResponsePtr;
typedef boost::shared_ptr< ::test_service::example_serviceResponse const> example_serviceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::test_service::example_serviceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::test_service::example_serviceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::test_service::example_serviceResponse_<ContainerAllocator1> & lhs, const ::test_service::example_serviceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.s == rhs.s;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::test_service::example_serviceResponse_<ContainerAllocator1> & lhs, const ::test_service::example_serviceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace test_service

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::test_service::example_serviceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::test_service::example_serviceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_service::example_serviceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::test_service::example_serviceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_service::example_serviceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::test_service::example_serviceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::test_service::example_serviceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bc08dbcb40b2ba4b05703f0913420f07";
  }

  static const char* value(const ::test_service::example_serviceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbc08dbcb40b2ba4bULL;
  static const uint64_t static_value2 = 0x05703f0913420f07ULL;
};

template<class ContainerAllocator>
struct DataType< ::test_service::example_serviceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "test_service/example_serviceResponse";
  }

  static const char* value(const ::test_service::example_serviceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::test_service::example_serviceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 s\n"
;
  }

  static const char* value(const ::test_service::example_serviceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::test_service::example_serviceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.s);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct example_serviceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::test_service::example_serviceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::test_service::example_serviceResponse_<ContainerAllocator>& v)
  {
    s << indent << "s: ";
    Printer<float>::stream(s, indent + "  ", v.s);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TEST_SERVICE_MESSAGE_EXAMPLE_SERVICERESPONSE_H

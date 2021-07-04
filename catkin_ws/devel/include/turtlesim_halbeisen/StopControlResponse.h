// Generated by gencpp from file turtlesim_halbeisen/StopControlResponse.msg
// DO NOT EDIT!


#ifndef TURTLESIM_HALBEISEN_MESSAGE_STOPCONTROLRESPONSE_H
#define TURTLESIM_HALBEISEN_MESSAGE_STOPCONTROLRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace turtlesim_halbeisen
{
template <class ContainerAllocator>
struct StopControlResponse_
{
  typedef StopControlResponse_<ContainerAllocator> Type;

  StopControlResponse_()
    : success(false)  {
    }
  StopControlResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> const> ConstPtr;

}; // struct StopControlResponse_

typedef ::turtlesim_halbeisen::StopControlResponse_<std::allocator<void> > StopControlResponse;

typedef boost::shared_ptr< ::turtlesim_halbeisen::StopControlResponse > StopControlResponsePtr;
typedef boost::shared_ptr< ::turtlesim_halbeisen::StopControlResponse const> StopControlResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator1> & lhs, const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator1> & lhs, const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace turtlesim_halbeisen

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "turtlesim_halbeisen/StopControlResponse";
  }

  static const char* value(const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
;
  }

  static const char* value(const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StopControlResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::turtlesim_halbeisen::StopControlResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TURTLESIM_HALBEISEN_MESSAGE_STOPCONTROLRESPONSE_H

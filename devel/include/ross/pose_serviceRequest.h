// Generated by gencpp from file ross/pose_serviceRequest.msg
// DO NOT EDIT!


#ifndef ROSS_MESSAGE_POSE_SERVICEREQUEST_H
#define ROSS_MESSAGE_POSE_SERVICEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace ross
{
template <class ContainerAllocator>
struct pose_serviceRequest_
{
  typedef pose_serviceRequest_<ContainerAllocator> Type;

  pose_serviceRequest_()
    : pose()  {
    }
  pose_serviceRequest_(const ContainerAllocator& _alloc)
    : pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::ross::pose_serviceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ross::pose_serviceRequest_<ContainerAllocator> const> ConstPtr;

}; // struct pose_serviceRequest_

typedef ::ross::pose_serviceRequest_<std::allocator<void> > pose_serviceRequest;

typedef boost::shared_ptr< ::ross::pose_serviceRequest > pose_serviceRequestPtr;
typedef boost::shared_ptr< ::ross::pose_serviceRequest const> pose_serviceRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ross::pose_serviceRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ross::pose_serviceRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ross::pose_serviceRequest_<ContainerAllocator1> & lhs, const ::ross::pose_serviceRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ross::pose_serviceRequest_<ContainerAllocator1> & lhs, const ::ross::pose_serviceRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ross

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ross::pose_serviceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ross::pose_serviceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ross::pose_serviceRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ross::pose_serviceRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ross::pose_serviceRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ross::pose_serviceRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ross::pose_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d562f95ca92089ed9ca118a23535a58f";
  }

  static const char* value(const ::ross::pose_serviceRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd562f95ca92089edULL;
  static const uint64_t static_value2 = 0x9ca118a23535a58fULL;
};

template<class ContainerAllocator>
struct DataType< ::ross::pose_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ross/pose_serviceRequest";
  }

  static const char* value(const ::ross::pose_serviceRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ross::pose_serviceRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::ross::pose_serviceRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ross::pose_serviceRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pose_serviceRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ross::pose_serviceRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ross::pose_serviceRequest_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSS_MESSAGE_POSE_SERVICEREQUEST_H

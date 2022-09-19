// Generated by gencpp from file ross/RTLRequest.msg
// DO NOT EDIT!


#ifndef ROSS_MESSAGE_RTLREQUEST_H
#define ROSS_MESSAGE_RTLREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ross
{
template <class ContainerAllocator>
struct RTLRequest_
{
  typedef RTLRequest_<ContainerAllocator> Type;

  RTLRequest_()
    {
    }
  RTLRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::ross::RTLRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ross::RTLRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RTLRequest_

typedef ::ross::RTLRequest_<std::allocator<void> > RTLRequest;

typedef boost::shared_ptr< ::ross::RTLRequest > RTLRequestPtr;
typedef boost::shared_ptr< ::ross::RTLRequest const> RTLRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ross::RTLRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ross::RTLRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace ross

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ross::RTLRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ross::RTLRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ross::RTLRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ross::RTLRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ross::RTLRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ross::RTLRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ross::RTLRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ross::RTLRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ross::RTLRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ross/RTLRequest";
  }

  static const char* value(const ::ross::RTLRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ross::RTLRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::ross::RTLRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ross::RTLRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RTLRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ross::RTLRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ross::RTLRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROSS_MESSAGE_RTLREQUEST_H
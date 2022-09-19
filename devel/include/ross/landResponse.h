// Generated by gencpp from file ross/landResponse.msg
// DO NOT EDIT!


#ifndef ROSS_MESSAGE_LANDRESPONSE_H
#define ROSS_MESSAGE_LANDRESPONSE_H


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
struct landResponse_
{
  typedef landResponse_<ContainerAllocator> Type;

  landResponse_()
    : LAND_DONE(0.0)  {
    }
  landResponse_(const ContainerAllocator& _alloc)
    : LAND_DONE(0.0)  {
  (void)_alloc;
    }



   typedef float _LAND_DONE_type;
  _LAND_DONE_type LAND_DONE;





  typedef boost::shared_ptr< ::ross::landResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ross::landResponse_<ContainerAllocator> const> ConstPtr;

}; // struct landResponse_

typedef ::ross::landResponse_<std::allocator<void> > landResponse;

typedef boost::shared_ptr< ::ross::landResponse > landResponsePtr;
typedef boost::shared_ptr< ::ross::landResponse const> landResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ross::landResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ross::landResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ross::landResponse_<ContainerAllocator1> & lhs, const ::ross::landResponse_<ContainerAllocator2> & rhs)
{
  return lhs.LAND_DONE == rhs.LAND_DONE;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ross::landResponse_<ContainerAllocator1> & lhs, const ::ross::landResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ross

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ross::landResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ross::landResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ross::landResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ross::landResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ross::landResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ross::landResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ross::landResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "676a86751451f61dc0f200335e3956db";
  }

  static const char* value(const ::ross::landResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x676a86751451f61dULL;
  static const uint64_t static_value2 = 0xc0f200335e3956dbULL;
};

template<class ContainerAllocator>
struct DataType< ::ross::landResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ross/landResponse";
  }

  static const char* value(const ::ross::landResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ross::landResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 LAND_DONE\n"
"\n"
;
  }

  static const char* value(const ::ross::landResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ross::landResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.LAND_DONE);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct landResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ross::landResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ross::landResponse_<ContainerAllocator>& v)
  {
    s << indent << "LAND_DONE: ";
    Printer<float>::stream(s, indent + "  ", v.LAND_DONE);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSS_MESSAGE_LANDRESPONSE_H
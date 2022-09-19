// Generated by gencpp from file ross/pose_service.msg
// DO NOT EDIT!


#ifndef ROSS_MESSAGE_POSE_SERVICE_H
#define ROSS_MESSAGE_POSE_SERVICE_H

#include <ros/service_traits.h>


#include <ross/pose_serviceRequest.h>
#include <ross/pose_serviceResponse.h>


namespace ross
{

struct pose_service
{

typedef pose_serviceRequest Request;
typedef pose_serviceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct pose_service
} // namespace ross


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ross::pose_service > {
  static const char* value()
  {
    return "dfade6cad8d25888383325cca23ea6eb";
  }

  static const char* value(const ::ross::pose_service&) { return value(); }
};

template<>
struct DataType< ::ross::pose_service > {
  static const char* value()
  {
    return "ross/pose_service";
  }

  static const char* value(const ::ross::pose_service&) { return value(); }
};


// service_traits::MD5Sum< ::ross::pose_serviceRequest> should match
// service_traits::MD5Sum< ::ross::pose_service >
template<>
struct MD5Sum< ::ross::pose_serviceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ross::pose_service >::value();
  }
  static const char* value(const ::ross::pose_serviceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ross::pose_serviceRequest> should match
// service_traits::DataType< ::ross::pose_service >
template<>
struct DataType< ::ross::pose_serviceRequest>
{
  static const char* value()
  {
    return DataType< ::ross::pose_service >::value();
  }
  static const char* value(const ::ross::pose_serviceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ross::pose_serviceResponse> should match
// service_traits::MD5Sum< ::ross::pose_service >
template<>
struct MD5Sum< ::ross::pose_serviceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ross::pose_service >::value();
  }
  static const char* value(const ::ross::pose_serviceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ross::pose_serviceResponse> should match
// service_traits::DataType< ::ross::pose_service >
template<>
struct DataType< ::ross::pose_serviceResponse>
{
  static const char* value()
  {
    return DataType< ::ross::pose_service >::value();
  }
  static const char* value(const ::ross::pose_serviceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROSS_MESSAGE_POSE_SERVICE_H

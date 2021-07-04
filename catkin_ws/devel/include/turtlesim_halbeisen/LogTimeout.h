// Generated by gencpp from file turtlesim_halbeisen/LogTimeout.msg
// DO NOT EDIT!


#ifndef TURTLESIM_HALBEISEN_MESSAGE_LOGTIMEOUT_H
#define TURTLESIM_HALBEISEN_MESSAGE_LOGTIMEOUT_H

#include <ros/service_traits.h>


#include <turtlesim_halbeisen/LogTimeoutRequest.h>
#include <turtlesim_halbeisen/LogTimeoutResponse.h>


namespace turtlesim_halbeisen
{

struct LogTimeout
{

typedef LogTimeoutRequest Request;
typedef LogTimeoutResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LogTimeout
} // namespace turtlesim_halbeisen


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::turtlesim_halbeisen::LogTimeout > {
  static const char* value()
  {
    return "ef3f1af6b06d40838f2017e4d10ed185";
  }

  static const char* value(const ::turtlesim_halbeisen::LogTimeout&) { return value(); }
};

template<>
struct DataType< ::turtlesim_halbeisen::LogTimeout > {
  static const char* value()
  {
    return "turtlesim_halbeisen/LogTimeout";
  }

  static const char* value(const ::turtlesim_halbeisen::LogTimeout&) { return value(); }
};


// service_traits::MD5Sum< ::turtlesim_halbeisen::LogTimeoutRequest> should match
// service_traits::MD5Sum< ::turtlesim_halbeisen::LogTimeout >
template<>
struct MD5Sum< ::turtlesim_halbeisen::LogTimeoutRequest>
{
  static const char* value()
  {
    return MD5Sum< ::turtlesim_halbeisen::LogTimeout >::value();
  }
  static const char* value(const ::turtlesim_halbeisen::LogTimeoutRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtlesim_halbeisen::LogTimeoutRequest> should match
// service_traits::DataType< ::turtlesim_halbeisen::LogTimeout >
template<>
struct DataType< ::turtlesim_halbeisen::LogTimeoutRequest>
{
  static const char* value()
  {
    return DataType< ::turtlesim_halbeisen::LogTimeout >::value();
  }
  static const char* value(const ::turtlesim_halbeisen::LogTimeoutRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::turtlesim_halbeisen::LogTimeoutResponse> should match
// service_traits::MD5Sum< ::turtlesim_halbeisen::LogTimeout >
template<>
struct MD5Sum< ::turtlesim_halbeisen::LogTimeoutResponse>
{
  static const char* value()
  {
    return MD5Sum< ::turtlesim_halbeisen::LogTimeout >::value();
  }
  static const char* value(const ::turtlesim_halbeisen::LogTimeoutResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::turtlesim_halbeisen::LogTimeoutResponse> should match
// service_traits::DataType< ::turtlesim_halbeisen::LogTimeout >
template<>
struct DataType< ::turtlesim_halbeisen::LogTimeoutResponse>
{
  static const char* value()
  {
    return DataType< ::turtlesim_halbeisen::LogTimeout >::value();
  }
  static const char* value(const ::turtlesim_halbeisen::LogTimeoutResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TURTLESIM_HALBEISEN_MESSAGE_LOGTIMEOUT_H

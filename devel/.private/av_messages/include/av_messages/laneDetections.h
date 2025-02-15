// Generated by gencpp from file av_messages/laneDetections.msg
// DO NOT EDIT!


#ifndef AV_MESSAGES_MESSAGE_LANEDETECTIONS_H
#define AV_MESSAGES_MESSAGE_LANEDETECTIONS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace av_messages
{
template <class ContainerAllocator>
struct laneDetections_
{
  typedef laneDetections_<ContainerAllocator> Type;

  laneDetections_()
    {
    }
  laneDetections_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::av_messages::laneDetections_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::av_messages::laneDetections_<ContainerAllocator> const> ConstPtr;

}; // struct laneDetections_

typedef ::av_messages::laneDetections_<std::allocator<void> > laneDetections;

typedef boost::shared_ptr< ::av_messages::laneDetections > laneDetectionsPtr;
typedef boost::shared_ptr< ::av_messages::laneDetections const> laneDetectionsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::av_messages::laneDetections_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::av_messages::laneDetections_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace av_messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::av_messages::laneDetections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::av_messages::laneDetections_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::av_messages::laneDetections_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::av_messages::laneDetections_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::av_messages::laneDetections_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::av_messages::laneDetections_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::av_messages::laneDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::av_messages::laneDetections_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::av_messages::laneDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "av_messages/laneDetections";
  }

  static const char* value(const ::av_messages::laneDetections_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::av_messages::laneDetections_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# tbd\n"
;
  }

  static const char* value(const ::av_messages::laneDetections_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::av_messages::laneDetections_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct laneDetections_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::av_messages::laneDetections_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::av_messages::laneDetections_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // AV_MESSAGES_MESSAGE_LANEDETECTIONS_H

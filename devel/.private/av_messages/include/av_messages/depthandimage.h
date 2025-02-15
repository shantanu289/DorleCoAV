// Generated by gencpp from file av_messages/depthandimage.msg
// DO NOT EDIT!


#ifndef AV_MESSAGES_MESSAGE_DEPTHANDIMAGE_H
#define AV_MESSAGES_MESSAGE_DEPTHANDIMAGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/Image.h>

namespace av_messages
{
template <class ContainerAllocator>
struct depthandimage_
{
  typedef depthandimage_<ContainerAllocator> Type;

  depthandimage_()
    : header()
    , rgb_image()
    , depth_image()  {
    }
  depthandimage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , rgb_image(_alloc)
    , depth_image(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _rgb_image_type;
  _rgb_image_type rgb_image;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _depth_image_type;
  _depth_image_type depth_image;





  typedef boost::shared_ptr< ::av_messages::depthandimage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::av_messages::depthandimage_<ContainerAllocator> const> ConstPtr;

}; // struct depthandimage_

typedef ::av_messages::depthandimage_<std::allocator<void> > depthandimage;

typedef boost::shared_ptr< ::av_messages::depthandimage > depthandimagePtr;
typedef boost::shared_ptr< ::av_messages::depthandimage const> depthandimageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::av_messages::depthandimage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::av_messages::depthandimage_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::av_messages::depthandimage_<ContainerAllocator1> & lhs, const ::av_messages::depthandimage_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.rgb_image == rhs.rgb_image &&
    lhs.depth_image == rhs.depth_image;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::av_messages::depthandimage_<ContainerAllocator1> & lhs, const ::av_messages::depthandimage_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace av_messages

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::av_messages::depthandimage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::av_messages::depthandimage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::av_messages::depthandimage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::av_messages::depthandimage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::av_messages::depthandimage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::av_messages::depthandimage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::av_messages::depthandimage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb56a88abddc7348c1f32cf0e8e9606b";
  }

  static const char* value(const ::av_messages::depthandimage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb56a88abddc7348ULL;
  static const uint64_t static_value2 = 0xc1f32cf0e8e9606bULL;
};

template<class ContainerAllocator>
struct DataType< ::av_messages::depthandimage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "av_messages/depthandimage";
  }

  static const char* value(const ::av_messages::depthandimage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::av_messages::depthandimage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"sensor_msgs/Image rgb_image\n"
"sensor_msgs/Image depth_image\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
;
  }

  static const char* value(const ::av_messages::depthandimage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::av_messages::depthandimage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.rgb_image);
      stream.next(m.depth_image);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct depthandimage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::av_messages::depthandimage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::av_messages::depthandimage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "rgb_image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.rgb_image);
    s << indent << "depth_image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.depth_image);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AV_MESSAGES_MESSAGE_DEPTHANDIMAGE_H

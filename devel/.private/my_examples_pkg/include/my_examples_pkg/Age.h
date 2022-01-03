// Generated by gencpp from file my_examples_pkg/Age.msg
// DO NOT EDIT!


#ifndef MY_EXAMPLES_PKG_MESSAGE_AGE_H
#define MY_EXAMPLES_PKG_MESSAGE_AGE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_examples_pkg
{
template <class ContainerAllocator>
struct Age_
{
  typedef Age_<ContainerAllocator> Type;

  Age_()
    : years(0.0)
    , months(0.0)
    , days(0.0)  {
    }
  Age_(const ContainerAllocator& _alloc)
    : years(0.0)
    , months(0.0)
    , days(0.0)  {
  (void)_alloc;
    }



   typedef float _years_type;
  _years_type years;

   typedef float _months_type;
  _months_type months;

   typedef float _days_type;
  _days_type days;





  typedef boost::shared_ptr< ::my_examples_pkg::Age_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_examples_pkg::Age_<ContainerAllocator> const> ConstPtr;

}; // struct Age_

typedef ::my_examples_pkg::Age_<std::allocator<void> > Age;

typedef boost::shared_ptr< ::my_examples_pkg::Age > AgePtr;
typedef boost::shared_ptr< ::my_examples_pkg::Age const> AgeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_examples_pkg::Age_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_examples_pkg::Age_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_examples_pkg::Age_<ContainerAllocator1> & lhs, const ::my_examples_pkg::Age_<ContainerAllocator2> & rhs)
{
  return lhs.years == rhs.years &&
    lhs.months == rhs.months &&
    lhs.days == rhs.days;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_examples_pkg::Age_<ContainerAllocator1> & lhs, const ::my_examples_pkg::Age_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_examples_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::my_examples_pkg::Age_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_examples_pkg::Age_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_examples_pkg::Age_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_examples_pkg::Age_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_examples_pkg::Age_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_examples_pkg::Age_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_examples_pkg::Age_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e8088e290d061dabc94e1feafd4db363";
  }

  static const char* value(const ::my_examples_pkg::Age_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe8088e290d061dabULL;
  static const uint64_t static_value2 = 0xc94e1feafd4db363ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_examples_pkg::Age_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_examples_pkg/Age";
  }

  static const char* value(const ::my_examples_pkg::Age_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_examples_pkg::Age_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 years\n"
"float32 months\n"
"float32 days\n"
;
  }

  static const char* value(const ::my_examples_pkg::Age_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_examples_pkg::Age_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.years);
      stream.next(m.months);
      stream.next(m.days);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Age_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_examples_pkg::Age_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_examples_pkg::Age_<ContainerAllocator>& v)
  {
    s << indent << "years: ";
    Printer<float>::stream(s, indent + "  ", v.years);
    s << indent << "months: ";
    Printer<float>::stream(s, indent + "  ", v.months);
    s << indent << "days: ";
    Printer<float>::stream(s, indent + "  ", v.days);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_EXAMPLES_PKG_MESSAGE_AGE_H

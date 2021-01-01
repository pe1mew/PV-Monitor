#ifndef STORAGE_H
#define STORAGE_H

const int HOUR_SECONDS = 3600.0; ///< Seconds per hour

/// \class Storage class to keep data and metdata.
class storage
{
private:
   int    _count; ///< Number of measurements stored.
   double _sum;   ///< Sum of all measurememts
   double _min;   ///< Lowest value registered
   double _max;   ///< Highest value registered
   double _avg;   ///< Average value of all reistered values

public:
   /// \brief Constructor
   storage();

   /// \brief Initialize member variables
   /// This function is also called to reset all member variables.
   void initialize();

   /// \brief add a valie to the object
   /// \param val value to be added
   /// \param timeSec interval
   void setValue(const double val, const int timeSec);

   /// \brief Get sum
   /// \retval sum
   double getSum(){return _sum;}

   /// \brief Get lowest value registered
   /// \retval lowest value registered
   double getMin(){return _min;}

   /// \brief Get highest value registered
   /// \retval highest value registered
   double getMax(){return _max;}

   /// \brief Get average value
   /// \retval average value of all registered values
   double getAvg();
};

#endif // STORAGE_H

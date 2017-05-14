<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="externals/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="externals/bootstrap/css/bootstrap-theme.min.css"/>
<link rel="stylesheet" type="text/css" href="externals/main.css"/>
<link rel="stylesheet" href="externals/styles.css" />
<script type="text/javascript"  src="externals/bootstrap/js/bootstrap.min.js" ></script>
<script type="text/javascript"  src="externals/bootstrap/js/jquery-2.1.4.min.js"></script>
<script src="externals/jquery-latest.min.js" type="text/javascript"></script>
<script src="externals/script.js"></script>
<script type="text/javascript">
  function validation() {

    var alpha = /^([a-zA-Z ])+$/;
    var numeric = /^[0-9\b]+$/;

    

    var FlightName = document.getElementById("flightName").value;

    if (FlightName.length != 0)
     {
      if (FlightName.match(alpha) == null) 
      {
        document.getElementById("spanFlightName").innerHTML = "Flight Name must be combination of Alphabets only";

        return false;
      } 
      else 
      {
        if ((FlightName.length < 2) || (FlightName.length >= 15)) 
        {
          document.getElementById("spanFlightName").innerHTML = "Flight Name must between 2 and  15";
          return false;
        }
      }
     } 

    else
     {
      document.getElementById("spanFlightName").innerHTML = "Flight Name cannot be empty";
      return false;
     }


    document.getElementById("spanFlightName").innerHTML = "";

    
    var Seating = document.getElementById("seatingCapacity").value;

    if (Seating.length != 0) 
    {

      if (Seating.match(numeric) == null) 
      {
        document.getElementById("spanSeatingCapacity").innerHTML = "Wrong Input. Seating Capacity must be Numeric only";
       
        return false;
     
      } 
      else
       {
        if ((Seating < 100) || (Seating >= 500)) 
        {
          document.getElementById("spanSeatingCapacity").innerHTML = "Wrong Input. Seating capacity must be between 100 to 500";
          return false;
        }
      }
    } 
    else
     {
      document.getElementById("spanSeatingCapacity").innerHTML = "There should bw a value for Seating capacity. It can not be empty.";
      return false;
     }

    document.getElementById("spanSeatingCapacity").innerHTML = "";

    
    var Reservation = document.getElementById("reservationCapacity").value;

    if (Reservation.length != 0) 
    {

      if (Reservation.match(numeric) == null) 
      {
        document.getElementById("spanReservationCapacity").innerHTML = "Wrong input. Reservation Capacity must be a numeric";
        
        return false;
      } 
      else {
        
            if (Reservation >= 70)
            {
             document.getElementById("spanReservationCapacity").innerHTML = "Reservation capacity must be less than 70";
            return false;
            }
           }
    } else 
    {
      document.getElementById("spanReservationCapacity").innerHTML = "Reservation Capacity cannot be empty";
      return false;
    }
    document.getElementById("spanReservationCapacity").innerHTML = "";
  }
</script>
<title>Edit Schedule</title>
</head>

<body>
<div class="container " >
<div class="row ">
<div class="row header-row1 " >
<!-- <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" ><img src="logo.png" class="img-responsive img-rounded"  /></div>
 --><div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 text-center" >
<h2 class="h2" style="color:#000; text-indent:hanging;text-shadow: 2px 2px 5px #000">Welcome to Air Flight Pvt Ltd.</h2></div>
</div><!--first row--->

<div class="row header-row2" >
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"><h4 class="badge">Welcome: Admin</h4> </div>


<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 text-center">
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>
<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>
<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"><a style="line-height:20px; padding:5px; box-shadow:0px 3px 5px #093;" class="btn-success" href="adminhome.jsp">Home</a></div>


</div>
</div><!--secoend row--->
</div><!--header ends--->

<div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 sub-container-2" style="padding:30px;">

<div class="viewflightform">
   <h1 align="center">Edit details of Schedule no ${ScheduleBean.scheduleID}</h1>
   <form action="EditSchedulemain" method="post" >
     Flight ID:<input class="form-control" name="flight" disabled="disabled" type="text"value="${ScheduleBean.flightID}"/>
   Route Id:<input class="form-control" name="route" disabled="disabled" type="text"value="${ScheduleBean.routeID}"/>
  <input  type="hidden" name="scheduleID" value="${ScheduleBean.scheduleID}" />
   <input  name="flightID"  type="hidden"value="${ScheduleBean.flightID}"/>
   <input name="routeID" type="hidden"value="${ScheduleBean.routeID}"/>
   Travel Duration:<input class="form-control" name="travelDuration" type="text"value="${ScheduleBean.travelDuration}"/>
  	Available days<input class="form-control" name="availableDays" type="text"value="${ScheduleBean.availableDays}"/>
  	Departure time:<input class="form-control" name="departureTime" type="text"value="${ScheduleBean.departureTime}"/>
  	<input class="form-control btn btn-success" type="submit" value="edit" name="Update" /> 
   </form>
 
  </div>
</div><!--- sub container 2 ends---->
</div><!--- sub container ends---->
<div style="top:90%;position: absolute;left: 30%;" class="panel-footer text-center">Copyright &copy; 2015 Wipro Technologies. All rights reserved</div>



</div><!--Container ends-->

</body>
</html>
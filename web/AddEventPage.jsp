<%-- 
    Document   : AddEventPage
    Created on : Mar 30, 2017, 11:32:46 AM
    Author     : kisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Event Page</title>
        <link rel="stylesheet" type="text/css" href="AddEventPage.css">
        <style>
            body{
                 background-image: url("Pictures/background.jpg");
            }
            
        </style>>
    </head>
    <body>
        <div style="border:1px solid black;padding: 10px;width: 450px;" id="main">
        <h1><center>Add Event </center></h1>
        <form action="AddEventServlet" method="POST">
		<div class="container">
			<label><b> Event Name </b></label>
			<input type="text" placeholder="Enter Name" name="EventName" required/><br/> 
			<label><b> Event Date</b></label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<label><b> Event Time</b></label>
		         <br/><input type="date" id="datepick" placeholder="Enter Date" name="EventDate" required/>
			 <input type="time" id="timepick" placeholder="Enter Time" name="EventTime" required/> <br/>
			 
			 <label><b> Event Place</b></label>
			 <input type="text" placeholder="Enter Place" name="EventPlace" required/> <br/>
			 <label><b> Description</b></label><br>
			 <textarea type="text" id="Description" name="EventDescription" required /> </textarea>
			 
			 <br/><br/><br/> 
            
			<div class="clearfix">
				<button type="button" class="cancelbtn">Cancel</button>
                                <button type="submit" class="addeventbtn" formaction="AddEventServlet">Add Event</button>
			</div>
        </form>
	</div>
    </body>
</html>

<%-- 
    Document   : onlinequote
    Created on : Mar 26, 2018, 1:26:23 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
 <head><title>OnlineQuoteEmail</title>
 </head>
 <body>
 <div class="contain">
  <form action="./model/OnlineQuotebyEmail.php" method="Request">
   <input type="text" name="companyName" placeholder="enter the companyName"><br>
   <input type="text" name="pname" placeholder="enter the pname"><br>
   <input type="number" name="pphone" placeholder="enter the pphone"><br>
   <input type="email" name="pemail" placeholder="enter the pemail"><br>
   <input type="text" name="mfrom" placeholder="enter the mfrom"><br>
   <input type="text" name="mto" placeholder="enter the mto"><br>
   <input type="number" name="sn" placeholder="enter the sn"><br>
   <input type="date" name="mdate" placeholder="enter the mdate"><br>
   <input type="text" name="discription" placeholder="enter the discription"><br>
   <input type="number" name="aTruckTransportation" placeholder="enter the aTruckTransportation"><br>
   <input type="number" name="aPacking" placeholder="enter the aPacking"><br>
   <input type="number" name="aLoading" placeholder="enter the aLoading"><br>
   <select name="aLoadingFloor">   
	   <option value="">select the aLoadingFloor</option>
	   <option value="1">1st floor</option>
	   <option value="2">2nd floor</option>
	   <option value="3">3rd floor</option>
	   <option value="4">4th floor</option>
	   <option value="5">5st floor</option>
	   <option value="6">6st floor</option>
	   <option value="7">7st floor</option>
	   <option value="8">8st floor</option>
	   <option value="9">9st floor</option>
	   <option value="10">10st floor</option>
   </select><br>
   <select name="aUnloadingFloor">
        <option value=""> select the aUnloadingFloor</option>
	   <option value="1">1st floor</option>
	   <option value="2">2nd floor</option>
	   <option value="3">3rd floor</option>
	   <option value="4">4th floor</option>
	   <option value="5">5st floor</option>
	   <option value="6">6st floor</option>
	   <option value="7">7st floor</option>
	   <option value="8">8st floor</option>
	   <option value="9">9st floor</option>
	   <option value="10">10st floor</option>
   </select><br>
   <input type="number" name="aUnloading" placeholder="enter the aUnloading"><br>
   
   <input type="number" name="aCarTransportation" placeholder="enter the aCarTransportation"><br>
   <input type="number" name="aOctroiCharges" placeholder="enter the aOctroiCharges"><br>
   <input type="number" name="aInsurance" placeholder="enter the aInsurance"><br>
   <input type="number" name="aStorage" placeholder="enter the aStorage"><br>
   <input type="number" name="aPlumber" placeholder="enter the aPlumber"><br>
   <input type="number" name="aCarpenter" placeholder="enter the aCarpenter"><br>
   <input type="number" name="aElectrician" placeholder="enter the aElectrician"><br>
   <input type="number" name="aPainter" placeholder="enter the aPainter"><br>
   <input type="number" name="aGST" placeholder="enter the aGST"><br>
   <input type="number" name="aTotal" placeholder="enter the aTotal"><br>
   <input type="submit"  value="SUBMIT"><br>
   <input type="reset"  value="CANCEL"><br>
   
   
  </form>
 </div>
 </body>
</html>

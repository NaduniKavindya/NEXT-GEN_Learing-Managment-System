<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table >
                                    <c:forEach var="pay" items ="${payDetails}">
                                    
                                        
                                    <c:set var="id" value ="${pay.id}"/>
                                    <c:set var="naem" value ="${pay.name} "/>
                                    <c:set var="age" value ="${pay.age}"/>
                                    <c:set var="Stu" value ="${pay.stu}"/>
                                    <c:set var="seX" value ="${pay.sex}"/>
                                    <c:set var="suB" value ="${pay.sub}"/>
                                    <c:set var="paY" value ="${pay.payd}"/>
                                    <c:set var="emaiL" value ="${pay.email}"/>
                                    <c:set var="mobilE" value ="${pay.mobile}"/>
                                    <c:set var="mageG" value ="${pay.msg}"/>
                                    <c:set var="sliP" value ="${pay.slip}"/>
                                    
                                    <tr>
                                    <td>Payment ID  </td>
                                    <td>${pay.pID} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Name </td>
                                    <td>${pay.name} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Age </td>
                                    <td>${pay.age} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Student Number </td>
                                    <td>${pay.student_numbr} </td>
                                    </tr>
                                    

                                    
                                      <tr>
                                    <td>Subject</td>
                                    <td>${pay.subject} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Pay Date</td>
                                    <td>${pay.paydate} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Email</td>
                                    <td>${pay.email} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Phone Number</td>
                                    <td>${pay.phone_number} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Massege</td>
                                    <td>${pay.masseg} </td>
                                    </tr>
                                    
                                      <tr>
                                    <td>Payment Slip Photo</td>
                                    <td><img src="${pay.img}"> </td>
                                    </tr>
                                    
                                    </c:forEach>
                                    </table>
                                       <c:url value="updatePayment.jsp" var="payment">          	
    					  
    					  <c:param name ="ID" value="${id}"/>
    					  <c:param name ="NAME" value="${naem}"/>		
    					  <c:param name ="AGE" value="${age}"/>
    					  <c:param name ="STU" value="${Stu}"/>
    					  <c:param name ="SEX" value="${seX}"/>
    					  <c:param name ="SUB" value="${suB}"/>
    					  <c:param name ="PAY" value="${paY}"/>
    					  <c:param name ="EMAIL" value="${emaiL}"/>
    					  <c:param name ="MOBILE" value="${mobilE}"/>
    					  <c:param name ="MSG" value="${mageG}"/>
    					  <c:param name ="IMG" value="${sliP}"/>
    					  
    					</c:url>
                        <center>
                        <a href="${payment}">
	 							<button type="submit"  class="btn wow bounceInRight" data-wow-delay="0.8s" name="submit" value="submit">update</button>
						</a>    		 
    					        <button type="submit"  class="btn wow bounceInRight" data-wow-delay="0.8s" name="submit" value="submit">Delate</button>
               		    </center>
                                    
                        
                                    
</body>
</html>
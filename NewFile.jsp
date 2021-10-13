<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form  action ="insert" method ="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" name="name" placeholder="Name" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" name="age" placeholder="Age" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" name="stu" placeholder="Student number" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" name="grade" placeholder="grade" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" name="sub" placeholder="Subject" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control input-lg" name="paydate" placeholder="Pay date" required>
                                        </div>
                                     
                                        <div class="form-group">
                                            <input type="email" class="form-control input-lg" name="email" placeholder="email" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control input-lg" name="mobile" placeholder="trll number" required>
                                        </div>
                                        <div class="form-group">
                                            <textarea class="form-control input-lg" rows="5" name="masseg" placeholder="Message" required></textarea>
                                        </div>
                                          <div class="form-group">
                                             <input type="file" class="form-control input-lg" name="img" placeholder="image" required>

                                        </div>
                                        <button type="submit"  class="btn wow bounceInRight" data-wow-delay="0.8s" name="submit" value="submit">submit</button>
                                    </form>

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" %> 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<style type="text/css"> 
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
</style> 

</head> 

<body>
<%    
	request.setCharacterEncoding("utf-8");
	String stuname = request.getParameter("stuname");
    System.out.println("stuname: "+stuname);
    
    String address = request.getParameter("address");
    String subject = request.getParameter("subject");
    int score = Integer.parseInt(request.getParameter("score"));
    String subject2 = request.getParameter("subject2");
    int score2 = Integer.parseInt(request.getParameter("score2"));
    
    out.println("성명: " + stuname + "<br/>"); // 웹 브러우저로 출력
    out.println("주소: " + address + "<br/>"); // 주소
    out.println("과목: " + subject + "<br/>"); // 주소
    out.println("점수: " + score + "<br/>"); // 주소
    out.println("과목: " + subject2 + "<br/>"); // 주소
    out.println("점수: " + score2 +"<br/>"); // 주소
    out.println("총점: " + (score+score2) +"<br/>"); // 주소
    out.println("평균: " + ((score+score2)/2) + "<br/>"); // 주소
%> 

</body>

</html> 
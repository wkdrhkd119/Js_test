<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="org.json.simple.*" %>
<%@ page import="java.util.*,json.*" %>

<% 
	List list = new ArrayList();
	SungjukDTO dto = null;
	
	dto = new SungjukDTO("가길동",100,100);
	list.add(dto);
	
	dto = new SungjukDTO("나길동",80,100);
	list.add(dto);
	
	dto = new SungjukDTO("다길동",100,80);
	list.add(dto);
	
	dto = new SungjukDTO("라길동",80,100);
	list.add(dto);
	
	dto = new SungjukDTO("마길동",100,90);
	list.add(dto);

	
	JSONObject json = new JSONObject();
	JSONArray jarray = new JSONArray();
	
	
	for(int i=0; i<list.size(); i++){
		dto = (SungjukDTO)list.get(i);
		jarray.add(dto.toJSONObject());
	}
	json.put("soldesk",jarray);
	out.print(json);

%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>
                
                function random() {
                	var a = document.getElementById('input').value;
                	
                	
                	
                	if(a==="INDIA")
                		{
                		var array = ["Maharasthra", "Delhi", "Goa"];
                		}
                	else if(a==="USA")
            			{
            		var array = ["newyork", "TEXAS"];
            			}
                	else{
                		var array =[];
                		}
                	var string = "";
                	for (i = 0; i < array.length; i++) {
						string = string+"<option>"+array[i]+"</option>";
						}
                	string = "<select name='lol'>"+string+"</select>"
                	document.getElementById('output').innerHTML = string;
                	
					
				}
                
                </script>

                <select id="input" onchange="random()">
                <option>Select a Your Country</option>
                <option>INDIA</option>
                <option>USA</option>
                          
                </select>
                
                
                <div id="output">
                <select>
                <option>Select a Your City</option>
                <option></option>
                
                          
                </select></div>
</body>
</html>
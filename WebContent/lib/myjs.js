function random() {
                	var a = document.getElementById('input').value;
                	
                	
                	
                	if(a==="India")
                		{
                		var array = ["Maharasthra", "Delhi", "Goa","Mumbai","Bengalur","New Delhi","Kolkata","Chennai"];
             		}
                	else if(a==="Sri Lanka")
            			{
            		var array = ["Colombo", "Kurunegala","Kandy","Badulla","Jaffna","Kotte","Anuradapura","Puttlam","Ja-Ela","Wattala","Galle","Aanamduwa","Matara","Hambantota"];
            			}
                	else if(a==="Parkistan")
        			{
        			var array = ["Islamabad","Karachi","Multan"];
        			}
                	else{
                		var array =[];
                		}
                	var string = "";
                	for (i = 0; i < array.length; i++) {
						string = string+"<option>"+array[i]+"</option>";
						}
                	string = "<select name='city'>"+string+"</select>"
                	document.getElementById('output').innerHTML = string;
	
				}
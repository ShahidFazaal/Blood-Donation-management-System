package country;
 
import java.util.ArrayList;
import java.util.List;
 
public class City {
     
    private List <String> cities = new ArrayList<String>();
     
    public City(String Country)
    {
        setCities(Country);
    }
 
    public List<String> getCities() {
        return cities;
    }
 
    private void setCities(String Country) {
         
        if (Country != null)
        {
        cities.add(Country+"1");
        cities.add(Country+"2");
        cities.add(Country+"3");
        cities.add(Country+"4");
        cities.add(Country+"5");
        cities.add(Country+"6");
        }
        else
        {
        cities.add("Please choose a country");  
        }
         
    }
}
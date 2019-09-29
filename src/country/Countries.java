package country;
import java.util.*;
 
public class Countries {
     
    private List <String> countries = new ArrayList<String>();
    public Countries()
    {
        // code which generates list from the database will replace this
        countries.add("Egypt");
        countries.add("USA");
        countries.add("UAE");
        countries.add("Japan");
        countries.add("Canada");
        countries.add("Ethyopya");  
         
    }
 
    public List<String> getCountries() {
        return countries;
    }
 
}
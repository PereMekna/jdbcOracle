package beans;
// Generated 12 juil. 2016 14:22:32 by Hibernate Tools 4.3.1



/**
 * LieuAVisiter generated by hbm2java
 */
public class LieuAVisiter  implements java.io.Serializable {


     private LieuAVisiterId id;
     private String pays;
     private String descriptif;
     private Long prix;

    public LieuAVisiter() {
    }

	
    public LieuAVisiter(LieuAVisiterId id) {
        this.id = id;
    }
    public LieuAVisiter(LieuAVisiterId id, String pays, String descriptif, Long prix) {
       this.id = id;
       this.pays = pays;
       this.descriptif = descriptif;
       this.prix = prix;
    }
   
    public LieuAVisiterId getId() {
        return this.id;
    }
    
    public void setId(LieuAVisiterId id) {
        this.id = id;
    }
    public String getPays() {
        return this.pays;
    }
    
    public void setPays(String pays) {
        this.pays = pays;
    }
    public String getDescriptif() {
        return this.descriptif;
    }
    
    public void setDescriptif(String descriptif) {
        this.descriptif = descriptif;
    }
    public Long getPrix() {
        return this.prix;
    }
    
    public void setPrix(Long prix) {
        this.prix = prix;
    }




}



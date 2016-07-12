package beans;
// Generated 12 juil. 2016 14:22:32 by Hibernate Tools 4.3.1



/**
 * LieuAVisiterId generated by hbm2java
 */
public class LieuAVisiterId  implements java.io.Serializable {


     private String nomLieu;
     private String ville;

    public LieuAVisiterId() {
    }

    public LieuAVisiterId(String nomLieu, String ville) {
       this.nomLieu = nomLieu;
       this.ville = ville;
    }
   
    public String getNomLieu() {
        return this.nomLieu;
    }
    
    public void setNomLieu(String nomLieu) {
        this.nomLieu = nomLieu;
    }
    public String getVille() {
        return this.ville;
    }
    
    public void setVille(String ville) {
        this.ville = ville;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof LieuAVisiterId) ) return false;
		 LieuAVisiterId castOther = ( LieuAVisiterId ) other; 
         
		 return ( (this.getNomLieu()==castOther.getNomLieu()) || ( this.getNomLieu()!=null && castOther.getNomLieu()!=null && this.getNomLieu().equals(castOther.getNomLieu()) ) )
 && ( (this.getVille()==castOther.getVille()) || ( this.getVille()!=null && castOther.getVille()!=null && this.getVille().equals(castOther.getVille()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getNomLieu() == null ? 0 : this.getNomLieu().hashCode() );
         result = 37 * result + ( getVille() == null ? 0 : this.getVille().hashCode() );
         return result;
   }   


}



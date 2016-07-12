package beans;
// Generated 12 juil. 2016 14:22:32 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Reservation generated by hbm2java
 */
public class Reservation  implements java.io.Serializable {


     private long id;
     private Circuit circuit;
     private Client client;
     private Date dateResa;

    public Reservation() {
    }

	
    public Reservation(long id) {
        this.id = id;
    }
    public Reservation(long id, Circuit circuit, Client client, Date dateResa) {
       this.id = id;
       this.circuit = circuit;
       this.client = client;
       this.dateResa = dateResa;
    }
   
    public long getId() {
        return this.id;
    }
    
    public void setId(long id) {
        this.id = id;
    }
    public Circuit getCircuit() {
        return this.circuit;
    }
    
    public void setCircuit(Circuit circuit) {
        this.circuit = circuit;
    }
    public Client getClient() {
        return this.client;
    }
    
    public void setClient(Client client) {
        this.client = client;
    }
    public Date getDateResa() {
        return this.dateResa;
    }
    
    public void setDateResa(Date dateResa) {
        this.dateResa = dateResa;
    }




}



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

/**
 *
 * @author Accent W2000
 */
public class Etudiant {

   
    private String nom;
    private String prenom;
    private String matricule;
    
     public Etudiant() {
         this.matricule = "Vide";    
         this.nom = "Vide";     
         this.prenom = "Vide";


    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setMatricule(String matricule) {
        this.matricule = matricule;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getMatricule() {
        return matricule;
    }
    
   
}

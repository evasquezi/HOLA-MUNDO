// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pe.com.cybersec.partition.domain;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;
import pe.com.cybersec.partition.domain.DetalleCatalogo;

privileged aspect DetalleCatalogo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DetalleCatalogo.entityManager;
    
    public static final List<String> DetalleCatalogo.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager DetalleCatalogo.entityManager() {
        EntityManager em = new DetalleCatalogo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DetalleCatalogo.countDetalleCatalogoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DetalleCatalogo o", Long.class).getSingleResult();
    }
    
    public static List<DetalleCatalogo> DetalleCatalogo.findAllDetalleCatalogoes() {
        return entityManager().createQuery("SELECT o FROM DetalleCatalogo o", DetalleCatalogo.class).getResultList();
    }
    
    public static List<DetalleCatalogo> DetalleCatalogo.findAllDetalleCatalogoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM DetalleCatalogo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, DetalleCatalogo.class).getResultList();
    }
    
    public static DetalleCatalogo DetalleCatalogo.findDetalleCatalogo(Integer idDetalleCatalogo) {
        if (idDetalleCatalogo == null) return null;
        return entityManager().find(DetalleCatalogo.class, idDetalleCatalogo);
    }
    
    public static List<DetalleCatalogo> DetalleCatalogo.findDetalleCatalogoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DetalleCatalogo o", DetalleCatalogo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<DetalleCatalogo> DetalleCatalogo.findDetalleCatalogoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM DetalleCatalogo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, DetalleCatalogo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DetalleCatalogo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DetalleCatalogo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DetalleCatalogo attached = DetalleCatalogo.findDetalleCatalogo(this.idDetalleCatalogo);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DetalleCatalogo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DetalleCatalogo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DetalleCatalogo DetalleCatalogo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DetalleCatalogo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package pe.com.cybersec.partition.domain;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import pe.com.cybersec.partition.domain.DetalleCatalogo;

privileged aspect DetalleCatalogo_Roo_ToString {
    
    public String DetalleCatalogo.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("idCatalogo").toString();
    }
    
}
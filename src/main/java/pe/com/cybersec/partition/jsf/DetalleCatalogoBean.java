package pe.com.cybersec.partition.jsf;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;
import pe.com.cybersec.partition.domain.DetalleCatalogo;

@RooSerializable
@RooJsfManagedBean(entity = DetalleCatalogo.class, beanName = "detalleCatalogoBean")
public class DetalleCatalogoBean {
}

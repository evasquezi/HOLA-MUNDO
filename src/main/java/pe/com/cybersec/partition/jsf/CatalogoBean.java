package pe.com.cybersec.partition.jsf;
import org.springframework.roo.addon.jsf.managedbean.RooJsfManagedBean;
import org.springframework.roo.addon.serializable.RooSerializable;
import pe.com.cybersec.partition.domain.Catalogo;

@RooSerializable
@RooJsfManagedBean(entity = Catalogo.class, beanName = "catalogoBean")
public class CatalogoBean {
}

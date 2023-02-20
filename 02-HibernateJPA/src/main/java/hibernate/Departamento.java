package hibernate;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Entity
@NamedQuery(name = "Departamento.finAll", query = "SELECT d FROM Departamento d")
public class Departamento implements Serializable {
    private long id;
    private String nombre;

    private Collection<Empleado> empleados;

    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
    
    @Column(name = "nombre")
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    @OneToMany(mappedBy ="departamento")
    public Collection<Empleado> getEmpleados() {
        return empleados;
    }
    
    public void setEmpleados(Collection<Empleado> empleados) {
        this.empleados = empleados;
    }

    @Override
    public String toString() {
        return "Departamento{" + "id=" + id + ", nombre=" + nombre + ", empleados=" + empleados + '}';
    }
    
    
}


import hibernate.Departamento;
import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

public class App {
    public static void main(String[] args) {
        // Creamos las EntityManagerFactory para manejar las entidades y transacciones
             EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("default");
             EntityManager entityManager = entityManagerFactory.createEntityManager();
             EntityTransaction transaction = entityManager.getTransaction();
            // Listados
            System.out.println("HOLA MUNDO");
            
            try{
                
                /***********************************************/
                /*                 INSERTAR                    */
                /***********************************************/
                
             /*System.out.println("INSERATNDO DEPARTAMENTO");
                transaction.begin();
                Departamento dept = new Departamento();
                dept.setNombre("Nuevo departamento" + LocalDateTime.now().toString());
                entityManager.persist(dept);
                transaction.commit();*/
                
                /***********************************************/
                /*                   LISTAR                    */
                /***********************************************/
                
                System.out.println("Listar Departamentos");
                Query queryDepartamento = entityManager.createQuery("SELECT d FROM Departamento d");
                List<Departamento> departamentos = queryDepartamento.getResultList();
                
                departamentos.forEach(e -> {
                    System.out.println(e.getNombre());
                });
                
                System.out.println("---------------------------------------------------------------------");
                
                System.out.println("Listar Departamentos con NamedQuery");
                TypedQuery<Departamento>namedQueryDepartamento = entityManager.createNamedQuery("Departamento.finAll",Departamento.class);
                departamentos = namedQueryDepartamento.getResultList();
                departamentos.forEach(d ->{
                
                    System.out.println(d.getNombre());
                });
                
            
                /***********************************************/
                /*                    MODIFICAR                */
                /***********************************************/
                
             /*   System.out.println("Actualizando Departamento 3");
                Departamento dept1 = entityManager.find(Departamento.class, 3L);
                dept.setNombre(dept.getNombre()+" modificado");
                transaction.begin();
                entityManager.merge(dept1);
                transaction.commit();
                System.out.println(dept1.toString());*/
                
                
                /***********************************************/
                /*                    ELIMINAR                 */
                /***********************************************/
                /*System.out.println("Eliminar Departamento 3");
                //como ya tenemos de antes el departamento.
                transaction.begin();
                entityManager.remove(dept);
                transaction.commit();
                */
                
                
                
                
                
                
                
                System.out.println("--------------------------------------------------------");
                System.out.println("Buscar en el departamento 2");
                Departamento departamento = entityManager.find(Departamento.class, 2L);
                departamento.getEmpleados().forEach(e ->{
                    System.out.println(e.getNombre()+" "+e.getApellidos());
                });
                
                
            }
            finally{
                if(transaction.isActive()){
                    transaction.rollback();
                }
            }
            entityManager.close();
            entityManagerFactory.close();
    }
}


package pattsberrydb.pattsberrydb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table  (name = "productos")
public class Producto {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id", unique=true, nullable=false)
	private Long id;
	@Column(nullable=false)
	private String nombre;
	@Column(nullable=false)
	private String descripcion;
	@Column(nullable=false)
	private String imagen;
	@Column(nullable=false)
	private String tamano;
	@Column(nullable=false)
	private String sku;
	@Column(nullable=false)
	private double precio;
	
	public Producto(String nombre, String descripcion, String imagen, String tamano, String sku, double precio) {
		super();
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.imagen = imagen;
		this.tamano = tamano;
		this.sku = sku;
		this.precio=precio;
	}//constructorconcampos
	public Producto() {
		
	}//constructor vacio
	public String getNombre() {
		return nombre;
	}//getNombre
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}//setNombre
	public String getDescripcion() {
		return descripcion;
	}//getDescrpcion
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}//setdescripcion
	public String getImagen() {
		return imagen;
	}//getImagen
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}//setImagen
	public String getTamano() {
		return tamano;
	}//gettamano
	public void setTamano(String tamano) {
		this.tamano = tamano;
	}//settamano
	public String getSKU() {
		return sku;
	}//getSKU
	public void setSKU(String sku) {
		this.sku = sku;
	}//setSKU
	public Long getId() {
		return id;
	}//getId
	
	public double getPrecio() {
		return precio;
	}//getprecio
	public void setPrecio(double precio) {
		this.precio = precio;
	}//setprecio
	@Override
	public String toString() {
		return "Producto [Nombre=" + nombre + ", Descripcion=" + descripcion + ", Imagen=" + imagen
				+  ", Tamano=" + tamano + ", SKU=" + sku + ", Precio="+precio+"]";
	}//toString
	
	
}//classProducto

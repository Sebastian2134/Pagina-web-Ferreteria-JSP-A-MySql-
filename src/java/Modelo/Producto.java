package Modelo;

public class Producto {
    private int codigoproducto;
    private String Nombre;
    private double precio;
    private String imagen;

    public Producto(int codigoproducto, String Nombre, double precio, String imagen) {
        this.codigoproducto = codigoproducto;
        this.Nombre = Nombre;
        this.precio = precio;
        this.imagen = imagen;
    }

    public int getCodigoproducto() {
        return codigoproducto;
    }

    public void setCodigoproducto(int codigoproducto) {
        this.codigoproducto = codigoproducto;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
}

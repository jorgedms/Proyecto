public interface Listas<E>{
  
  //regresa tamaño de la lista
  public int size();
  
  //valor que se desea agregar en la primera posicion de la lista
  public void addFirst(E value);
  
  //regresa valor eliminado de la primera posicion de la lista
  public E removeFirst();
  
  //valor que se quiere agregar al final de la lista
  public void addLast (E value);
  
  //regresa valor eliminado de la ultima posicion de la lista 
  public E removeLast();
  
  //regresa el valor en la primera posicion de la lista
  public E getFirst();
  
  //regresa el valor en la ultima posicion de la lista
  public E getLast();
  
  //regresa true o false si esta o no en la lista
  public boolean contains (E value);
  
}
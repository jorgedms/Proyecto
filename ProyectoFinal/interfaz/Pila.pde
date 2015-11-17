public interface Pila<E>{
  
  //dato: valor de entrada al metodo push
  public void push(E dato);
  
  //regresa valor de la parte superior y lo retira de pila
  public E pop();
  
  //regresa valor de la parte superior si eliminarlo 
  public E peek();
  
  //regresa true si la pila esta vacia
  public boolean isEmpty();
  
}
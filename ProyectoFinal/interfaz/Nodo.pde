public class Nodo <E>{
  private E valor;
  private Nodo<E> nextNodo;
  
  //constructor
  public Nodo (E valor, Nodo<E> nextNodo){
    this.valor = valor;
    this.nextNodo = nextNodo;
  }
  
  //metodos
  public E valor(){
    return valor;
  }
  
  public void setNextNodo(Nodo<E> next){
    nextNodo = next;
  }
  
  public Nodo<E> getNext(){
    return nextNodo;
  }
  
}
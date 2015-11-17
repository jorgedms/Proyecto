public class SimpleEncadenada <E> implements Pila<E>,Listas<E>{
  //public class SimpleEncadenada <E>{
  private int size;
  private Nodo<E> cabeza;
  private Nodo<E> cola;
  
  /*
  Nodos temporales: evita tener que crear
  nodos temporales en mas de 2 casos
  */
  private Nodo<E> temp1;
  private Nodo<E> temp2;
  
  //constructor
  public SimpleEncadenada(){
    size = 0;
    cabeza = null;
    cola = null;
  }
  
  
  /**
   * Metodos Lista:
   * 
   
   * size() provee el tamaño de la lista
   * addFirst(E value) agrega un valor al inicio de la lista
   * removeFirst() elimina el primer elemento de la lista
   * removeLast() elimina el ultimo elemento de la lista
   * addLast(E value) agrega un elemento a la cola de la lista
   * contains(E value) busca en la lista si existe un elemento en la lista
   * E getFirst() devuelve el primer valor de la lista
   * E getLast() Devuelve el ultimo valor de la lista
   */
  public int size(){
    return size;
  }
  
  public void addFirst(E value){
    //se crea nodo con referencia a la cabeza actual
    temp1 = new Nodo<E>(value, cabeza);
    
    //si es el primer elemento se agrega una cabeza y una cola
    if (cabeza == null & cola == null){
      cabeza = temp1;
      cola = temp1;
    }
    
    //si no es el primer elemento se camiba la cabeza con nuevo nodo
    else{
      cabeza = temp1;
    }
    
    size++;
  }
  
  public E removeFirst(){
    //se copia la cabeza a eliminar para envio
    temp1 = cabeza;
    if (temp1== null){
      return null;
    }
    //se asigna la nueva cabeza
    cabeza = cabeza.getNext();
    //se resta al tamano
    size--;
    //se retorna valor eliminado
    return temp1.valor();
    
  }
  
  public void addLast(E value){
    //se crea la nueva cola
    temp1 = new Nodo<E> (value, null);
    //cola referencia a nueva cola
    cola.setNextNodo(temp1);
    //se reemplaza nueva cola
    cola = temp1;
  }
  
  public E removeLast(){
    //recorrer la lista hasta encontrar ultimo nodo
    //se asume que la cabeza es el ultimo
    temp1 = cabeza;
    //ciclo para recorrer lista
    for (int i=0; i<(size-1); i++){
      if (temp1.getNext()!= null){
        //se cambia la antepenultima referencia
        temp2 = temp1;
        //se asigna el siguiente elemento como el ultimo
        temp1 = temp1.getNext();
      }
      
      else{
        //se asigna la nueva cola
        cola = temp2;
        //se cambia la referencia a null del antepenultimo
        cola.setNextNodo(null);
        size--;
      }
    }
    //se devuelve el valor del ultimo nodo eliminado
    return temp1.valor();
  }
  
  public boolean contains(E value){
    temp1 = cabeza;
    //se asume que no esta el valor
    boolean contains = false;
    //se recorre toda la lista
    while(temp1!=null){
      if((temp1.valor()).equals(value)){
        //si se encuentra el valor se cambia a true y se rompe el ciclo
        contains = true;
        return contains;
      }
      else{
        //si no esta el valor en el nodo se pasa al siguiente
        temp1 = temp1.getNext();
      }
    }
    return contains;
  }
  
  public E getFirst(){
    return null;
  }
  
  public E getLast(){
    return null;
  }
      
    
  /**
  * Metodos Pila:
  * push(): ingresa valor a la pila
  * pop() elimina valor de la pila
  * peek() retorna valor de la pila sin eliminar
  * isEmpty() returna true si esta vacia y false si esta con objetos
  */
  public void push(E dato){
    addFirst(dato);
  }
  
  public E pop(){
    E valor = removeFirst();
    return valor;
  }
  
  public E peek(){
    E valor = cabeza.valor();
    return valor;
  }
  
  public boolean isEmpty(){
    if (cabeza == null){
      return true;
    }
    return false;
  }
}
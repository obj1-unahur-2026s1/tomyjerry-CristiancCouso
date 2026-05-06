object tom {
    var energia = 50 
    var ratonComido = jerry
    var metros = 10
    method comer(_unRaton) {  
      energia = energia + 12 + _unRaton.peso() 
      ratonComido = _unRaton 
    }
    method correr(_metros) { 
      energia = energia - _metros / 2
      metros = _metros    
    }
    method velocidad(){ 
      return 5 + energia / 10
    }

    method energia(){ 
        return energia
    } 
    
    method puedeCazarA(_metros) {  
     return energia > self.energiaNecesaria(_metros)
    }

    method energiaNecesaria(_mts) { 
      return _mts / 2
    } 

    method  cazar(_unRaton,_unaDistancia) { 
      if(self.puedeCazarA(_unaDistancia)){
        self.correr(_unaDistancia)
        self.comer(_unRaton)
      }
    }
}

object jerry {
   var edad = 2 
   method peso(){
    return edad * 20
   }
    method cumplirAños(){
     edad += 1 
   } 
}

object nibbles {
    method peso(){
        return 35
    } 
}

object ricardo {
  var dientes = 20
  method peso() {
    return 15.max(10 + dientes / 2)
  }
  method perderUnDiente() {
    dientes = dientes - 1
  }  
}






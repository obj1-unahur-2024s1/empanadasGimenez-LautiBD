object galvan{
	
	var totalCobrado = 0
	var sueldo = 150000
	var deuda = 0
	
	method totalDeuda() {return deuda}
	method sueldo(){ return sueldo}
	method totalCobrado(){return totalCobrado}
	method cobrarSueldo(){
		totalCobrado = totalCobrado + deuda
		totalCobrado += self.sueldo()
		deuda = 0.min(totalCobrado - deuda)
							
	}
	method gastar(dinero){
		if( dinero > totalCobrado ){
			deuda = deuda + (totalCobrado - dinero)
			totalCobrado = 0
			}
		else{
			totalCobrado = totalCobrado - dinero}
	}
	
	
	
		
}

object baigorria{
	
	var empanadasVendidas = 0
	var totalCobrado = 0
	
	method sueldo(){return empanadasVendidas * 150}
	method venderEmpanadas(cantEmpanadas) {empanadasVendidas += cantEmpanadas}
	method cobrarSueldo(){totalCobrado += self.sueldo() empanadasVendidas = 0}
	method totalCobrado(){return totalCobrado}
}

object gimenez{
	
	var fondoParaSueldos = 3000000
	
	method pagarA(empleado) {
    fondoParaSueldos -= empleado.sueldo()
    empleado.cobrarSueldo()
	}
}








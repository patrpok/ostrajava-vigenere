banik pyco

tryda Stverec{
    toz Dryst[] abecedy pyco
    Stverec(){
        joch.abecedy = zrob Dryst[26] pyco

        toz Citac nacitadlo = zrob Citac() pyco
        nacitadlo.otevr("stverec.txt") pyco
        toz Dryst radek = nacitadlo.citajRadku() pyco

        toz cyslo i = 0 pyco
        rubat (radek != chuj){
            joch.abecedy[i] = radek pyco
            radek = nacitadlo.citajRadku() pyco
            i = i + 1 pyco
        }
    }
}


fajront pyco 

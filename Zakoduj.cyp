banik pyco

tryda Zakoduj{
    toz Dryst zprava pyco
    toz Dryst kod pyco
    toz Dryst zakodovanaZprava pyco
    toz Stverec stverec pyco

    Zakoduj(Dryst zprava, Dryst kod, Stverec stverec){
        joch.zprava = zprava pyco
        joch.kod = kod pyco
        joch.stverec = stverec pyco
        joch.zakodovanaZprava = chuj pyco
        joch.zrubajKod() pyco
        joch.vseckoZakoduj() pyco
    }
    zrubajKod(){
        kaj(joch.zprava.dylka > joch.kod.dylka){
            toz cyslo rachujeCykly = 0 pyco
            toz cyslo kantujeChachary = 0 pyco
            toz Bafr baf = zrob Bafr(joch.zprava.dylka) pyco
            rubat(rachujeCykly < joch.zprava.dylka){
                kaj(kantujeChachary == (joch.kod.dylka)){
                    kantujeChachary = 0 pyco
                }
                toz chachar pismenko = joch.kod.chachari[kantujeChachary] pyco
                rachujeCykly = rachujeCykly + 1 pyco
                kantujeChachary = kantujeChachary + 1 pyco
                baf.pridaj(pismenko) pyco
            }
            joch.kod = zrob Dryst(baf.naChachar()) pyco
        }
        kajtez(joch.zprava.dylka < joch.kod.dylka){
            Konzola.pravit("CYPOVINA!: Kod je delsi nez zprava, ale vyrubu to...") pyco
            toz Bafr baff = zrob Bafr(joch.zprava.dylka) pyco
            toz cyslo rachujeCykly2 = 0 pyco
            rubat(rachujeCykly2 < joch.zprava.dylka){
                baff.pridaj(joch.kod.chachari[rachujeCykly2]) pyco
                rachujeCykly2 = rachujeCykly2 + 1 pyco
            }
            joch.kod = zrob Dryst(baff.naChachar()) pyco
        }
        Konzola.pravit("Zprava:") pyco
        Konzola.pravit(joch.zprava) pyco
        Konzola.pravit("Tajne kod:") pyco
        Konzola.pravit(joch.kod) pyco
    }
    vseckoZakoduj(){
        toz cyslo rachujeCykly = 0 pyco
        toz Bafr zakodovanyBafr = zrob Bafr(joch.zprava.dylka) pyco
        rubat(rachujeCykly < joch.zprava.dylka){
            // Konzola.pravit(joch.zprava.dylka) pyco
            toz cyslo[] pozice = joch.dajPozicu(joch.zprava.chachari[rachujeCykly], joch.kod.chachari[rachujeCykly]) pyco
            toz Dryst kodovaciAbeceda = joch.stverec.abecedy[pozice[0]] pyco
            toz chachar zakodovanyChachar = kodovaciAbeceda.chachari[pozice[1]] pyco
            zakodovanyBafr.pridaj(zakodovanyChachar) pyco
            rachujeCykly = rachujeCykly + 1 pyco
        }
        joch.zakodovanaZprava = zrob Dryst(zakodovanyBafr.naChachar()) pyco
        Konzola.pravit("Zakodovana zprava:") pyco
        Konzola.pravit(joch.zakodovanaZprava) pyco
    }
    cyslo[] dajPozicu(chachar zpravy, chachar kodovy){
        toz cyslo rachujeCykly = 0 pyco
        toz dryst abeceda = joch.stverec.abecedy[0] pyco
        toz cyslo cysloAbecedy = chuj pyco
        toz cyslo cysloPismenka = chuj pyco

        rubat(rachujeCykly < abeceda.dylka){
            toz chachar pismenko = abeceda.chachari[rachujeCykly] pyco
            // Konzola.pravit(abeceda) pyco
            // Konzola.pravit(pismenko) pyco
            kaj(zpravy == pismenko){
                cysloAbecedy = rachujeCykly pyco
            }
            kaj(kodovy == pismenko){
                cysloPismenka = rachujeCykly pyco
            }
            rachujeCykly = rachujeCykly + 1 pyco
            kaj(rachujeCykly == abeceda.dylka aj (cysloAbecedy == chuj aj cysloPismenka == chuj)){
                // Konzola.pravit("CYPOVINA!: Pismenko neni v abecede! Fajront...") pyco
            }
        }
        toz cyslo[] toZpatky = zrob cyslo[2] pyco
        toZpatky[0] = cysloAbecedy pyco
        toZpatky[1] = cysloPismenka pyco

        davaj toZpatky pyco
    }
}


fajront pyco
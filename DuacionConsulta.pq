( Resultado as table) as any => 
    let
        ColumnaDuracionALista =
        Resultado[Exclusive Duration],

        Suma = 
        List.Sum (ColumnaDuracionALista) ,

        Registro = 
        Duration.ToRecord( Suma ),

        SegundosTotales = 
        Registro[Days] * 86400
            + Registro[Hours] * 3600
            + Registro[Minutes] * 60 
            + Registro[Seconds]
        
    in
        SegundosTotales
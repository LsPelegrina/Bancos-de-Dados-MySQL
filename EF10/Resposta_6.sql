CREATE TABLE telefone (
	tel_nro VARCHAR(15) NOT NULL,
    RES_CPFPAS VARCHAR(11) NOT NULL,
    PRIMARY KEY (tel_nro, RES_CPFPAS),
    FOREIGN KEY (RES_CPFPAS) REFERENCES reserva (RES_CPFPAS)
);
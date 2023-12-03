CREATE TABLE setor (
	set_codigo INT,
    set_nome VARCHAR(60) NOT NULL,
    PRIMARY KEY (set_codigo)
);

CREATE TABLE subsetor (
	sub_codigo INT,
    sub_nome VARCHAR(60) NOT NULL,
    set_codigo INT NOT NULL,
    PRIMARY KEY (sub_codigo),
    CONSTRAINT fk_subsetor_setor FOREIGN KEY (set_codigo)
		REFERENCES setor (set_codigo)
);

CREATE TABLE segmento (
	seg_codigo INT NOT NULL, 
    seg_nome VARCHAR(60) NOT NULL,
    sub_codigo INT NOT NULL,
    PRIMARY KEY (seg_codigo),
    CONSTRAINT fk_segmento_subsetor FOREIGN KEY (sub_codigo)
		REFERENCES subsetor (sub_codigo)
);

INSERT INTO setor
	VALUES(1,'Petróleo, Gás e Biocombustíveis'),
		(2,'Materiais Básicos'),
        (3,'Bens Industriais'),
        (4,'Consumo não Cíclico'),
        (5,'Consumo Cíclico'),
        (6,'Saúde'),
        (7,'Tecnologia da Informação'),
        (8,'Telecomunicações'),
        (9,'Utilizade Pública'),
        (10,'Financeiro e Outros');
        
INSERT INTO subsetor
	VALUES(1,'Petróleo, Gás e Biocombustíveis',1),
		(2,'Mineração',2),
        (3,'Siderurgia e Metalurgia',2),
        (4,'Químicos',2),
        (5,'Madeira e Papel',2),
        (6,'Embalagens',2),
        (7,'Materiais Diversos',2),
        (8,'Construção e Engenharia',3),
        (9,'Material de Transporte',3),
        (10,'Equipamentos Elétricos',3);
        
INSERT INTO segmento
	VALUES(1,'Exploração, Refino e Distribuição',1),
		(2,'Equipamentos e Serviços',1),
        (3,'Minerais Metálicos',2),
        (4,'Siderurgia',3),
        (5,'Artefatos de Ferro e Aço',3),
        (6,'Artefatos de Cobre',3),
        (7,'Petroquímicos',4),
        (8,'Fertilizantes e Defensivos',4),
        (9,'Químicos Diversos',4),
        (10,'Madeira',5);
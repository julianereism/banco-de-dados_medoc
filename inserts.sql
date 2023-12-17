
-- INSERT INTO, TODAS AS TABELAS ------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------


insert into paciente (cpf, nome,  cns, dataNasc, sexo, estCivil, cor, email, preCID)
	values (03862554406, "Janaina Alves", 87955478, "1979-05-20", 'F', 'Casada', 'Parda', "janainaalvesrm@gmail.com", "G.47"),
    (67890123456, "Isabela Rodrigues", 43210987, "1990-04-10", 'F', 'Solteira', 'Parda', "isabela.rodrigues@gmail.com", "A.12"),
    (78901234567, "Thiago Almeida", 32109876, "1987-11-15", 'M', 'Casado', 'Branca', "thiago.almeida@gmail.com", "D.45"),
    (89012345678, "Camila Fernandes", 21098765, "1995-07-22", 'F', 'Solteira', 'Negra', "camila.fernandes@gmail.com", "G.56"),
    (90123456789, "Gabriel Lima", 10987654, "1982-02-28", 'M', 'Solteiro', 'Branca', "gabriel.lima@gmail.com", "J.23"),
    (01234567890, "Amanda Pereira", 09876543, "1998-09-05", 'F', 'Solteira', 'Parda', "amanda.pereira@gmail.com", "L.34"),
    (12345678901, "Rafael Santos", 98765432, "1989-12-10", 'M', 'Casado', 'Branca', "rafael.santos@gmail.com", "O.47"),
    (23456789012, "Luana Costa", 87654321, "1993-06-18", 'F', 'Solteira', 'Negra', "luana.costa@gmail.com", "Q.59"),
    (34567890123, "Gustavo Oliveira", 76543210, "1986-03-25", 'M', 'Solteiro', 'Branca', "gustavo.oliveira@gmail.com", "S.61"),
    (45678901234, "Fernanda Silva", 65432109, "1991-08-31", 'F', 'Solteira', 'Parda', "fernanda.silva@gmail.com", "V.74"),
    (56789012345, "Pedro Almeida", 54321098, "1984-05-06", 'M','Casado', 'Branca', "pedro.almeida@gmail.com", "X.83");
    
insert into paciente (cpf, nome,  cns, dataNasc, sexo, estCivil, cor, email, preCID)
    values (70163522421, "Juliane Reis", 70253541, "1996-03-18", 'F', 'Solteira', 'Branca', "julianereism@gmail.com", "G93.2"),
		(11269679473, "Marina de Queiroz", 7042047, "1996-07-08", 'F', 'Viúva', 'Branca', "marinadequeiroz@gmail.com", "L73.2");
    

insert into ace (matricula, nome, cpf, email, dataNasc, sexo)
	values ("784469", "Bernadete Campos", 799874459, "bernadetecampos@prefeitura.com", "1972-04-19", 'F'),
    ("123456", "João Oliveira", 1234567890, "joao.oliveira@example.com", "1990-01-15", 'M'),
    ("234567", "Maria Silva", 234567890, "maria.silva@example.com", "1985-06-20", 'F'),
    ("345678", "Pedro Santos", 345678901, "pedro.santos@example.com", "1992-09-10", 'M'),
    ("456789", "Ana Souza", 456789012, "ana.souza@example.com", "1988-03-05", 'F'),
    ("567890", "Lucas Costa", 567890234, "lucas.costa@example.com", "1995-11-22", 'M'),
    ("678901", "Juliana Almeida", 678902345, "juliana.almeida@example.com", "1991-07-18", 'F'),
    ("789012", "Gustavo Pereira", 789013456, "gustavo.pereira@example.com", "1987-12-12", 'M'),
    ("890123", "Camila Santos", 890123467, "camila.santos@example.com", "1993-09-08", 'F'),
    ("901234", "Ricardo Lima", 901234578, "ricardo.lima@example.com", "1983-04-30", 'M'),
    ("012345", "Fernanda Oliveira", 012346789, "fernanda.oliveira@example.com", "1997-02-25", 'F');
    

insert into acs (matricula, nome, cpf, email, dataNasc, sexo)
	values ("9878995", "Cláudio Bezerra Neto", 78945877967, "claudiobneto@prefeitura.com", "1985-01-25", 'M'),
    ("1234567", "João da Silva", 12345678901, "joao.silva@example.com", "1990-03-15", 'M'),
  ("2345678", "Maria Souza", 23456789012, "maria.souza@example.com", "1985-08-22", 'F'),
  ("3456789", "Pedro Oliveira", 34567890123, "pedro.oliveira@example.com", "1992-11-10", 'M'),
  ("4567890", "Ana Pereira", 45678901234, "ana.pereira@example.com", "1987-04-02", 'F'),
  ("5678901", "Lucas Santos", 56789012345, "lucas.santos@example.com", "1995-09-17", 'M'),
  ("6789012", "Mariana Costa", 67890123456, "mariana.costa@example.com", "1984-12-28", 'F'),
  ("7890123", "Rafaela Fernandes", 78901234567, "rafaela.fernandes@example.com", "1991-07-09", 'F'),
  ("8901234", "Bruno Almeida", 89012345678, "bruno.almeida@example.com", "1989-02-14", 'M'),
  ("9012345", "Camila Rodrigues", 90123456789, "camila.rodrigues@example.com", "1993-05-28", 'F'),
  ("0123456", "Gustavo Nunes", 01234567890, "gustavo.nunes@example.com", "1988-10-03", 'M'),
  ("1234509", "Isabela Silva", 12345098765, "isabela.silva@example.com", "1996-06-20", 'F'),
  ("234678", "Ricardo Mendes", 23456789654, "ricardo.mendes@example.com", "1994-01-12", 'M');
    

insert into distrito_sanitario (nome, zona, area, qntdBairros, areaCobertura)
	values ("Distrito I", "Leste", "1547", 18, 112),
  ("Distrito II", "Oeste", "1890", 16, 110),
  ("Distrito III", "Norte", "1275", 12, 80),
  ("Distrito IV", "Sul", "1620", 14, 60),
  ("Distrito V", "Centro", "890", 7, 67),
  ("Distrito VI", "Noroeste", "1375", 11, 90),
  ("Distrito VII", "Sudoeste", "1450", 13, 98),
  ("Distrito VIII", "Nordeste", "1210", 9, 72);


insert into bairro (nome, numHabitantes, numCasas, porcECA, porET, Distrito_Sanitario_idDS, Paciente_cpf)
	values ("Santo Amaro", 27939, 8474, 78, 43, 1, "70163522421"),
		("Boa Vista", 15001, 5145, 80, 54, 1, "11269679473"),
        ("Alto Santa Terezinha", 20145, 2456, 74, 36, 2, "1234567890"),
        ("Água Fria", 17256, 4789, 45, 35, 2, "12345678901"),
        ("Bomba do Hemetério", 8587, 2350, 52, 65, 3, "23456789012"),
        ("Cordeiro", 41164, 12797, 58, 78, 3, "34567890123"),
        ("Curado", 16418, 4900, 65, 47, 4, "3862554406"),
        ("Boa Viagem", 122922, 42282, 78, 85, 4, "45678901234"),
        ("Areias", 54789, 25789, 67, 49, 5, "56789012345"),
        ("Brasília Teimosa", 45879, 23648, 45, 25, 6, "67890123456"),
        ("Alto José Bonifácio", 324569, 12458, 47, 58, 7, "78901234567"),
        ("Ibura", 45789, 23654, 54, 85, 8, "89012345678"),
        ("Cohab", 58798, 35264, 61, 73, 8, "90123456789");
        

insert into cid (nomeCid, nomePopular, descricao)
	values ("R.51", "Cefaleia", "Dor de cabeça aguda ou crônica"),
    ("A27", "Leptospirose", "Febre, dor de cabeça, dor muscular, falta de apetite"),
    ("A00", "Cólera", "Infecção intestinal aguda causada pela bactéria Vibrio cholerae"),
    ("A09", "Diarreia e gastroenterite", "Distúrbios gastrointestinais agudos causados por infecções presumidas de origem infecciosa."),
    ("A03", "Shigelose (bacilar)", "Infecção intestinal causada pela bactéria Shigella spp"),
    ("A06", "Amebíase", " Infecção intestinal causada pelo protozoário Entamoeba histolytica"),
    ("A15", "Tuberculose respiratória", "Infecção pulmonar causada pela bactéria Mycobacterium tuberculosis"),
    ("A16", "Tuberculose extrapulmonar", "Infecção causada pela bactéria Mycobacterium tuberculosis que afeta órgãos além dos pulmões"),
    ("A31", "Infecção por micobactérias atípicas", "Infecções causadas por micobactérias diferentes da Mycobacterium tuberculosis"),
    ("A41", "Sepse", "Infecção generalizada que afeta todo o organismo"),
    ("A74", "Febre tifoide e paratifoides", "Infecções sistêmicas causadas pelas bactérias Salmonella typhi e Salmonella paratyphi"),
    ("A83", "Encefalite transmitida por carrapatos", "Inflamação do cérebro causada por infecção transmitida por carrapatos"),
    ("B66", "Esquistossomose (bilharziose)", " Infecção causada por parasitas do gênero Schistosoma, transmitidos pela água"),
    ("B74", "Ancilostomíase e necatoríase", "Infecções intestinais causadas pelos vermes Ancilostoma duodenale e Necator americanus"),
    ("B97", "Infecções virais não especificadas", "nfecções virais não especificadas relacionadas a doenças hídricas");



insert into alta (dataAlta, dataAdmissao, Hospital_idHospital, Paciente_cpf, Internacoes_idInternacoes)
	values ("2023-05-15", "2023-05-18", 2, "1234567890", 45),
			("2022-07-12", "2022-08-12", 3, "12345678901", 46),
            ("2023-02-12", "2023-06-21", 4, "23456789012", 47),
            ("2023-01-02", "2023-04-25", 5, "34567890123", 48),
            ("2023-05-26", "2023-06-12", 7, "3862554406", 49),
            ("2023-08-25", "2023-09-09", 4, "45678901234", 50),
            ("2021-05-26", "2022-04-25", 11, "56789012345", 51),
            ("2022-02-20", "2022-04-25", 3, "67890123456", 52);
            

insert into esgoto (latitude, longitude, dataCirculacao)
	values (8054231, 34881424, "2023-06-01"),
    (8049876, 34899432, "2023-06-02"),
    (8064512, 34892367, "2023-06-03"),
    (8071345, 34901234, "2023-06-04"),
    (8076543, 34880987, "2023-06-05"),
    (8061234, 34876543, "2023-06-06"),
    (8042345, 34889012, "2023-06-07"),
    (8084567, 34908765, "2023-06-08"),
    (8073219, 34894567, "2023-06-09"),
    (8049876, 34902345, "2023-06-10"),
    (8068901, 34887654, "2023-06-11");
    
insert into endereco (uf, cidade, bairro, rua, numero, cep, complemento, Paciente_cpf)
	values ("PE", "Recife", "Boa Vista", "Riachuelo", 12, 53290030, "apto 02", 70163522421),
      ("PE", "Recife", "Boa Vista", "Manoel Borba", 361, 50070000, " 01 andar", 11269679473),
      ("PE", "Recife", "Alto Santa Terezinha",  "Alto Brasil", 7345, 52080050, "terreo", "1234567890"),
      ("PE", "Recife", "Bomba do Hemetério", "Doutor José Fulco", 12, 52111010, "apt 230", "23456789012"),
      ("PE", "Recife", "Cordeiro", "Canuma", 01, 50620105, "apt 1203", "34567890123"),
      ("PE", "Recife", "Curado", "Brejo Novo", 200, 50761170, "casa","3862554406"),
      ("PE", "Recife", "Boa Viagem", "Av Boa Viagem", 7340, 51020000, "apt 2506", "45678901234"),
      ("PE", "Recife", "Brasilia Teimosa", "Delfim",967,51010010, " casa", "67890123456"),
      ("PE", "Recife","Alto José Bonifacio", "Ambar", 1234, "52080200", "apt 05", "78901234567"),
      ("PE", "Recife", "Ibura","Perimetral", 576, 51200240, "casa", "89012345678"),
      ("PE", "Recife", "Cohab", "das Flores", 890, 51270100, "casa de cima", "90123456789");
    

insert into esgoto (latitude, longitude, dataCirculacao)
	values (789, 748, "2023-03-03");
    

insert into hospital (nome, especializacao, tipo, qntdLeitos)
	values  ("Hospital da Restauração", "Emergência e Trauma", "Público", 500),
    ("Hospital Português", "Cardiologia", "Privado", 300),
    ("Hospital das Clínicas", "Clínica Médica", "Público", 400),
    ("Hospital Memorial São José", "Oncologia", "Privado", 200),
    ("Hospital Agamenon Magalhães", "Ortopedia", "Público", 350),
    ("Real Hospital Português de Beneficência", "Cirurgia Geral", "Privado", 250),
    ("Hospital Barão de Lucena", "Pediatria", "Público", 200),
    ("Hospital Esperança", "Neurologia", "Privado", 350),
    ("Hospital Otávio de Freitas", "Urologia", "Público", 300),
    ("Hospital São Marcos", "Ginecologia e Obstetrícia", "Privado", 150),
    ("Hospital Getúlio Vargas", "Psiquiatria", "Público", 250);


insert into internacoes (cid, sintomas, CID_nomeCid)
	values ("A09", "diarréia, febre", "A09"),
        ("A06", "vômito e diarréia", "A06"),
        ("A15", "falta de ar, tosse, febre", "A15"),
        ("A27", "febre, dor de cabeça, dor muscular", "A27"),
        ("A27", "dor de cabeça, falta de apetite, febre", "A27"),
        ("A74", "infecções sistêmicas no corpo", "A74"),
        ("R.51", "dor de cabeça aguda", "R.51"),
        ("B97", "diarréia, vômito, náusea, tontura", "B97"),
        ("A41", "infecção generalizada no corpo", "A41"),
        ("A27", "vômito, febre, enxaqueca", "A27");
      
    
insert into telefone (numero, Paciente_CPF)
	values (81996242385, "70163522421"),
    (81987654321, '70163522421'),
    (81912345677, '11269679473'),
    (81923456789, '1234567890'),
    (81934567890, '23456789012'),
    (81945678901, '34567890123'),
    (81956789012, '3862554406'),
    (81967890123, '45678901234'),
    (81978901234, '56789012345'),
    (8198901-2345, '67890123456'),
    (81990123456, '78901234567'),
    (81901234567, '89012345678'),
    (81912345678, '90123456789');
    
   
insert into telefone (numero, Hospital_idHospital)
	values   ('8134216522', 1),
    ('8121263633', 3),
    ('8132162222', 4),
    ('8131841600', 5),
    ('8134161800', 6),
    ('8131846400', 7),
    ('8131317878', 8),
    ('8131828500', 9),
    ('8146748400', 10),
    ('8132241297', 11);
    
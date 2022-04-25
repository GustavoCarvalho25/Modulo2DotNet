use db_classificados

insert into Usuario
values 
('18846205899', 'anunciante', 'SP', '11983672093'),
('86756573892', 'anunciante', 'SP', '23984620587'),
('64374895473', 'anunciante', 'RJ', '14904937465')

insert into Anuncio
values 
('Emprego', 'Corsinha rebaixado', 'SP', '11804837465', 1),
('Carro', 'Saveiro com paredão', 'SP', '11984550587', 2),
('Carro', 'Taxi amarelo', 'RJ', '11984550587', 3)

select * from Usuario where Regiao like 'SP'
select * from Anuncio where Classificacao like '%car%'
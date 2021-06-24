insert into categoria (id, nome, descricao) values
   (1, 'INFORMATICA','produtos de informática'),
   (2, 'ESCRITORIO','cadeiras, mesas, e materiais de escritório'),
   (3, 'LIVRARIA','livros, revistas, quadrinhos'),
   (4, 'CARTAS RPG', 'Pokemon, D&D, Magic'),
   (5, 'BRINQUEDOS' 'Joogos diversos');
   
insert into funcionario (id, cpf, nome) values
   (1, '46416606038', 'Sebastião Anderson Farias'),
   (2, '88955429088', 'Antonio Elias Barbosa'),
   (3, '67048069031', 'Mirella Bárbara de Paula');
   
insert into cliente(id, cpf, nome, email, data_nascimento, login) values
   (1, '60530582031', 'Ester Antonella Peixoto',    'ester@email.com',     '1992-02-01', 'ester'),
   (2, '59456286037', 'Severino Cauê Victor Souza',   'severino@email.com',    '1993-04-06', 'severino'),
   (3, '31804568090', 'Catarina Priscila Aragão',      'catarina@email.com',   '1991-08-13', 'catarina'),
   (4, '58005641087', 'Gustavo Nicolas Teixeira', 'gustavo@email.com', '2002-03-21', 'gustavo'),
   (5, '77352233075', 'Emanuelly Bárbara Rosa da Cunha',  'rosa@email.com',       '2001-07-11', 'rosa');
   
insert into endereco (id, id_cliente, logradouro, numero, complemento, bairro, cidade, cep, uf) values
   (1, 1, 'Avenida Florestal', '549',  '',  'Jardins',     'Aracruz',            '29190380',    'ES'),
   (2, 2, 'Rua Brusque', '940',  '',        'Residencial Camargo', 'Araguaína',  '77808684',    'TO'),
   (3, 3, 'Rua Cinqüenta e Sete', '575', '', 'Esplanada', 'Bagé',            '96420260', 'RS'),
   (4, 4, 'Rua Lausanne',  '861', '',  'SinBethânia',    'Ipatinga',      '35164072',    'MG'),
   (5, 5, 'Quadra SQSW',  '626', 'Bloco J',        'Setor Sudoeste',  'Brasília',      '70673510',    'AL');
   
insert into foto (id, nome, mimetype, data) values
   (1, 'cadeira.jpg',            'image/jpeg', FILE_READ('classpath:fotos/cadeira.jpg')),
   (2, 'escrivaninha.jpg',       'image/jpeg', FILE_READ('classpath:fotos/escrivaninha.jpg')),
   (3, 'doinferno.jpg',          'image/jpeg', FILE_READ('classpath:fotos/doinferno.jpg')),
   (4, 'useacabeca.jpg',         'image/jpeg', FILE_READ('classpath:fotos/useacabeca.jpg')),
   (5, 'tablet.jpg',             'image/jpeg', FILE_READ('classpath:fotos/tablet.jpg')),
   (6, 'mouse.jpg',              'image/jpeg', FILE_READ('classpath:fotos/mouse.jpg')),
   (7, 'fitacrepe.jpg',          'image/jpeg', FILE_READ('classpath:fotos/fitacrepe.jpg')),
   (8, 'mousepad.jpg',           'image/jpeg', FILE_READ('classpath:fotos/mousepad.jpg')),
   (9, 'batalhaapocalipse.jpg',  'image/jpeg', FILE_READ('classpath:fotos/batalhaapocalipse.jpg'));
   
   
   
insert into produto (id, nome, descricao, qtd_estoque, valor, id_categoria, id_funcionario, data_fabricacao, id_foto) values
   (1, 'Cadeira bx9',             'cadeira ergonomica confortavel',   3 ,  850.00, 2, 3, '2019-10-01', 1),
   (2, 'Escrivaniha 1000',        'escrivainha para computador',      4 , 1850.00, 2, 3, '2019-08-11', 2),
   (3, 'Do Inferno',              'Quadrinho do Alan More',           2 ,  150.00, 3, 2, '2017-12-21', 3),
   (4, 'Use a Cabeca Java',       'Livro principal para Java',       10 ,  75.00,  3, 2, '2016-04-22', 4),
   (5, 'Tablet Samsung',          'Tablet 10 polegadas',              2 , 3850.00, 1, 1, '2018-02-04', 5),
   (6, 'Mouse Logitec',           'Mouse com 3 botoes e uma rodinha', 2 ,   50.00, 1, 3, '2019-07-13', 6),
   (7, 'Fita Crepe',              'Fita crepe simples',              33 ,    1.30, 2, 1, '2012-12-15', 7),
   (8, 'Mousepad',                'Mousepad estilizado com foto',    13 ,   25.00, 1, 1, '2020-01-04', 8),
   (9, 'A Batalha do Apocalipse', 'Melhor livro que voce deve ler',  42 ,   55.00, 3, 2, '2009-01-21', 9);
   

insert into pedido (id, id_cliente, data_pedido, status) values 
  ( 1, 1, '2020-08-30 20:10:10', 4),
  ( 2, 1, '2020-09-10 12:13:12', 2),
  ( 3, 2, '2020-07-11 12:34:21', 2), 
  ( 4, 2, '2020-08-15 09:10:36', 1),
  ( 5, 3, '2020-09-13 19:12:26', 1);
  
insert into pedido_item  (id_pedido, id_produto, quantidade, valor) values
  ( 1, 1, 1, 830.00),
  ( 1, 2, 1, 1570.00),
  ( 1, 7, 1, 1.20),
  ( 2, 1, 1, 835.00), 
  ( 2, 2, 1, 1770.00),
  ( 3, 8, 3, 22.00), 
  ( 3, 6, 3, 45.50),
  ( 4, 3, 1, 127.99),
  ( 4, 9, 1, 60.00),
  ( 5, 4, 2, 65.90),
  ( 5, 5, 1, 3850.00);
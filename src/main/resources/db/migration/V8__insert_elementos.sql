INSERT INTO usuario (nome, senha, email, role)
VALUES(
    'admin',
    '$2a$10$AFMf2HPDselJvuqIlBFneek0ZRiQOEnM9AAnO8DJeA5rCST9UED9G',
    'admin@sistema.com',
    'ROLE_ADMIN'
    );

INSERT INTO cardapio (nome, valor, descricao) VALUES
    ('Feijoada Completa', 45.90, 'Feijoada tradicional com arroz, couve, farofa e laranja'),
    ('Picanha Grelhada', 89.90, 'Picanha grelhada na chapa, acompanha arroz e batata frita'),
    ('Filé de Frango à Parmegiana', 42.50, 'Filé de frango empanado com molho de tomate e queijo gratinado'),
    ('Bife Acebolado', 35.90, 'Bife com cebola caramelizada, acompanha arroz e feijão'),
    ('Lasanha à Bolonhesa', 48.90, 'Lasanha de carne moída com molho branco e queijo'),
    ('Macarrão ao Molho Pesto', 38.50, 'Macarrão com molho pesto de manjericão e castanhas'),
    ('Risoto de Camarão', 65.90, 'Risoto cremoso com camarões salteados'),
    ('Salada Caesar', 32.90, 'Salada com alface, frango grelhado, croutons e molho caesar'),
    ('Batata Frita', 25.90, 'Porção de batata frita crocante com molho especial'),
    ('Caldo de Mandioca', 22.90, 'Caldo cremoso de mandioca com carne seca desfiada'),
    ('Pastel de Carne', 18.90, 'Pastel frito recheado com carne moída temperada (2 unidades)'),
    ('Coxinha de Frango', 19.90, 'Coxinha de frango com catupiry (3 unidades)'),
    ('Bolinho de Bacalhau', 32.90, 'Bolinhos de bacalhau (4 unidades)'),
    ('Empadão de Frango', 28.90, 'Empadão de frango com milho e azeitona'),
    ('Escondidinho de Carne Seca', 42.90, 'Escondidinho de carne seca com purê de mandioca'),
    ('Moqueca de Peixe', 72.90, 'Moqueca de peixe com leite de coco e dendê'),
    ('Acarajé', 15.90, 'Acarajé com vatapá, camarão e pimenta'),
    ('Tapioca de Queijo', 12.90, 'Tapioca recheada com queijo coalho'),
    ('Açaí na Tigela', 24.90, 'Açaí com granola, banana e leite condensado'),
    ('Pudim de Leite', 16.90, 'Pudim de leite condensado com calda de caramelo');
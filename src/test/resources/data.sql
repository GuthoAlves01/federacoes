INSERT INTO COUNTRIES (ID, NAME, CODE, DESCRIPTION, LATITUDE, LONGITUDE)
VALUES
    ('ID_' || NEXTVAL('seq_id'), 'United States', 'USA', 'A country in North America known for its global influence and power', 37.0902, -95.7129),
    ('ID_' || NEXTVAL('seq_id'), 'Brazil', 'BRA', 'Largest country in South America known for its diverse culture and Amazon rainforest', -14.2350, -51.9253),
    ('ID_' || NEXTVAL('seq_id'), 'Japan', 'JPN', 'An island nation in East Asia, known for its technology and traditions', 36.2048, 138.2529),
    ('ID_' || NEXTVAL('seq_id'), 'Germany', 'DEU', 'A country in Central Europe, famous for its history and economy', 51.1657, 10.4515),
    ('ID_' || NEXTVAL('seq_id'), 'China', 'CHN', 'The world''s most populous country, located in East Asia', 35.8617, 104.1954),
    ('ID_' || NEXTVAL('seq_id'), 'India', 'IND', 'A country in South Asia known for its rich history and diversity', 20.5937, 78.9629),
    ('ID_' || NEXTVAL('seq_id'), 'France', 'FRA', 'A country in Western Europe, famous for its culture, art, and history', 46.6034, 1.8883),
    ('ID_' || NEXTVAL('seq_id'), 'United Kingdom', 'GBR', 'A country in Europe consisting of England, Scotland, Wales, and Northern Ireland', 55.3781, -3.4360),
    ('ID_' || NEXTVAL('seq_id'), 'Russia', 'RUS', 'The largest country in the world, spanning Eastern Europe and northern Asia', 55.7558, 37.6173),
    ('ID_' || NEXTVAL('seq_id'), 'Australia', 'AUS', 'A country and continent known for its unique wildlife and the Great Barrier Reef', -25.2744, 133.7751);


SET @brazil_uuid = (SELECT ID FROM COUNTRIES WHERE NAME = 'Brazil');

INSERT INTO STATE (ID, NAME, CODE, DESCRIPTION, LATITUDE, LONGITUDE, COUNTRY_ID)
VALUES
    ('ID_' || NEXTVAL('seq_id_state'),'Acre', 'AC', 'Acre é um estado localizado na região Norte do Brasil, conhecido por sua biodiversidade e florestas tropicais.', -8.7742, -70.5358, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Alagoas', 'AL', 'Alagoas é um estado localizado na região Nordeste, famoso pelas suas belas praias e clima tropical.', -9.2197, -36.7820, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Amapá', 'AP', 'Amapá é um estado situado na região Norte do Brasil, com grande parte de sua área coberta pela Amazônia.', 1.4118, -51.7717, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Amazonas', 'AM', 'Amazonas é o maior estado do Brasil e abriga a maior parte da Floresta Amazônica.', -3.4659, -62.2195, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Bahia', 'BA', 'Bahia é um estado localizado na região Nordeste, conhecido por sua rica cultura e belas praias.', -12.5770, -41.4740, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Ceará', 'CE', 'Ceará é um estado do Nordeste, famoso por suas praias e clima quente.', -5.5272, -39.3144, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Espírito Santo', 'ES', 'Espírito Santo é um estado da região Sudeste, conhecido por suas montanhas e litoral.', -19.1801, -40.3089, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Goiás', 'GO', 'Goiás é um estado do Centro-Oeste, conhecido por sua produção agrícola e pecuária.', -16.6864, -49.2644, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Maranhão', 'MA', 'Maranhão é um estado da região Nordeste, com uma grande diversidade cultural e natural.', -5.8694, -45.3037, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Mato Grosso', 'MT', 'Mato Grosso é um estado do Centro-Oeste, conhecido por sua vasta área de cerrado e Pantanal.', -12.6811, -56.9241, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Mato Grosso do Sul', 'MS', 'Mato Grosso do Sul é um estado da região Centro-Oeste, conhecido pelo Pantanal e suas belezas naturais.', -20.7643, -54.5853, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Minas Gerais', 'MG', 'Minas Gerais é um estado da região Sudeste, conhecido por sua história, montanhas e cultura.', -18.5158, -44.0033, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Pará', 'PA', 'Pará é um estado da região Norte, famoso pela Floresta Amazônica e pelos rios que cruzam o estado.', -3.4160, -54.7117, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Paraíba', 'PB', 'Paraíba é um estado da região Nordeste, com praias paradisíacas e uma rica cultura popular.', -7.2599, -35.3038, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Paraná', 'PR', 'Paraná é um estado do Sul, conhecido por suas montanhas, florestas e o Parque Nacional de Iguaçu.', -25.5000, -52.0000, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Pernambuco', 'PE', 'Pernambuco é um estado da região Nordeste, com uma rica história e belas praias.', -8.0476, -34.8770, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Piauí', 'PI', 'Piauí é um estado do Nordeste, conhecido por suas belezas naturais e clima seco.', -7.1153, -42.2859, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Rio de Janeiro', 'RJ', 'Rio de Janeiro é um dos estados mais famosos do Brasil, conhecido por suas praias e o Cristo Redentor.', -22.9068, -43.1729, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Rio Grande do Norte', 'RN', 'Rio Grande do Norte é um estado do Nordeste, famoso pelas suas dunas e praias.', -5.7945, -35.2110, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Rio Grande do Sul', 'RS', 'Rio Grande do Sul é um estado do Sul do Brasil, com uma cultura influenciada pela imigração europeia.', -30.0346, -51.2177, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Rondônia', 'RO', 'Rondônia é um estado da região Norte, com grande parte de sua área coberta pela floresta amazônica.', -11.2208, -63.1881, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Roraima', 'RR', 'Roraima é o estado mais ao norte do Brasil, com grande parte de sua área coberta pela Amazônia.', 2.8191, -60.6713, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Santa Catarina', 'SC', 'Santa Catarina é um estado do Sul, famoso por suas praias, montanhas e culinária.', -27.5954, -48.5480, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'São Paulo', 'SP', 'São Paulo é o estado mais populoso e desenvolvido do Brasil, com uma grande economia e cultura diversa.', -23.5505, -46.6333, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Sergipe', 'SE', 'Sergipe é o menor estado do Brasil, localizado no Nordeste e famoso por suas praias e rios.', -10.9472, -37.0731, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Tocantins', 'TO', 'Tocantins é um estado da região Norte, com diversas áreas de cerrado e vida selvagem.', -10.2500, -48.3000, @brazil_uuid),
    ('ID_' || NEXTVAL('seq_id_state'),'Distrito Federal', 'DF', 'Distrito Federal abriga a capital do Brasil, Brasília, e é a sede do governo federal.', -15.7801, -47.9292, @brazil_uuid);
-- liquibase formatted sql

-- changeset autor:gutho_alves:seed-states

SET @brazil_uuid = (SELECT ID FROM COUNTRIES WHERE NAME = 'Brazil');

INSERT INTO STATE (NAME, CODE, DESCRIPTION, LATITUDE, LONGITUDE, COUNTRY_ID)
VALUES
    ('Acre', 'AC', 'Acre é um estado localizado na região Norte do Brasil, conhecido por sua biodiversidade e florestas tropicais.', -8.7742, -70.5358, @brazil_uuid),
    ('Alagoas', 'AL', 'Alagoas é um estado localizado na região Nordeste, famoso pelas suas belas praias e clima tropical.', -9.2197, -36.7820, @brazil_uuid),
    ('Amapá', 'AP', 'Amapá é um estado situado na região Norte do Brasil, com grande parte de sua área coberta pela Amazônia.', 1.4118, -51.7717, @brazil_uuid),
    ('Amazonas', 'AM', 'Amazonas é o maior estado do Brasil e abriga a maior parte da Floresta Amazônica.', -3.4659, -62.2195, @brazil_uuid),
    ('Bahia', 'BA', 'Bahia é um estado localizado na região Nordeste, conhecido por sua rica cultura e belas praias.', -12.5770, -41.4740, @brazil_uuid),
    ('Ceará', 'CE', 'Ceará é um estado do Nordeste, famoso por suas praias e clima quente.', -5.5272, -39.3144, @brazil_uuid),
    ('Espírito Santo', 'ES', 'Espírito Santo é um estado da região Sudeste, conhecido por suas montanhas e litoral.', -19.1801, -40.3089, @brazil_uuid),
    ('Goiás', 'GO', 'Goiás é um estado do Centro-Oeste, conhecido por sua produção agrícola e pecuária.', -16.6864, -49.2644, @brazil_uuid),
    ('Maranhão', 'MA', 'Maranhão é um estado da região Nordeste, com uma grande diversidade cultural e natural.', -5.8694, -45.3037, @brazil_uuid),
    ('Mato Grosso', 'MT', 'Mato Grosso é um estado do Centro-Oeste, conhecido por sua vasta área de cerrado e Pantanal.', -12.6811, -56.9241, @brazil_uuid),
    ('Mato Grosso do Sul', 'MS', 'Mato Grosso do Sul é um estado da região Centro-Oeste, conhecido pelo Pantanal e suas belezas naturais.', -20.7643, -54.5853, @brazil_uuid),
    ('Minas Gerais', 'MG', 'Minas Gerais é um estado da região Sudeste, conhecido por sua história, montanhas e cultura.', -18.5158, -44.0033, @brazil_uuid),
    ('Pará', 'PA', 'Pará é um estado da região Norte, famoso pela Floresta Amazônica e pelos rios que cruzam o estado.', -3.4160, -54.7117, @brazil_uuid),
    ('Paraíba', 'PB', 'Paraíba é um estado da região Nordeste, com praias paradisíacas e uma rica cultura popular.', -7.2599, -35.3038, @brazil_uuid),
    ('Paraná', 'PR', 'Paraná é um estado do Sul, conhecido por suas montanhas, florestas e o Parque Nacional de Iguaçu.', -25.5000, -52.0000, @brazil_uuid),
    ('Pernambuco', 'PE', 'Pernambuco é um estado da região Nordeste, com uma rica história e belas praias.', -8.0476, -34.8770, @brazil_uuid),
    ('Piauí', 'PI', 'Piauí é um estado do Nordeste, conhecido por suas belezas naturais e clima seco.', -7.1153, -42.2859, @brazil_uuid),
    ('Rio de Janeiro', 'RJ', 'Rio de Janeiro é um dos estados mais famosos do Brasil, conhecido por suas praias e o Cristo Redentor.', -22.9068, -43.1729, @brazil_uuid),
    ('Rio Grande do Norte', 'RN', 'Rio Grande do Norte é um estado do Nordeste, famoso pelas suas dunas e praias.', -5.7945, -35.2110, @brazil_uuid),
    ('Rio Grande do Sul', 'RS', 'Rio Grande do Sul é um estado do Sul do Brasil, com uma cultura influenciada pela imigração europeia.', -30.0346, -51.2177, @brazil_uuid),
    ('Rondônia', 'RO', 'Rondônia é um estado da região Norte, com grande parte de sua área coberta pela floresta amazônica.', -11.2208, -63.1881, @brazil_uuid),
    ('Roraima', 'RR', 'Roraima é o estado mais ao norte do Brasil, com grande parte de sua área coberta pela Amazônia.', 2.8191, -60.6713, @brazil_uuid),
    ('Santa Catarina', 'SC', 'Santa Catarina é um estado do Sul, famoso por suas praias, montanhas e culinária.', -27.5954, -48.5480, @brazil_uuid),
    ('São Paulo', 'SP', 'São Paulo é o estado mais populoso e desenvolvido do Brasil, com uma grande economia e cultura diversa.', -23.5505, -46.6333, @brazil_uuid),
    ('Sergipe', 'SE', 'Sergipe é o menor estado do Brasil, localizado no Nordeste e famoso por suas praias e rios.', -10.9472, -37.0731, @brazil_uuid),
    ('Tocantins', 'TO', 'Tocantins é um estado da região Norte, com diversas áreas de cerrado e vida selvagem.', -10.2500, -48.3000, @brazil_uuid),
    ('Distrito Federal', 'DF', 'Distrito Federal abriga a capital do Brasil, Brasília, e é a sede do governo federal.', -15.7801, -47.9292, @brazil_uuid);

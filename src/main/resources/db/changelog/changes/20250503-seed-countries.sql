-- liquibase formatted sql

-- changeset autor:gutho_alves:seed-countries
INSERT INTO COUNTRIES (NAME, CODE, DESCRIPTION, LATITUDE, LONGITUDE)
VALUES
    ('United States', 'USA', 'A country in North America known for its global influence and power', 37.0902, -95.7129),
    ('Brazil', 'BRA', 'Largest country in South America known for its diverse culture and Amazon rainforest', -14.2350, -51.9253),
    ('Japan', 'JPN', 'An island nation in East Asia, known for its technology and traditions', 36.2048, 138.2529),
    ('Germany', 'DEU', 'A country in Central Europe, famous for its history and economy', 51.1657, 10.4515),
    ('China', 'CHN', 'The world''s most populous country, located in East Asia', 35.8617, 104.1954),
    ('India', 'IND', 'A country in South Asia known for its rich history and diversity', 20.5937, 78.9629),
    ('France', 'FRA', 'A country in Western Europe, famous for its culture, art, and history', 46.6034, 1.8883),
    ('United Kingdom', 'GBR', 'A country in Europe consisting of England, Scotland, Wales, and Northern Ireland', 55.3781, -3.4360),
    ('Russia', 'RUS', 'The largest country in the world, spanning Eastern Europe and northern Asia', 55.7558, 37.6173),
    ('Australia', 'AUS', 'A country and continent known for its unique wildlife and the Great Barrier Reef', -25.2744, 133.7751);

package br.gthg.federacao.service;

import br.gthg.federacao.entity.Country;

import java.util.List;

public interface ICountryService {
    Country findById(String id);

    Country findCountryByCode(final String code);

    List<Country> findAll();
}

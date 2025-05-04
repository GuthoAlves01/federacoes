package br.gthg.federacao.service;

import br.gthg.federacao.entity.State;

import java.util.List;

public interface IStateService {
    List<State> findStatesByCountry(final String country_id);

    List<State> findStatesByCountryCode(final String code);

    State findById(final String id);

}

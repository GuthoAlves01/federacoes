package br.gthg.federacao.service;

import br.gthg.federacao.entity.Country;
import br.gthg.federacao.entity.State;
import br.gthg.federacao.repository.CountryRepository;
import br.gthg.federacao.repository.StateRepository;
import com.fasterxml.jackson.databind.util.ArrayIterator;
import org.apache.commons.collections4.iterators.ListIteratorWrapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

@Service
public class StateService implements IStateService {

    private final StateRepository stateRepository;
    private final CountryService countryService;

    protected StateService(final StateRepository stateRepository, CountryRepository countryRepository, CountryService countryService) {
        this.stateRepository = stateRepository;
        this.countryService = countryService;
    }

    public List<State> findStatesByCountry(final String country_id) {
        return stateRepository.findByCountry_Id(country_id);
    }

    public List<State> findStatesByCountryCode(final String code) {
        return stateRepository.findByCountry_Id(countryService.findCountryByCode(code).getId());
    }

    public State findById(final String id) {
        return stateRepository.findById(id).orElseThrow(() -> new RuntimeException("State not found"));
    }

}

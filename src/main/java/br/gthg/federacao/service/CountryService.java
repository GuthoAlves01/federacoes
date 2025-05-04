package br.gthg.federacao.service;

import br.gthg.federacao.entity.Country;
import br.gthg.federacao.repository.CountryRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class CountryService implements ICountryService {
    private CountryRepository repository;

    public CountryService(CountryRepository repository) {
        this.repository = repository;
    }

    @Override
    public Country findById(String id) {
        return repository.findById(id).orElseThrow(() -> new RuntimeException("Country not found"));
    }

    @Override
    public Country findCountryByCode(String code) {
        return repository.findByCode(code).orElse(new Country());
    }

    @Override
    public List<Country> findAll() {
        Iterator<Country> iterator = repository.findAll().iterator();
        List<Country> countries = new ArrayList<>();
        while (iterator.hasNext()) {
            countries.add(iterator.next());
        }
        return countries;
    }
}

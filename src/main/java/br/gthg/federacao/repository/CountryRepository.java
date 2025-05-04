package br.gthg.federacao.repository;

import br.gthg.federacao.entity.Country;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface CountryRepository extends CrudRepository<Country, String> {
    Optional<Country> findByCode(String code);
}

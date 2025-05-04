package br.gthg.federacao.repository;

import br.gthg.federacao.entity.State;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StateRepository extends CrudRepository<State, String> {

    List<State> findByCountry_Id(String countryId);

    List<State> findByCode(String code);
}

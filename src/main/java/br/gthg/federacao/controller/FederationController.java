package br.gthg.federacao.controller;

import br.gthg.federacao.entity.Country;
import br.gthg.federacao.entity.State;
import br.gthg.federacao.service.ICountryService;
import br.gthg.federacao.service.IStateService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/federation")
public class FederationController {
    private final IStateService stateService;
    private final ICountryService countryService;

    public FederationController(final IStateService stateService,
                                final ICountryService countryService) {

        this.stateService = stateService;
        this.countryService = countryService;
    }

    @GetMapping(value = "/country/{country_id}")
    public Country findCountry(@PathVariable("country_id") String country_id) {
        return countryService.findById(country_id);
    }

    @GetMapping(value = "/country/state/{state_id}")
    public State findState(@PathVariable("state_id") String state_id) {
        return stateService.findById(state_id);
    }

    @GetMapping(value = "/country/all")
    public List<Country> getAllCountry() {
        return countryService.findAll();
    }

    @GetMapping(value = "/country/{country_id}/state/all")
    public List<State> getAllStatesByCountry(@PathVariable("country_id") String country_id) {
        return stateService.findStatesByCountry(country_id);
    }

    @GetMapping(value = "/country/code/{country_code}/state/all")
    public List<State> getAllStates(@PathVariable("country_code") String code) {
        return stateService.findStatesByCountryCode(code);
    }
}

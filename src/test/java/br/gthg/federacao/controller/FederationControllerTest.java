package br.gthg.federacao.controller;

import br.gthg.federacao.entity.Country;
import br.gthg.federacao.entity.State;
import br.gthg.federacao.service.CountryService;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;

import java.util.List;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@SpringBootTest
@ActiveProfiles("test")
@AutoConfigureMockMvc
class FederationControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private CountryService countryService;

    @Test
    @Order(1)
    void h2UpTest() {
        Assertions.assertFalse(countryService.findAll().isEmpty());
    }

    @Test
    void findCountryTest() throws Exception {
        mockMvc.perform(get("/federation/country/ID_2"))
                .andExpect(jsonPath("name").value("Brazil"))
                .andExpect(jsonPath("code").value("BRA"));

    }

    @Test
    void findStateTest() throws Exception {
        mockMvc.perform(get("/federation/country/state/ID_2"))
                .andExpect(jsonPath("name").value("Alagoas"))
                .andExpect(jsonPath("code").value("AL"));
    }

    @Test
    void getAllCountryTest() throws Exception {
        mockMvc.perform(get("/federation/country/all"))
                .andExpect(result -> {
                    String json = result.getResponse().getContentAsString();
                    ObjectMapper mapper = new ObjectMapper();
                    List<Country> countries = mapper.readValue(json, new TypeReference<List<Country>>() {
                    });
                    Assertions.assertEquals(10, countries.size());
                });
    }

    @Test
    void getAllStatesByCountryTest() throws Exception {
        mockMvc.perform(get("/federation/country/ID_2/state/all"))
                .andExpect(result -> {
                    String json = result.getResponse().getContentAsString();
                    ObjectMapper mapper = new ObjectMapper();
                    List<State> states = mapper.readValue(json, new TypeReference<List<State>>() {
                    });
                    Assertions.assertFalse(states.isEmpty());
                    Assertions.assertEquals("ID_2", states.get(1).getId());
                });
    }

    @Test
    void getAllStates() throws Exception {
        mockMvc.perform(get("/federation/country/code/BRA/state/all"))
                .andExpect(result -> {
                    String json = result.getResponse().getContentAsString();
                    ObjectMapper mapper = new ObjectMapper();
                    List<State> states = mapper.readValue(json, new TypeReference<List<State>>() {
                    });
                    Assertions.assertFalse(states.isEmpty());
                    Assertions.assertEquals("ID_2", states.get(1).getId());
                });
    }
}
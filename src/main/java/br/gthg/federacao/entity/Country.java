package br.gthg.federacao.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "countries")
@Entity
public class Country implements Serializable {
    @Id
    @Column(name = "ID", length = 36)
    private String id;
    private String name;
    private String code;
    private String description;
    private String latitude;
    private String longitude;
}

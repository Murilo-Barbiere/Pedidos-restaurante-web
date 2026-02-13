package com.murilo_dev.system_pedidos.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@Entity
@Table(name = "pedidos")
public class PedidosModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pedidos_id")
    private Long id;

    @NotNull
    @Column(name = "user_id")
    private Long user_id;

    @NotNull
    @Column(name = "cardapio_id")
    private Long cardapio_id;

    @Column(name = "data_hora_pedido", insertable = false, updatable = false)
    private Instant DataHoraPeido;
}
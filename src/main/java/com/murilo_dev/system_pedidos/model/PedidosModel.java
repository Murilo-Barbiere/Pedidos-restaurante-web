package com.murilo_dev.system_pedidos.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

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
}
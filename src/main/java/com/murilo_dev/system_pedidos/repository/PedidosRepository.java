package com.murilo_dev.system_pedidos.repository;

import com.murilo_dev.system_pedidos.model.PedidosModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PedidosRepository extends JpaRepository<PedidosModel,Long> {
}
package com.murilo_dev.system_pedidos.repository;

import com.murilo_dev.system_pedidos.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserModel, Long> {
    Optional<UserModel> findByNome(String nome);
}
package com.example.dockerspringboot.model.repository;

import com.example.dockerspringboot.model.entity.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer> {
}

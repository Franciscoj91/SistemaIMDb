package com.edutecno.prueba.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="roles")
public class Role {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="role_id", nullable = false, unique = true)
	private Long id;
	
	@Column(name="role_name")
	private String name;
	
	//insert into prueba.roles (id, name) values (1, 'ROLE_USER´)
	//insert into prueba.roles (id, name) values (2, 'ROLE_ADMIN´) 
	
	@ManyToMany(mappedBy="roles")
	private List<User> users;
}

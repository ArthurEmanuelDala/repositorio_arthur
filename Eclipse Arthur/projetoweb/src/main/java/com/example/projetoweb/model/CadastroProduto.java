package com.example.projetoweb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name ="produtos")
public class cadastroProduto {
	private int id;
	@NotNull
	@Size(min =5, max= 100)
	@Descricao
	@Pattern(regexp=".+@.+\\..+", message = "Informe uma descrição válida")
	private String descricao;
	@NotNull	
	private String quantidade;
	@NotNull
	private String valorCompra;
	@NotNull
	private String valorVenda;
	@NotNull
	private String dataValidade;
	@NotNull
	private String fabricante;
		
	public cadastroProduto() {
		
	}
	
	public cadastroProduto(String descricao, String quantidade, String valorCompra, String valorVenda, String dataValidade, String fabricante) {
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.valorCompra = valorCompra;
		this.valorVenda = valorVenda;
		this.dataValidade = dataValidade;
		this.fabricante = fabricante;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
		public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "DESCRICAO", nullable = false)
	public String getDescricao() {
			return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;

	}
	
	@Column(name = "EMAIL", nullable = false, unique = true)
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;

	}
		
	@Column(name = "QUANTIDADE", nullable = false)
	
		public String getQuantidade() {
			return quantidade;
		}
		public void setQuantidade(String quantidade) {
			this.quantidade = quantidade;

	}
	
	@Column(name = "VALORCOMPRA", nullable = false)
		public String getValorCompra() {
			return valorCompra;
		}
		public void setValorCompra(String valorCompra) {
			this.valorCompra = valorCompra;
	
	}
	
	@Column(name = "VALORVENDA", nullable = false)
	public String getValorVenda() {
		return valorVenda;
	}
	public void setValorVenda(String valorVenda) {
		this.valorVenda = valorVenda;

	}
	
	@Column(name = "VALIDADE", nullable = false)
	public String getDataValidade() {
		return dataValidade;
	}
	public void setDataValidade(String dataValidade) {
		this.dataValidade = dataValidade;

	}
	
	@Column(name = "FABRICANTE", nullable = false)
	public String getFabricante() {
		return fabricante;
	}
	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;

	}
	
	@Override
	public String toString() {
		return "Produto [id= "+id+", Descrição = "+ descricao + ", Quantidade = "+ quantidade + ", Valor de compra = "+ valorCompra +
				", Valor de venda = "+ valorVenda + ", Data de validade = " + dataValidade + ", Fabricante = " + fabricante +"]";
	}
}
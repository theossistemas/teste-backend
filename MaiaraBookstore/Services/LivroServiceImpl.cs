﻿using MaiaraBookstore.Data;
using MaiaraBookstore.Models;
using MaiaraBookstore.Models.DTO;
using MaiaraBookstore.Repository.LivroRepository;
using System;

namespace MaiaraBookstore.Services
{
    public class LivroServiceImpl : ILivroService<Livro, LivroDTO>
    {
        private LivroRepository _livroRepository;

        public LivroServiceImpl(DataContext dataContext)
        {
            _livroRepository = new LivroRepository(dataContext);
        }
        public bool ValidaSeTituloDeLivroEstaCadastrado(String titulo)
        {
            Livro livro = _livroRepository.FindByTitulo(titulo);
            if (livro == null)
            {
                return false;
            }
            return true;
        }

        public void SalvarLivro(Livro livro)
        {
            this._livroRepository.Save(livro);
        }

        public void Delete(Livro objeto)
        {
            this._livroRepository.Delete(objeto);
        }

        public Livro FindById(int Id)
        {
            return this._livroRepository.FindById(Id);
        }

        public Livro EditaLivro(Livro livro, LivroDTO livroDTO)
        {
            livro.Titulo = livroDTO.Titulo;
            this._livroRepository.UpDate(livro);
            this._livroRepository.UpDate(livro);
            return livro;
        }
    }
}

﻿using Shared.DTOs;

public class ProdutoListViewModel
{
    public IEnumerable<ProdutoDTO> Produtos { get; set; }
    public int CurrentPage { get; set; }
    public int TotalPages { get; set; }
    public int PageSize { get; set; }
}
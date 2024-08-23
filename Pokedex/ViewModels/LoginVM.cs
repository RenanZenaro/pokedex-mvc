using System.ComponentModel.DataAnnotations;

namespace Pokedex.ViewModels;

public class LoginVM
{
    [Display(Name = "Email ou Nome de Usuário", Prompt = "Email ou Nome de Usuário")]
    [Required(ErrorMessage = "Informe o seu email ou nome de usuário")]
    public string Email { get; set; }
    [DataType(DataType.Password)]
    [Display(Name = "Senha de Acesso", Prompt = "Senha de Acesso")]
    [Required(ErrorMessage = "Informe o sua senha de acesso")]
    public string Senha { get; set; }
    [Display(Name = "Manter Conectado?")]
    public bool Lembrar { get; set; } = false;
    public string UrlRetorno { get; set; }
}

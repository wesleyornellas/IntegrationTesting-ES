package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class HarryPotterSteps {
    @Dado("^que o usuário gostaria de ver o personagem número <id>$")
    public void queOUsuárioGostariaDeVerOPersonagemNúmeroId() {
    }

    @Quando("^o usuário clicar em procurar personagem do Harry Potter$")
    public void oUsuárioClicarEmProcurarPersonagemDoHarryPotter() {
    }

    @Então("^o usuário deveria receber uma <mensagem> de \"([^\"]*)\"$")
    public void oUsuárioDeveriaReceberUmaMensagemDe(String arg0) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        throw new PendingException();
    }
}

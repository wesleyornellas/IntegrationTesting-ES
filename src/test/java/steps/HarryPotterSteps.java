package steps;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Quando;
import definition.HarryPotter;
import support.RESTSupport;

public class HarryPotterSteps {

    @Dado("^que o usuário gostaria de ver o personagem número (.*)$")
    public void queOUsuárioGostariaDeVerOPersonagemNúmeroId(String id) {
        HarryPotter.setPeople(id);
    }

    @Quando("^o usuário clicar em procurar personagem do Harry Potter$")
    public void oUsuárioClicarEmProcurarPersonagemDoHarryPotter() {
        RESTSupport.executeGet(HarryPotter.getEndPoint() +
                                        "characters/" +
                                        HarryPotter.getPeople() +
                                        HarryPotter.getKey());
        }
}

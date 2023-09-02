package mesmodels;

import java.util.List;

public class EvaluationDbContext implements IEvaluationContext {
    //liste
    private static List<Evaluation> listeEvalutions;
    public static List<Evaluation> getListeEvalutions() {
        return listeEvalutions;
    }

    @Override
    public void Ajouter(Evaluation evaluation) {
        listeEvalutions.add(evaluation);
    }

    @Override
    public void Supprimer(int numero) {
        listeEvalutions.removeIf((e)->e.getNumero()==numero);
    }

    @Override
    public void Modifier(Evaluation evaluation) {
        Evaluation e = this.rechercher(evaluation.getNumero());
        e.setNumero(evaluation.getNumero());
        e.setPrenom(evaluation.getPrenom());
        e.setCourriel(evaluation.getCourriel());
        e.setTelephone(evaluation.getTelephone());
        e.setSexe(evaluation.getSexe());
        e.setDateEvaluation(evaluation.getDateEvaluation());
        e.setNote(evaluation.getNote());
        e.setCommentaires(evaluation.getCommentaires());
    }

    public Evaluation rechercher(int numero) {
        Evaluation evaluation;
        evaluation = EvaluationDbContext.listeEvalutions.stream().filter((a)->a.getNumero()==numero).findFirst().get();
        return evaluation;
    }
}

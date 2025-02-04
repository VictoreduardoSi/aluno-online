
package br.com.alunoonline.api.service;

import br.com.alunoonline.api.model.Disciplina;
import br.com.alunoonline.api.repository.DisciplinaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DisciplicaService {

    @Autowired
    DisciplinaRepository disciplinaRepository;

    public void create(Disciplina disciplina){
        disciplinaRepository.save(disciplina);
    }
}

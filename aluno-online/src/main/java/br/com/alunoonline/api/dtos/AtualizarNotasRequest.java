
package br.com.alunoonline.api.dtos;


import lombok.Data;

@Data
public class AtualizarNotasRequest {
    private Double grade1;
    private Double grade2;

    public Double getGrade1() {
        return grade1;
    }

    public void setGrade1(Double grade1) {
        this.grade1 = grade1;
    }

    public Double getGrade2() {
        return grade2;
    }

    public void setGrade2(Double grade2) {
        this.grade2 = grade2;
    }
}

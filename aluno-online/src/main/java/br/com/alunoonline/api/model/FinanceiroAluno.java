
package br.com.alunoonline.api.model;

import br.com.alunoonline.api.enums.FinanceiroStatusEnum;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class FinanceiroAluno implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "student_id")
    private Aluno student;

    private Double discount;

    private Integer dueDate;

    @Enumerated(EnumType.STRING)
    private FinanceiroStatusEnum status;



    public Integer getDueDate() {
        return null;


    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Aluno getStudent() {
        return student;
    }

    public void setStudent(Aluno student) {
        this.student = student;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public void setDueDate(Integer dueDate) {
        this.dueDate = dueDate;
    }

    public FinanceiroStatusEnum getStatus() {
        return status;
    }

    public void setStatus(FinanceiroStatusEnum status) {
        this.status = status;
    }
}

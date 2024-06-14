
package br.com.alunoonline.api.dtos;

import lombok.Data;

@Data
public class CriarAlunoRequest {
    private String name;
    private String email;
    private Long courseId;
    private Double discount;
    private Integer dueDate;
}

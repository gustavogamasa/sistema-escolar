<?php 

@session_start();
require_once("../conexao.php"); 

$id_mat = $_GET['id'];

$query = $pdo->query("SELECT * FROM matriculas where id = '$id_mat' order by id desc ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$id_turma = $res[0]['turma'];

$query_2 = $pdo->query("SELECT * FROM turmas where id = '$id_turma' ");
                    $res_2 = $query_2->fetchAll(PDO::FETCH_ASSOC);
                    $disciplina = $res_2[0]['disciplina'];
                    $horario = $res_2[0]['horario'];
                    $dia = $res_2[0]['dia'];
                    $ano = $res_2[0]['ano'];
                  	$data_final = $res_2[0]['data_final'];
                  	$data_inicio = $res_2[0]['data_inicio'];
                  	$professor = $res_2[0]['professor'];


                  	//RECUPERAR O TOTAL DE MESES ENTRE DATAS
$d1 = new DateTime($data_inicio);
$d2 = new DateTime($data_final);
$intervalo = $d1->diff( $d2 );
$anos = $intervalo->y;
$meses = $intervalo->m + ($anos * 12);

                  	$data_finalF = implode('/', array_reverse(explode('-', $data_final)));

                    $query_resp = $pdo->query("SELECT * FROM disciplinas where id = '$disciplina' ");
                    $res_resp = $query_resp->fetchAll(PDO::FETCH_ASSOC);                    
                    $nome_disc = $res_resp[0]['nome'];


                     $query_resp = $pdo->query("SELECT * FROM professores where id = '$professor' ");
                    $res_resp = $query_resp->fetchAll(PDO::FETCH_ASSOC);                    
                    $nome_prof = $res_resp[0]['nome'];
                    $email_prof = $res_resp[0]['email'];
                    $imagem_prof = $res_resp[0]['foto'];


                    if($data_final < date('Y-m-d')){
                    	$concluido = 'Sim';
                    }else{
                    	$concluido = 'Não';
                    }

 ?>

 <h6><?php echo strtoupper($nome_disc) ?></h6>
 <hr>

<small>
<div class="mb-3">
 <span class="mr-3"><i><b>Aulas Concluídas:</b> 10 Aulas</i></span>
 <span class="mr-3"><i><b>Disciplina Concluída </b> <?php echo $concluido ?></i></span>
 <span class="mr-3"><i><b>Dias de Aula </b> <?php echo $dia ?></i></span>
 <span class="mr-3"><i><b>Horário Aula </b> <?php echo $horario ?></i></span>
 <span class="mr-3"><i><b>Ano Início </b> <?php echo $ano ?></i></span>
 <span class="mr-3"><i><b>Data da Conclusão </b> <?php echo $data_finalF ?></i></span>
</div>
</small>

<hr>

<small>
<div class="mb-3">
 <span class="mr-3"><img src="../img/professores/<?php echo $imagem_prof ?>" width="40px"></i></span>
 <span class="mr-3"><i><b>Professor:</b> <?php echo $nome_prof ?></i></span>
 <span class="mr-3"><i><b>Email Professor </b> <?php echo $email_prof ?></i></span>


</div>
</small>
<hr>


<div class="row">

<div class="col-xl-3 col-md-6 mb-4">
	<a class="text-dark" href="" data-toggle="modal" data-target="#modal-pagamentos" title="Informações da Turma">
			<div class="card text-danger shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold  text-danger text-uppercase">MENSALIDADES</div>
							<div class="text-xs text-secondary"> <?php echo $meses ?> PARCELAS</div>
						</div>
						<div class="col-auto" align="center">
							<i class="far fa-calendar-alt fa-2x  text-danger"></i><br>
							<span class="text-xs"></span>
						</div>
					</div>
				</div>
			</div>
		</a>
		</div>



<div class="col-xl-3 col-md-6 mb-4">
	<a class="text-dark" href="index.php?pag=turma&id=<?php echo $id_mat ?>" title="Informações da Turma">
			<div class="card text-dark shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold  text-dark text-uppercase">FREQUÊNCIA</div>
							<div class="text-xs text-secondary"> 85% DE FREQUÊNCIA</div>
						</div>
						<div class="col-auto" align="center">
							<i class="fas fa-calendar-day fa-2x  text-dark"></i><br>
							<span class="text-xs"></span>
						</div>
					</div>
				</div>
			</div>
		</a>
</div>




<div class="col-xl-3 col-md-6 mb-4">
	<a class="text-dark" href="index.php?pag=turma&id=<?php echo $id_mat ?>" title="Informações da Turma">
			<div class="card text-primary shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold  text-primary text-uppercase">BOLETIM</div>
							<div class="text-xs text-secondary"> CONSULTAR NOTAS</div>
						</div>
						<div class="col-auto" align="center">
							<i class="fas fa-file-invoice fa-2x  text-primary"></i><br>
							<span class="text-xs"></span>
						</div>
					</div>
				</div>
			</div>
		</a>
</div>




<div class="col-xl-3 col-md-6 mb-4">
	<a class="text-dark" href="index.php?pag=turma&id=<?php echo $id_mat ?>" title="Informações da Turma">
			<div class="card text-info shadow h-100 py-2">
				<div class="card-body">
					<div class="row no-gutters align-items-center">
						<div class="col mr-2">
							<div class="text-xs font-weight-bold  text-info text-uppercase">AULAS</div>
							<div class="text-xs text-secondary"> GRADE DO CURSO</div>
						</div>
						<div class="col-auto" align="center">
							<i class="fas fa-video fa-2x  text-info"></i><br>
							<span class="text-xs"></span>
						</div>
					</div>
				</div>
			</div>
		</a>
</div>


</div>







<div class="modal" id="modal-pagamentos" tabindex="-1" role="dialog" data-backdrop="static">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <?php 
                 $id_m = $_GET['id'];
                     $query = $pdo->query("SELECT * FROM matriculas where id = '$id_mat' ");
                    $res = $query->fetchAll(PDO::FETCH_ASSOC);
                    $id = $res[0]['aluno'];
                    $id_turma = $res[0]['turma'];

                     $query = $pdo->query("SELECT * FROM alunos where id = '$id' ");
                    $res = $query->fetchAll(PDO::FETCH_ASSOC);
                    $nome_aluno = $res[0]['nome'];

                      $query = $pdo->query("SELECT * FROM turmas where id = '$id_turma' ");
                    $res = $query->fetchAll(PDO::FETCH_ASSOC);
                    $disciplina = $res[0]['disciplina'];

                    $query = $pdo->query("SELECT * FROM disciplinas where id = '$disciplina' ");
                    $res = $query->fetchAll(PDO::FETCH_ASSOC);
                    $nome_disciplina = $res[0]['nome'];
                 ?>
                <h6 class="modal-title"><?php echo $nome_disciplina ?></h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                
            </div>
            <div class="modal-body">

            	               <small>
 <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Parcela</th>
      <th scope="col">Vencimento</th>
      <th scope="col">Valor</th>
      <th scope="col">Pago</th>
        <?php if($pgto_boleto == 'Sim'){ 
        echo '<th scope="col">Arquivo</th>';
  		} ?>
    </tr>
  </thead>
  <tbody>

                <?php 
                
                  
                  
                  //VERIFICAR SE EXISTE ATRASO NO PAGAMENTO DAS MATRICULAS
                     $query_3 = $pdo->query("SELECT * FROM pgto_matriculas where matricula = '$id_mat' ");
                    $res_3 = $query_3->fetchAll(PDO::FETCH_ASSOC);
                   

                  for ($i2=0; $i2 < count($res_3); $i2++) { 
                  foreach ($res_3[$i2] as $key => $value) {
                  }

                  $data_venc = $res_3[$i2]['data_venc'];
                  $pago = $res_3[$i2]['pago'];
                  $valor = $res_3[$i2]['valor'];
                  $id_pgto = $res_3[$i2]['id'];
                  $arquivo = $res_3[$i2]['arquivo'];

                  if($data_venc < date('Y-m-d') and $pago != 'Sim'){
                    $atrasado = 'Sim';
                    }

                  $valor = number_format($valor, 2, ',', '.');
                  $data_venc = implode('/', array_reverse(explode('-', $data_venc)));

                  
                  
             
                
                ?>

 
    <tr>
      <td scope="row"><?php echo $i2+1 ?></td>

      <td>
      	 <?php if($atrasado == 'Sim'){ ?>
         <span class="text-danger"><?php echo $data_venc; 
         $atrasado = 'Não';
         ?></span>
         <?php }else{ ?>
        <span class="text-dark"> <?php echo $data_venc ?></span>
        <?php } ?>
      </td>

      <td> R$ <?php echo $valor ?> </td>

      <td>
      	 <?php if($pago == 'Sim'){ ?>
            <span class="text-success"> <?php echo $pago ?></span>
         <?php }else{ ?>
            <span class="text-danger"><?php echo $pago ?></span>
        <?php } ?>
      </td>

      <td>
      		 <?php if($pgto_boleto == 'Sim'){ ?>
                             
                              <?php if($arquivo != ''){ ?>
                                 <a href="../img/arquivos/<?php echo $arquivo ?>" class="text-primary ml-2" target="_blank" title="Abrir o Boleto / Carnê">Ver Arquivo</a>   
                             <?php } } ?>
      </td>

    </tr>
   
 <?php  }  ?>
               
  </tbody>
</table>
</small>

        </div>

    </div>
</div>
</div>




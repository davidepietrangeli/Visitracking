

<?php
require_once("config.php");
require_once("./lib/database.php");



  include 'header.php';
  include 'navbar.php';
  ?>

<div class="tabella">                                       <!--Includere Form-->
                                            <form action="paziente.php" method="post">
                                              <center>
                                                  <br />
                                                  <br />

                                                  <table width="60%" bgcolor="#f5f5f5" cellpadding=5px>



                                                      <tr>
                                                        <td> <font color="orange"><b>PAZIENTE</b></font>
                                                           <checkbox name="paziente">

                                                            <?php
                                                             $myconnection = openconnection();
                                                             $sql = "SELECT paziente. *, visita. *, patologia. *
                                                                    FROM paziente, visita, patologia
                                                                    where ambulatorio = 1 and visita.paziente_idpaziente = paziente.idpaziente and visita.patologia_idpatologia = patologia.idpatologia";
                                                             $result = mysqli_query($myconnection, $sql);
                                                             $row_cnt = mysqli_num_rows($result);
                                                             if ($row_cnt > 0) {
                                                                      while($row = $result->fetch_assoc()) {
                                                                          echo "<option value='".$row["idpaziente"]."'>";
                                                                          echo $row["nome"];
                                                                          echo ' ';
                                                                          echo $row["cognome"];




                                                                         echo "</option>";
                                                                        }
                                                                  } else {
                                                                      echo "0 results";
                                                                  }
                                                                  closeconnection($myconnection);
                                                              ?>

                                                            </checkbox>
                                                        </td>

                                                        <td> <font color="orange"><b>DATA VISITA</b></font>
                                                           <checkbox name="paziente">

                                                            <?php
                                                             $myconnection = openconnection();
                                                             $sql = "SELECT paziente. *, visita. *, patologia. *
                                                                    FROM paziente, visita, patologia
                                                                    where ambulatorio = 1 and visita.paziente_idpaziente = paziente.idpaziente and visita.patologia_idpatologia = patologia.idpatologia";
                                                             $result = mysqli_query($myconnection, $sql);
                                                             $row_cnt = mysqli_num_rows($result);
                                                             if ($row_cnt > 0) {
                                                                      while($row = $result->fetch_assoc()) {
                                                                          echo "<option value='".$row["idpaziente"]."'>";

                                                                          echo $row["data"];




                                                                         echo "</option>";
                                                                        }
                                                                  } else {
                                                                      echo "0 results";
                                                                  }
                                                                  closeconnection($myconnection);
                                                              ?>

                                                            </checkbox>
                                                        </td>

                                                        <td> <font color="orange"><b>DIAGNOSI</b></font>
                                                           <checkbox name="paziente">

                                                            <?php
                                                             $myconnection = openconnection();
                                                             $sql = "SELECT paziente. *, visita. *, patologia. *
                                                                    FROM paziente, visita, patologia
                                                                    where ambulatorio = 1 and visita.paziente_idpaziente = paziente.idpaziente and visita.patologia_idpatologia = patologia.idpatologia";
                                                             $result = mysqli_query($myconnection, $sql);
                                                             $row_cnt = mysqli_num_rows($result);
                                                             if ($row_cnt > 0) {
                                                                      while($row = $result->fetch_assoc()) {
                                                                          echo "<option value='".$row["idpaziente"]."'>";

                                                                          echo $row["diagnosi"];



                                                                         echo "</option>";
                                                                        }
                                                                  } else {
                                                                      echo "0 results";
                                                                  }
                                                                  closeconnection($myconnection);
                                                              ?>

                                                            </checkbox>
                                                        </td>

                                                        <td> <font color="orange"><b>STATO</b></font>
                                                           <checkbox name="paziente">

                                                            <?php
                                                             $myconnection = openconnection();
                                                             $sql = "SELECT paziente. *, visita. *, patologia. *
                                                                    FROM paziente, visita, patologia
                                                                    where ambulatorio = 1 and visita.paziente_idpaziente = paziente.idpaziente and visita.patologia_idpatologia = patologia.idpatologia";
                                                             $result = mysqli_query($myconnection, $sql);
                                                             $row_cnt = mysqli_num_rows($result);
                                                             if ($row_cnt > 0) {
                                                                      while($row = $result->fetch_assoc()) {
                                                                          echo "<option value='".$row["idpaziente"]."'>";

                                                                          echo $row["presenza"];
                                                                         echo "</option>";
                                                                        }
                                                                  } else {
                                                                      echo "0 results";
                                                                  }
                                                                  closeconnection($myconnection);
                                                              ?>

                                                            </checkbox>
                                                        </td>
                                                      </tr>

                                                    </table>
                                                  </center>

                                            </form>
</div>
<?php include 'footer.php' ;?>

<?php
require_once("config.php");
require_once("./lib/database.php");


 include 'header.php';
 include 'navbar.php'; ?>


<div class="reg">
                                <form action="postregistrazione.php" method="post">

                                           <center>
                                               <br />
                                               <br />

                                               <table width="60%" bgcolor="#f5f5f5" cellpadding=5px>
                                                   <tr>
                                                       <td>

                                                           Nome
                                                       </td>
                                                       <td>
                                                           <input type="text" name="nome" />
                                                       </td>
                                                   </tr>

                                                   <tr>
                                                       <td>
                                                           Cognome
                                                       </td>
                                                       <td>
                                                           <input type="text" name="cognome" />
                                                       </td>
                                                   </tr>

                                                   <tr>
                                                       <td>
                                                           Email
                                                       </td>
                                                       <td>
                                                           <input type="text" name="email" />
                                                       </td>
                                                   </tr>

                                                   <tr>
                                                       <td>
                                                           Data di nascita
                                                       </td>
                                                       <td>
                                                         <label for="search" class="structural"></label>
                                                         <input  type="text" name="datadinascita" placeholder="YYYY-MM-DD">
                                                       </td>
                                                   </tr>

                                                   <tr>
                                                       <td>
                                                           Sesso
                                                       </td>
                                                       <td>
                                                          <select name="sesso">
                                                              <option>
                                                                M
                                                              </option>
                                                              <option>
                                                                F
                                                              </option>
                                                          </select>

                                                       </td>
                                                   </tr>

                                                   <tr>
                                                       <td>
                                                           Nazionalità
                                                       </td>
                                                       <td>
                                                           <input type="text" name="nazionalita" />
                                                       </td>
                                                   </tr>

                                                   <tr>
                                                       <td>
                                                           Numero cellulare
                                                       </td>
                                                       <td>
                                                           <input type="text" name="n_cellulare" />
                                                       </td>
                                                   </tr>

                                                   <tr>
                                                       <td>
                                                           Codice fiscale
                                                       </td>
                                                       <td>
                                                           <input type="text" name="cod_fiscale" />
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           Ambulatorio
                                                       </td>
                                                       <td>
                                                          <select name="visita">
                                                            <option value="1">
                                                                Pneumologia
                                                            </option>
                                                            <option value="2">
                                                                Sincope
                                                            </option>
                                                            <option value="3">
                                                                Osteoporosi
                                                            </option>
                                                            <option value="4">
                                                                Piaghe
                                                            </option>
                                                          </select>
                                                       </td>
                                                   </tr>

                                                   <tr>
                                                     <td colspan="16">

                                                     </td>
                                                     <td float="right">
                                                       <input type="submit" value="Registra" />
                                                     </td>
                                                   </tr>



                                               </table>
                                               <br />
                                               <br />
                                           </center>



                                         </form>

</div>
<?php include('footer.php');?>

<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Title -->
	<title>Politica Aberta</title>
	<link rel="Shortcut Icon" href="/favicon.ico" type="image/x-icon" />

	<!-- Info -->
    <script src="/js4/ga.js" type="text/javascript"></script>


    <!-- Styles -->
	<link rel="stylesheet" type="text/css" media="all" href="/stylesheets/master2.css">
    <link rel="stylesheet" type="text/css" media="all" href="/stylesheets/autocomplete.css">

    <!-- Javascript -->
    {include file='parcial_scripts.tpl'}


</head>
<body>
{include file='parcial_facebook.tpl'}

{include file='parcial_pag_topo_nav.tpl' capa_class='current' sobre_class='' blog_class=''}
{include file='parcial_pag_topo.tpl'}
{include file='parcial_pag_topo_stats.tpl'}
<hr>

  <div class="clear"></div>
  
  <div id="dashboard">
    <div class="c2l">
      <div class="section">
        <h2>Maiores doadores de campanha ({$doadores_ano})<a href="/doadores">Ver todos »</a></h2>
        <ul class="chartlist" id="home-doadores" align="left">
            {foreach $doadores as $d}
            <li><a href="/entidade/{$d.cod_doador}/{$d.nome_link}" class="coming_soon">{$d.posicao}. {$d.doador}</a><span class="index" style="width: {$d.doador_percent}%;"></span><span class="count">{$d.valor_total}</span></li>
            {/foreach}
        </ul>
      </div>
      
    </div>
    
    <div class="c2r">
      <div class="section">
        <h2>Mais contratadas do governo federal ({$contratadas_ano})<a href="/contratadas">Ver todas »</a></h2>
        <ul class="chartlist" id="home-firms">
          {foreach $contratadas as $c}
          <li><a href="/entidade/{$c.cod_contratada}/{$c.nome_link}">{$c.posicao}. {$c.contratada}</a><span class="index" style="width: {$c.contratada_percent}%;"></span><span class="count">{$c.valor_total}</span></li>
          {/foreach}
        </ul>
      </div>
    </div>
      <div class="clear"></div>
      {foreach $paginacao as $p}
          {if $p.selecionada == 1}<b>{/if}
          <a href="/ranking/{$p.pg}">{$p.range}</a>
          {if $p.selecionada == 1}</b>{/if}
      {/foreach}

  </div>
  
<p></p>
  <!-- Footer -->
{include file='parcial_pag_foot_nav.tpl'}
<!-- /Footer -->

</div>
<!-- /Content -->



</body></html>
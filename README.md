## Histórico de versões do Projeto Site Adega Unibeer

<h4> Primeira versão do projeto </h4>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_01">Versão 1</a>

## Todas as versões 
<div style="overflow-y: scroll;">
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_01">Versão 1</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_02">Versão 2</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_03">Versão 3</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_04">Versão 4</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_05">Versão 5</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_06">Versão 6</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_07">Versão 7</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_08">Versão 8</a><br/> 
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_09">Versão 9</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_10">Versão 10</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_11">Versão 11</a><br/>
<a href="https://github.com/caiorodrigues2804/PROJETO_SITE_Adega_UniBeer/tree/v_12">Versão 12</a><br/>
</div>
<br/>
@2022


	<h3 style="margin-left: 10px;margin-top: 10px;">Adega Unibeer - Todas as versões</h3>
 <style>
 #caioba{
	 
	margin-top: 15px;
	margin-left: 20px;
	margin-right:35px;
	border: 2px solid #000;
 } h1,h2,h3,h4,h5, h6{
	margin-left: 10px;
 }
 </style>
 <br/>
 <h5>Visualize todas as versões disponíveis do projeto</h5>
		 <div  id="prin_div" style="overflow-y: scroll;height:700px;width:800px;margin-left: 10px;border: 1px solid #000;">
			
		<div class="card" style="margin-left:20px;margin-right:35px;margin-top:20px;border:2px solid #000;">
		   <div class="card-body">
			<h5 class="card-title">Baixar todos os arquivos do projeto</h5>
			<hr/>
			<p class="card-text">Faça o download de todos os arquivos do projeto</p>
			<a href="#" class="btn btn-primary">Não disponível 🔒</a>
		  </div>
		</div> 
		
</div>
 
	<script>
 
/*	document.write('<div id="caioba" class="card">');
			document.write('<h5 class="card-body"> Versão ',i,'</h5>');
			document.write('<hr/>');
		document.write('<div class="card-body">');
			document.write('<h5 class="card-title">Já está disponível</h5>');
			if(i < 10){	i = '0' + i;}
		document.write('<a class="btn btn-primary" href="https://github.com/caiorodrigues2804/Projeto_Site_Adega_UniBeer/tree/v_' + i + '"> Visualizar a versão ' + i + ' </a>');
		document.write('</div>');
		document.write('</div>'); */
	
	let h_s = document.querySelector('#prin_div');
	 
	for(let i = 1;i < 13;i++){
		let div_s_01 = document.createElement('div');
		div_s_01.style = `
			padding: 10px;
	 
		`
		h_s.appendChild(div_s_01);
		div_s_01.id = 'caioba';
		div_s_01.class = 'card';
		let h_sw = document.createElement('h5');
		div_s_01.appendChild(h_sw);
		h_sw.class = 'card-body';
		h_sw.innerText = 'Versão ' + i;
		let divisor = document.createElement('hr');
		div_s_01.appendChild(divisor);
		let div_s_02 = document.createElement('div');
		div_s_01.appendChild(div_s_02);
		div_s_02.class = 'card-body';
		let h_sw_2 = document.createElement('h5');
		h_sw_2.innerText = 'Já está disponível';
		h_sw_2.style.marginLeft = 15 + 'px';
		div_s_02.appendChild(h_sw_2);
		if(i < 10){i = '0' + i;	}
		let h_s_link = document.createElement('a')
		h_s_link.innerHTML = '<a class="btn btn-primary" href="https://github.com/caiorodrigues2804/Projeto_Site_Adega_UniBeer/tree/v_' + i + '"> Visualizar a versão ' + i + ' </a>';
		h_s_link.style.marginLeft = 10 + 'px';
		div_s_02.appendChild(h_s_link);
			
		
	}

	</script>
	<br/>
	<h6>@2022</h6>
</body>
	</html>

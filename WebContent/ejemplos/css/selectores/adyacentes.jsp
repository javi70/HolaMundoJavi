<jsp:include page="/plantillas/head.jsp"></jsp:include>
<jsp:include page="/plantillas/nav.jsp"></jsp:include>

<section>
	<article>
		<header>
			<h1>Selectores Adyacentes</h1>		
		</header>
	
		<div class="cnt_container">
			<style>
				div + p:first-letter{
					text-transform: uppercase;
					font-size: 30px;
					padding-left: 15px;
				}			
			</style>
			<div>
			<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipiscing elit. Nunc id lacus scelerisque, sollicitudin felis eu, imperdiet mi. Etiam aliquet quam <span class="highlight">at</span> leo fringilla, sit amet aliquet ante ultrices. Praesent placerat non quam ac efficitur. Morbi aliquet accumsan egestas. In hac habitasse platea dictumst. Fusce sed blandit sem. Proin in posuere quam. Ut <span class="highlight">at</span> turpis id lacus sodales molestie ac ac eros. Duis nulla urna, placerat id tristique ut, tempor <span class="highlight">at</span> massa. Vestibulum sit amet quam quis elit rhoncus auctor. Suspendisse vehicula vel ante tincidunt suscipit. Vestibulum aliquam augue vitae leo consequat varius. Aenean dignissim tristique efficitur. Etiam hendrerit neque vitae ligula accumsan rutrum. Morbi in ligula pellentesque, blandit ex quis, mollis mauris.</P>
			<p>Proin nec elit vel ante elementum sollicitudin. Sed tincidunt lacinia augue. Ut porta eu lorem vel fringilla. Suspendisse ut mollis tellus, eu efficitur eros. Pellentesque ac convallis lectus, ac efficitur augue. Maecenas scelerisque enim in vulputate aliquam. Nunc id felis dictum, molestie eros quis, aliquam magna. Curabitur sem sapien, tempus sed nisl et, ornare convallis quam. Praesent arcu augue, porta sit amet consectetur a, iaculis vel felis. Cras <span class="highlight">at</span> maximus enim, a laoreet sapien. Donec scelerisque lobortis mi, vel convallis nisi maximus eu. Curabitur eget ex dolor.</p>
		</div>
		<!-- El siguiente parrafo es adycente a DIV -->
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id lacus scelerisque, sollicitudin felis eu, imperdiet mi. Etiam aliquet quam <span class="highlight">at</span> leo fringilla, sit amet aliquet ante ultrices. Praesent placerat non quam ac efficitur. Morbi aliquet accumsan egestas. In hac habitasse platea dictumst. Fusce sed blandit sem. Proin in posuere quam. Ut <span class="highlight">at</span> turpis id lacus sodales molestie ac ac eros. Duis nulla urna, placerat id tristique ut, tempor <span class="highlight">at</span> massa. Vestibulum sit amet quam quis elit rhoncus auctor. Suspendisse vehicula vel ante tincidunt suscipit. Vestibulum aliquam augue vitae leo consequat varius. Aenean dignissim tristique efficitur. Etiam hendrerit neque vitae ligula accumsan rutrum. Morbi in ligula pellentesque, blandit ex quis, mollis mauris.</P>

		<footer>
			Capítulo 8, pag 187
		</footer>
	</article>


</section>
<jsp:include page="/plantillas/foot.jsp"></jsp:include>
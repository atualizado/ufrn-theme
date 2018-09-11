{**
 * templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}

	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left card" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<footer id="footer">
	<div class="footer-infos row">
		<div class="container">
			<div class="box-infos">				
				<div class="infos-endereco col-4">
					<div class="box-title">Biblioteca Central Zila Mamede (BCZM)</div>
						<address>
							<ul class="list-unstyled">
								<li>Campus Universitário Lagoa Nova</li>
								<li>CEP 59078-970</li>
								<li>Caixa postal 1524</li>
								<li>Natal/RN - Brasil</li>
							</ul>
							</address>
					</div>
					<div class="infos-contato col-3">
						<div class="box-title">Suporte tecnico do portal</div>
						<ul class="list-unstyled">
							<li><i class="fa fa-phone"></i>+55 3342-2260 - R-232</li>
							<li><a target="_blank" href="mailto:periodicos@bczm.ufrn.br" style="color:#fff;">
								<i class="fa fa-envelope-o"></i>periodicos@bczm.ufrn.br</a></li>
						</ul>
					</div>
					<!--Ibict & cariniana-->
					<div class="cariniana col-3">
						<img src="{$baseUrl}{$ibict}" alt="Ibict logo" style="max-height: 40px;">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<img src="{$baseUrl}{$cariniana}" alt="cariniana logo" style="max-height: 50px;">
					</div>
					<div class="infos-contato col-2">
					<div class="pkp_brand_footer" role="complementary">
						<a href="{url page="about" op="aboutThisPublishingSystem"}">
							<img alt="{translate key="about.aboutThisPublishingSystem"}" src="{$baseUrl}/{$brandImage}" style="max-height: 50px;">
						</a>
					</div>
					</div>
				</div>
			</div>
		</div>
</footer>

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>

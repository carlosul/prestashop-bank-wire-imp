{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{if $status == 'ok'}
	<p class="alert alert-success">{l s='Your order has been confirmed.' sprintf=$shop_name mod='bankwire'}</p>
	<div class="box">
		<p>{l s='Please send us a bank wire for the following amount: ' mod='bankwire'}<span class="price"><strong>{$total_to_pay}</strong></span></p>
		<br>
		<p>{l s='Account details:' mod='bankwire'}</p>
		{if $bankwireOwner}
		    <p>- {l s='Account owner:' mod='bankwire'}  <strong>{$bankwireOwner}</strong></p>
		{/if}
		{if $bankwireDetails}
		    <p>- <strong>{$bankwireDetails}</strong></p>
		{/if}
		{if $bankwireAddress}
		    <p>- {l s='Bank name:' mod='bankwire'}  <strong>{$bankwireAddress}</strong></p>
		{/if}
		{if !isset($reference)}
			<p>- {l s='Don\'t forget to insert your order number ' mod='bankwire'}
			<strong>{l s='#%d' sprintf=$id_order mod='bankwire'}
			{l s='in the subject of your bank wire.' mod='bankwire'}</p>
		{else}
			<p>- {l s='Don\'t forget to insert your order reference ' mod='bankwire'}
			<strong>{l s='%s' sprintf=$reference mod='bankwire'}</strong>
			{l s=' in the subject of your bank wire.' mod='bankwire'}</p>
		{/if}
		<br>
		<p>{l s='An email has been sent with this information.' mod='bankwire'}</p>
		<p> <strong>{l s='Your order will be sent as soon as we receive the payment.' mod='bankwire'}</strong></p>
		<br>
		<p>{l s='If you have questions, comments or concerns, please contact our' mod='bankwire'} 
		<a href="{$link->getPageLink('contact', true)|escape:'html'}">{l s='customer support team' mod='bankwire'}</a>.
		</p><br>
{else}
	<p class="alert alert-warning">
		{l s='We noticed a problem with your order. If you think this is an error, feel free to contact our' mod='bankwire'}
		<a href="{$link->getPageLink('contact', true)|escape:'html':'UTF-8'}">{l s='customer service department.' mod='bankwire'}</a>.
	</p><br>
{/if}

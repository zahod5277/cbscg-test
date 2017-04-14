{if $_modx->resource.template!=15&&$_modx->resource.template!=19}
    {var $res = $_modx->resource.id}
{else}
    {var $res = $_modx->resource.parent}
{/if}
{switch $res}
{case 3}
{var $service = 'аудиту'}
{case 4}
{var $service = 'консалтингу'}
{case 48}
{var $service = 'бухгалтерскому обслуживанию'}
{case 5033}
{var $service = 'МСФО'}    
{case 5076}
{var $service = 'экспертизам'}
{case 42}
{var $service = 'автоматизации'}
{case 5036}
{var $service = 'оценке'}
{/switch}
<h4 class="childServiceSidebarMenuTitle">Все услуги по {$service}</h4> 
<ul class="childServiceSidebarMenu">
     {$wrapper}
 </ul>
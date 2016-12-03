
<div class="panel_block">
  <h2>修改已经提交的Bug</h2>
  <form method="POST" action="">
  <ul class="panel" >
  <li><input type="text" class="input-xxlarge" name="title" required placeholder="Bug标题" value="<?=$r['title']?>" /></li>
  <li>
    <select name="version" required  class="input-medium" >
  <?php
  $cat = explode("\n",$data['version']);
  if(is_array($cat)){
    foreach($cat as $c)
    {
      ?>
      <option value="<?=$c?>"  <?=($c==$r['version'])?'selected':''?> >版本:<?=$c?></option>
      <?
    }
  }
  ?>
    </select>
    <select name="module" required class="input-medium"  >
     <?php
  $cat = explode("\n",$data['module']);
  if(is_array($cat)){
    foreach($cat as $c)
    {
      ?>
      <option value="<?=$c?>"  <?=($c==$r['module_item'])?'selected':''?> >模块:<?=$c?></option>
      <?
    }
  }
  ?>
  
  </select>
  
  <select name="priority" required  >
    <option value="" disabled >优先级 </option>
    <option value="1" <?=(1==$r['priority'])?'selected':''?>>低</option>  
    <option value="2" <?=(2==$r['priority'])?'selected':''?> >中</option>
    <option value="3" <?=(3==$r['priority'])?'selected':''?> >高</option>
    <option value="4" <?=(4==$r['priority'])?'selected':''?>  >紧急</option>
    <option value="5" <?=(5==$r['priority'])?'selected':''?>  >严重</option>
  </select>
  

  <select name="doer" required  >
      <option value="" disabled >  指派给 </option>
    <?php
    foreach($data['users'] as $c => $u)
    { ?>
      <option value="<?=$c?>" <?=($c==$r['doer'])?'selected':''?> ><?=$u?></option>
    <? } ?>
  </select>
  </li>
  <li><textarea class="input-xxlarge" rows="10" placeholder="内容" name="content" ><?=$r['content']?></textarea></li>
  <li><input type="file" multiple="" name="file[]" /></li>
  <li><input type="submit" class="btn" /></li>
</ul>
</form>
<div class="clear" ></div>
</div>
 

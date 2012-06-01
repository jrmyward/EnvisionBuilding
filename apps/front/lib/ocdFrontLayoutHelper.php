<?php

class ocdFrontLayoutHelper extends dmFrontLayoutHelper
{

  public function renderMetas()
  {
    /*
     * Allow listeners of dm.response.filter_metas event
     * to filter and modify the metas list
     */
    $metas = $this->dispatcher->filter(
      new sfEvent($this, 'dm.layout.filter_metas'),
      $this->getMetas()
    )->getReturnValue();

    $metasHtml = '';
    foreach( $metas as $key => $value)
    {
      $value = htmlentities($value, ENT_COMPAT, 'UTF-8');

      if ('title' === $key)
      {
        $metasHtml .= '<title>'.$value.'</title>'."\n";
      }
      else if ('prop' === substr($key, -4))
      {
        $metaPropValue = explode('~', $value);
        $metasHtml .= '<meta property="'.$metaPropValue[0].'" content="'.$metaPropValue[1].'" />'."\n";
      }
      else
      {
        $metasHtml .= '<meta name="'.$key.'" content="'.$value.'" />'."\n";
      }
    }

    return $metasHtml;
  }

  protected function getMetas()
  {
    $metas = array(
      'description'  => $this->page->get('description'),
      'language'     => $this->serviceContainer->getParameter('user.culture'),
      'title'        => dmConfig::get('title_prefix').$this->page->get('title').dmConfig::get('title_suffix')
    );

    if (sfConfig::get('dm_seo_use_keywords') && $keywords = $this->page->get('keywords'))
    {
      $metas['keywords'] = $keywords;
    }

    if (!dmConfig::get('site_indexable') || !$this->page->get('is_indexable'))
    {
      $metas['robots'] = 'noindex, nofollow';
    }

    if (dmConfig::get('gwt_key') && $this->page->getNode()->isRoot())
    {
      $metas['google-site-verification'] = dmConfig::get('gwt_key');
    }

    if (dmConfig::get('fb_page_id_prop'))
    {
      $metas['fb_page_id_prop'] = 'fb:page_id~'.dmConfig::get('fb_page_id_prop');
    }

    return $metas;
  }

  protected function getGoogleAnalyticsCode($gaKey)
  {
    return "/n<script type=\"text/javascript\">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', '".$gaKey."']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>/n";
  }
}
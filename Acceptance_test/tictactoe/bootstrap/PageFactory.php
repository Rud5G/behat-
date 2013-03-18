<?php

use Behat\Mink\Mink;

class PageFactory
{
    private $mink;
    private $minkParameters;
    
    public function __construct(Mink $mink, array $minkParams)
    {
        $this->mink = $mink;
        $this->minkParameters = $minkParams;
    }

   public function create($pageName)
   {	
     $pageObject = str_replace(" ", "", ucwords($pageName));
	  include_once __DIR__ . "/pages/$pageObject.php";
	  return new $pageObject($this->mink, $this->minkParameters, $this);
   }

} 

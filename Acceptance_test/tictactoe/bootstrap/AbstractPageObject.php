<?php

use Behat\Mink\Mink;

abstract class AbstractPageObject 
{
    protected $mink;
    protected $pageFactory;
    protected $url;
    
    public function __construct(Mink $mink, array $minkParams, 
                                PageFactory $pageFactory)
    {
        $this->mink = $mink;
        $this->url = $minkParams["base_url"];
        $this->pageFactory = $pageFactory;
    }

    public function open($timeout = 10)
    {
        $this->mink->getSession()->visit($this->url);
        return $this;
    }

    public function close()
    {
        $this->mink->getSession()->close();
        return $this;
    }

} 

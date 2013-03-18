<?php

class HomePage extends AbstractPageObject
{
	
    public $x;
    public $y;


	public function startNewGame()
    {
        $page = $this->mink->getSession()->getPage();
        $page->findLink('Start new game')->click();
        
    }

    public function clickCell()
    {
        $page = $this->mink->getSession()->getPage();
        $cell=$page->find('css', 'div[x="' . 1 . '"][y="' . 1 . '"] input');
        $cell->click();
        $this->mink->getSession()->wait("300");
        
    }
    public function selectCell($x,$y)
    {
        $page = $this->mink->getSession()->getPage();
        $cell=$page->find('css', 'div[x="' . $x . '"][y="' . $y . '"] input');
        $cell->click();
        $this->mink->getSession()->wait("300");
        
    }

    public function getMessage()

   {
       $page = $this->mink->getSession()->getPage();
       $messageParagraph = $page->find('css', '#message p');
       return $messageParagraph === null ? null : $messageParagraph->getText();

   }
   public function getValue($x,$y)

   {
     $page = $this->mink->getSession()->getPage();
     $value = $page->find('css', 'div[x="' . $x . '"][y="' . $y . '"] input')->getAttribute('value');
     return $value;
   }

    public function playerXWin()
    { 
      $a = 1;

      While ($a < 4)

       {
          for ($b = 1; $b <= 3; $b++) 
          {
           $page = $this->mink->getSession()->getPage();
           $cell=$page->find('css', 'div[x="' . $a . '"][y="' . $b . '"] input');
           $cell->click();
           $this->mink->getSession()->wait("300");
           $b= $b + 1; 
          }
          $a= $a + 1;
      
        }
      
    }
    public function playerOWin()
    { 
      $i = 1;
      While ($i < 4)
      {
        for ($j = 1; $j < 4; $j++) 
         {
           $page = $this->mink->getSession()->getPage();
           $cell=$page->find('css', 'div[y="' . $i . '"][x="' . $j . '"] input');
           $cell->click();
           $this->mink->getSession()->wait("300");
           $j=$j+1;
         }

         $i=$i + 2;
      }
      for ($j = 2 ; $j < 4; $j++) 
        {
          $page = $this->mink->getSession()->getPage();
          $cell=$page->find('css', 'div[x="' . $j . '"][y="' . 2 . '"] input');
          $cell->click();
          $this->mink->getSession()->wait("300");
         }
 
   }

    public function gameDraw()
    { 
      $i = 1;
      While ($i < 4)
       {
        for ($j = 1; $j < 4; $j++) 
         {
           $page = $this->mink->getSession()->getPage();
           $cell=$page->find('css', 'div[y="' . $i . '"][x="' . $j . '"] input');
           $cell->click();
           $this->mink->getSession()->wait("300");
         }

         $i=$i + 2;
       }
       for ($j = 1; $j < 4; $j++) 
        {
          $page = $this->mink->getSession()->getPage();
          $cell=$page->find('css', 'div[x="' . $j . '"][y="' . 2 . '"] input');
          $cell->click();
          $this->mink->getSession()->wait("300");
         }
 
   }

}
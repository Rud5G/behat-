<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

use Behat\Mink\Mink,
    Behat\MinkExtension\Context\MinkAwareInterface;

//
// Require 3rd-party libraries here:
//
//   require_once 'PHPUnit/Autoload.php';
//   require_once 'PHPUnit/Framework/Assert/Functions.php';
//

/**
 * Features context.
 */
class PlayerContext extends BehatContext implements MinkAwareInterface
{
    private $mink;
    private $minkParameters;
  
    public function setMink(Mink $mink)
    {
        $this->mink = $mink;
    }
  
    public function setMinkParameters(array $parameters)
    {
        $this->minkParameters = $parameters;
    }


    protected function getPageFactory()
    {
        return new PageFactory($this->mink, $this->minkParameters);
    }

    /**
     * @Given /^I select cell \((\d+),(\d+)\)$/
     */
    public function iSelectCell($x, $y)
    {
        $this->page->selectCell($x, $y);
    }

    /**
     * @Then /^I should see error message$/
     */
    public function iShouldSeeErrorMessage()
    {
        expect($this->page->getMessage())->toBe("Position 1, 1 is already taken");
    }

    /**
     * @Then /^I should be able to tick that cell$/
     */
    public function iShouldBeAbleToTickThatCell()
    {
        throw new PendingException();
    }

    /**
     * @When /^I win the game$/
     */
    public function iWinTheGame()
    {
         $this->page->playerXWin();
    }


    /**
     * @When /^other player win the game$/
     */
    public function otherPlayerWinTheGame()
    {
        $this->page->playerOWin(); 
    }
    /**
     * @When /^game is draw$/
     */
    public function gameIsDraw()
    {
        $this->page->gameDraw();
    }

    /**
     * @Then /^I should see message "([^"]*)"$/
     */
    public function iShouldSeeMessage($arg1)
    {
         expect($this->page->getMessage())->toBe($arg1);
    }

    /**
     * @Given /^I should not see error message$/
     */
    public function iShouldNotSeeErrorMessage()
    {
        expect($this->page->getMessage())->toBe(null);
    }

    /**
     * @Given /^I am on the "([^"]*)"$/
     */

     public function iAmOnThe($pageName)
     {
          $this->page = $this->getPageFactory()->create($pageName);
          $this->page->open();
     }

    /**
     * @When /^I start the game$/
     */
    public function iStartTheGame()
    {
       
      $this->page->startNewGame();
    
    }

    /**
     * @Then /^I should be able to select cell$/
     */
    public function iShouldBeAbleToSelectCell()
    {
        $this->page->clickCell();
    }
    
       // expect($this->page->getValue())->toBe($arg1);
    /**
     * @Given /^I should see "([^"]*)" in \((\d+),(\d+)\)$/
     */
    public function iShouldSeeIn($i, $j, $k)
    {
        expect($this->page->getValue($j,$k))->toBe($i);
    }

    /**
     * @Then /^other player select cell \((\d+),(\d+)\)$/
     */
    public function otherPlayerSelectCell($i, $j)
    {
        $this->page->selectCell($i, $j);
    }
    /**
     * @Given /^I wait "([^"]*)" milliseconds$/
     */
    public function iWaitMilliseconds($time)
    {
         $this->mink->getSession()->wait((int)$time);
    }
}

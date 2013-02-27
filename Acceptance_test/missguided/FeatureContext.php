<?php

require_once 'vendor/autoload.php';

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\Behat\Event\FeatureEvent,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;
    
use Behat\MinkExtension\Context\MinkContext;
use Behat\Mink\Session;
use Behat\Mink\Driver\DriverInterface;

//
// Require 3rd-party libraries here:
//
require_once 'PHPUnit/Autoload.php';
require_once 'PHPUnit/Framework/Assert/Functions.php';
//

/**
 * Features context.
 */
class FeatureContext extends MinkContext
{
	protected static $margin;

    /**
     * @Given /^I know the initial distance$/
     */
    public function iKnowTheInitialDistance()
    {
    	self::$margin = $this->stripMargin();
    	//echo $this->margin;
    	//echo "margin: " . $this->margin . PHP_EOL;
    }
    
    /**
     * @Given /^I press enter on "([^"]*)"$/
     */
    public function iPressEnterOn($xpath)
    {
        $this->getMink()->getSession()->getDriver()->keyPress($xpath,13);
        $this->getMink()->getSession()->wait("10000");
    }


    /**
     * @Given /^I click on "([^"]*)"$/
     */
    public function iClickOn($xpath)
    {
        $this->getMink()->getSession()->getDriver()->click($xpath);
        $this->getMink()->getSession()->wait("3000");
          
    }

    /**
     * @Given /^I am logged in as "([^"]*)"$/
     */
    public function iAmLoggedInAs($usertype)
    {
        
        switch ($usertype) 
       {
        case 'admin':
        $this->visit('/admin');
        $this->fillField("login[username]", "admin");
        $this->fillField("login[password]", "123123pass");
        $this->pressButton("Login"); 
        break;
        case 'valid user':
        $this->visit('/customer/account/login/');
        $this->fillField("email", "spandey@sessiondigital.com");
        $this->fillField("pass", "sweta123");
        $this->pressButton("Login"); 
        break;
        case 'user in uk':
        $this->visit('/customer/account/login/');
        $this->fillField("email", "spandey@sessiondigital.com");
        $this->fillField("pass", "sweta123");
        $this->pressButton("Login"); 
        break;
        case 'user in au':
        $this->visit('/customer/account/login/');
        $this->fillField("email", "spandey@sessiondigital.com");
        $this->fillField("pass", "sweta123");
        $this->pressButton("Login"); 
        break;
        case 'user in eu':
        $this->visit('/customer/account/login/');
        $this->fillField("email", "spandey@sessiondigital.com");
        $this->fillField("pass", "sweta123");
        $this->pressButton("Login"); 
        break;
        case 'user in us':
        $this->visit('/customer/account/login/');
        $this->fillField("email", "spandey@sessiondigital.com");
        $this->fillField("pass", "sweta123");
        $this->pressButton("Login"); 
        break;

        case 'Grant':
        $this->visit('/customer/account/login/');
        $this->getMink()->getSession()->wait("1000");
        $this->fillField("email", "grogers@inviqa.com");
        $this->fillField("pass", "parrot");
        $this->pressButton("Login");
        break;
      }
    }
    
      /**
     * @Given /^I fill in "([^"]*)" with random email$/
     */
    public function iFillInWithRandomEmail()
    {
            $str1 =  "sweta+";
            $str2 =  time();
            $str3 = "@gmail.com";
            $email = $str1.$str2.$str3 ;
            $this->fillField("email","$email");
    }
    

    /**
     * @Given /^I am on "([^"]*)" page$/
     */
    public function iAmOnPage($arg1)
    {
        $page = $this->mapPageToUri($arg1);
        
        $this->getSession()->visit($this->locatePath($page));
    }

    /**
     * @When /^I add product and proceed to checkout$/
     */
    public function iAddProductAndProceedToCheckout()
    {
        $this->visit('/mirisa-patent-peep-toe-platform-shoes');
        $this->pressButton("Add to Bag");
        $this->getMink()->getSession()->wait("1000");
        $this->visit('/checkout/cart/?___SID=U');
        $this->pressButton("Proceed to Checkout"); 
        $this->pressButton("Continue"); 
        $this->getMink()->getSession()->wait("1000");
    }

      /**
    * @When /^I add product and go to delivery$/
    */
    public function iAddProductAndGoToDelivery()
    {
        $this->visit('/lace-cut-out-dress');
        $this->pressButton("Add to Bag");
        $this->getMink()->getSession()->wait("1000");
        $this->visit('/checkout/cart/?___SID=U');
        $this->pressButton("Proceed to Checkout");
        $this->getMink()->getSession()->wait("1000");
    }

    /**
     * @When /^I log off$/
     */
    public function iLogOff()
    {
        $this->visit('/');
        $this->getMink()->getSession()->getDriver()->keyPress("//div/div[2]/div/ul/li[2]/a",13);
        $this->getMink()->getSession()->wait("30000");

        
    }

    /**
     * @Given /^I wait "([^"]*)" milliseconds$/
     */
    public function iWaitMilliseconds($time)
    {
         $this->getSession()->wait((int)$time);
    }
}

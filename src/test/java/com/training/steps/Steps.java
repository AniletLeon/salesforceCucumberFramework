package com.training.steps;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import com.training.base.BasePage;
import com.training.base.BaseTest;
import com.training.pagefactory.PageFactory;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class Steps extends BaseTest {
	PageFactory pageFactory = new PageFactory();
	BasePage page;

	@Before
	public void setup() throws Exception {
		launchapplication();
	}

	@Given("User is on {string}")
	public void user_is_on(String Page) {
		page = pageFactory.initialize(Page);
		// page = new LoginPage();
	}

	@When("User enter into Textbox {string} {string}")
	public void user_enter_into_textbox(String logicalName, String Value) {
		page.enterintoTextbox(logicalName, Value);
	}

	@Then("click on Button {string}")
	public void click_on_button(String logicalName) {
		page.clickonButton(logicalName);
	}

	@Then("User clear into Textbox {string}")
	public void user_clear_into_textbox(String logicalName) {
		page.clearintoTextbox(logicalName);
	}

	@Then("click on link {string}")
	public void click_on_link(String logicalName) {
		page.clickonLink(logicalName);
	}

	@After
	public void teardown(Scenario scenario) {
		byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
		scenario.attach(screenshot, "image/png", scenario.getName());
		driver.close();
		driver = null;
	}
}

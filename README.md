# tddJournal

## Setting up the project
TDD, or Test Driven Development, is the code writing style where we start with an objective, write a test to check that objective, then write the minimum amount of code needed to allow the test to pass. 

Developing this way challenges the developer to think through their objecives, cuts down on unneeded code, and keeps the code base honest. TDD also allows devs to develop and test their code confidently without needing to run in in the simulator.  

### Organization
- Create new Xcode project, select the checkbox to include UnitTests
- Set up file structure
- Delete ViewController file
- Delete existing ViewController on main.storyboard

### Setting up your first test
- In your UnitTests folder, create a new Swift file, name it JournalTests
- At the top, change import Foundation to import XCTest.
- Create your JournalTests class, and subclass it from XCTestCase

### Writing your first test
- Think about what you want to accomplish, we want to create a Journal object
- Write your test function declaration.
- User XCTAssertNonNil to check that an initialized Journal object is not nil
- Write the minimum amount of code needed to silence the compiler error, struct Journal { }
- We know that when we init a Journal, we need it to have a title. Rewrite the Journal() to take in a parameter of title, Journal(title: )
- Write the minimum amount of code to silence the compiler error

### Checking the Journal's Date
- Next we are goint to write a test to check the date the journal was last edited, func checkJournalDate()
- Initalize a Journal object, then assert that the journal's lastEdited property is not nil. The complier will say that the Journal has no property lastEdited.
- Wite the minimum amount of code needed to silence the compiler. var lastEdited: Date, which makes the compiler say we are missing expected parameters in our initalizer.
- We don't want to include the lastEdited property in our initializer, so we need to write our own to set a default value for our lastEdited property.

### Refactoring
In both tests that we have written we have needed to initalize a Journal object. Let's make it a little easier on ourselves to access a Journal object by overriding the setUp() method.

- Write out your override setUp() method. 
- In the function body initalize a Journal object
- Create an optional testJournal property on the class, and set it equal to the journal in the setUp method.
- Delete the redundant code
- Remember to override the tearDown() method to set the sut back to nil as well.

### Testing the Model Controller
- Start by declaring your system under testing as JournalController. Use a bang operator to unwrap the sut because non of the testable methods can succeed without the existence of the sut. 
- Override setUp, and set sut to JournalController.shared
- Silence the compiler
- Next we want to test that the createJournal(with: ) method updates the lastEdited property successfully
- Write out your test, then silence the compiler warnings.
- Try to write out a test to check deletion on your own. 

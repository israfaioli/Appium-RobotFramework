from robot.libraries.BuiltIn import BuiltIn
from appium.webdriver.common.touch_action import TouchAction
from robot.api.deco import keyword

@keyword(name='Drag And Drop')
def drag_drop(locator, pos_origin, pos_target):
 appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
 driver = appiumLib._current_application()
 origin_element = driver.find_elements_by_id(locator)[int (pos_origin)]
 target_element = driver.find_elements_by_id(locator)[int (pos_target)]

 actions = TouchAction(driver)
 actions.long_press(origin_element).move_to(target_element)
 actions.release()
 actions.perform()
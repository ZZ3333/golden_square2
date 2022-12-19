Track_Tasks Method Design Recipe

1. Describe the Problem

Put or write the user story here. Add any clarifying notes you might have.

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.


2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

``` ruby

includes_text = track_tasks(text)

# text is a string with words in it
# includes_text is boolean depending on the input


```


3. Create Examples as Tests

Make a list of examples of what the method will take and return.

``` ruby

track_tasks("")
fail "not included"

track_tasks("#T0D0:")
false

track_tasks("#T0D0.")
true

track_tasks("#T0D0,")
false

track_tasks("#T0D0!")
false

```


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.


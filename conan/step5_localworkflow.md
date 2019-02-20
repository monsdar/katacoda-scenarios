It's nice to see that you can change the library, create a package out of it and use it within the sample application. But real life is more complex, you typically juggle multiple libraries, change their interfaces here and there and need to check if everything works together in the end. It's impractical to create packages everytime you make a change. Luckily with Conan 1.12 we got a new feature that addresses that: [Editable Packages](https://docs.conan.io/en/latest/developing_packages/editable_packages.html)!

Now it is possible to switch a dependency to its build directory by using `conan link`. In most cases you need to define where the built artifacts are as well, this is where the layout file comes in. Refer to the [official docs](https://docs.conan.io/en/latest/developing_packages/editable_packages.html) for more info on this, for this tutorial we'll use a fitting layout that works in our usecase.

* First we need to create a link for hellolib: `conan link ~/hellolib/source hellolib/1.0.0@katacoda/testing -l ~/hellolib/source/customlayout`{{execute}}
* Next make a small change to the hellolib, let's add some exclamation marks to the resulting string or something similar: `hellolib/source/hello.cpp`{{open}}
* We need to rebuild the hellolib with our newest changes. Note that we do not use `conan create` here:
  * `cd ~/hellolib/build`{{execute}}
  * `conan install ../source`{{execute}}
  * `conan build ../source`{{execute}}

Now we have changed our hellolib and linked it to the dependency. We have the old version of our package still in our Conan cache, but all builds from now on will use the linked version. Let's rebuild helloworld3 and see how it turns out:
* `cd ~/helloworld3/build`{{execute}}
* `conan install ../source`{{execute}}
* `cmake ../source`{{execute}}
* `cmake --build .`{{execute}}
* `./bin/hello3`{{execute}}

If everything went right, you'll see your modified version of the hello message.
Now that we've seen what to work with lets start diving into coding.

First we need to install Conan. As it is Python-based the easiest way is to use pip for that:
* `yes | pip install conan`{{execute}}

After the installation finished take a look at our second example:
* The `main.cpp` did not change much. It now uses POCO though: `helloworld2/source/hello2.cpp`{{open}}
* In the `CMakeLists.txt` you can already see that there's something new going on: Our app uses POCO, but it's nowhere to be found as a dependency. This is because Conan is handling this for us: `helloworld2/source/CMakeLists.txt`{{open}}
* And here's where everything comes together: The `conanfile.txt` defines which dependencies to use: `helloworld2/source/conanfile.txt`{{open}}

We can build the whole project with the following commands:
* `mkdir -p ~/helloworld2/build && cd ~/helloworld2/build`{{execute}}
* `conan install ../source`{{execute}}
* `cmake ../source`{{execute}}
* `cmake --build .`{{execute}}
* `./hello2`{{execute}}

Do you remember what it usually takes to pull in a dependency like POCO into your project? Note that Conan also handles indirect dependencies, you don't need to worry about OpenSSL or zlib for example (POCO depends on both of them). Feel free to play around with the `conanfile.txt`, change the version or add a completely different dependency from [conan-center](https://bintray.com/conan/conan-center).

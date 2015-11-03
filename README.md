static_routes Cookbook
======================

Cookbook for adding simple static routes of the type '8.8.8.0/24 via 192.168.1.1'

Attributes
----------
* `node["static_routes"]["via"]` - hash map of static routes of the form { destination => via }

Usage
-----
```ruby
name "my-server"
run_list("recipe[static_routes]")
override_attributes(
  'static_routes' => {
    'via' => {
      '8.8.8.8' => '192.168.1.1',
      '10.9.0.0/16' => '192.168.1.5',
    }
  }
)
```

License
-----------------
```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

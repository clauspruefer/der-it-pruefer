---
category: programming
tags: [cplusplus, json, config, configuration, STL, english]
---

# Post Meta-Data

| Date       | Language                 | Author                            | Description                                   |
|------------|--------------------------|-----------------------------------|-----------------------------------------------|
| 19.09.2025 | English                  | Prüfer, Claus (Chief-Prüfer)      | C++ Highly Structured Configuration Managment |

# C++ Highly Structured Configuration Management Using JSON

This little tutorial gives deep insights about howto use Nlohmann::JSON library efficiently
in C++ projects for optimal configuration file handling and internal data processing.

Project address: https://github.com/nlohmann/json.

## 1. Preface

Configuration management in general is a major topic since decades. Over the years dozens of
components, each with its separate advantages and disadvantages entered the stage.

### 1.1. Commonly Used Formats

1. Grouped Key / Value Pairs
2. OS Registry
3. XML

Shortly, also JSON has been honoured to participate in this global acting theatre.

### 1.2. A History About JSON

In the early stages of dynamic internet content, Java Script invents JSON (Java Script Object Notation),
a simple way to define hierachical object metadata which is directly accessible through the
programming API smartly.

This technique forms its own uniqueness, a new *Design Pattern* has been born.

### 1.3. Python JSON Adaption

Python is the first programming language which understands this JSON desgin pattern correctly
and implements JSON *natively*.

By using the pattern in the correct way, even by combining Pythons `yield`, a Python programmer
gets powerful tools for building outstanding data models.

## 2. JSON in C++

C++ in general is a programming language which should be used in a generic way. For non-generic
approaches, C++ probably could be the wrong decision.

Dozens of C++ JSON libraries exist **not** following this paradigm.

### 2.1. Nlohmann::JSON

Yippieee: some smart guy (N. Lohmann from Berlin) gives you the opportunity to use JSON exactly
like described in your C++ projects.

The combination of super simple STL like / hierarichal access provides a extreme clean
object modeling mechanism. We will explain this in detail in section 3 "Implementation Examples".

"Massive", "R0ck den sh1t", a master of ceremony probably would shout out loud. Other (myriads)
of C++ JSON implementations are **not** usable in these desired (our favourite) ways.

### 2.2. Declarative Programming

The *Declarative Programming Design Pattern* is commonly used in products like Kubernetes
(written in GO). GO is not equipped with a true OOP model, so the pattern is not usable
in a clean way there.

Java Script, Python and the Nlohmann::JSON do this **very well**!

### 2.3. Genericness

By using generic STL base containers as JSON subtypes, the Nlohmann::JSON library STL C++11
functionality like std::swap and std::move is transparently usable in your code (see examples).

Base containers are std::vector for JS(ON) Array and std::map for JS(ON) Object tpye; also C++17
smart looping syntax is supported (also see examples).

### 2.4. Why Not Use XML

JSON lacks features like DTD (Document Type Definition) which XML does provide securely.

In contrary: it comes with lots of overhead, a XML parsing procedure is far more complex
than the JSON way. This results in increasing complexity and larger binaries, think about
embedded development.

Also many XML parsing libraries are programmed *c-style* and not comfortable usable like
nlohmann:json nested STL style.

## 3. Implementation Examples

Enough words spoken in theory / historically. Now lets give detailed examples how to use
the JSON library in a Declarative Programming point of view.

Most of the following examples are taken from project https://github.com/WEBcodeX1/http-1.2.

### 3.1. JSON Configuration File

The following JSON configuration file excerpt is referenced in the following code snippets.
Original config file here: https://github.com/WEBcodeX1/http-1.2/blob/main/config/config.json.

### 3.2. Grouping / Sections

```json
{
    "global":
    {
        "path":
        {
            "base": "/var/www"
        },
        "tcp":
        {
            "cork": false,
            "nodelay": true
        }
    },
    "server":
    {
        "runas":
        {
            "user": "x0-http",
            "group": "x0-http"
        },
        "connection":
        {
            "timeout": "600",
            "ipv4":
            {
                "address": "127.0.0.1",
                "port": 80
            }
        },
        "mimetypes":
        [
            "html", "js", "json", "css", "png", "jpg", "svg", "woff2"
        ]
    }
}
```

For larger configurations, consider using multiple configuration files.

### 3.3. Global Access

Small example for direct global access.

```c++
try {
    std::ifstream ConfigFile(CONFIG_FILE);
    json jsonData = json::parse(ConfigFile);

    const auto RunAsUnixUser = jsonData["server"]["runas"]["user"];
    const auto RunAsUnixGroup = jsonData["server"]["runas"]["group"];

    const auto BasePath = jsonData["global"]["path"]["base"];
    const auto ServerAddress = jsonData["server"]["connection"]["ipv4"]["address"];
    const auto ServerPort = jsonData["server"]["connection"]["ipv4"]["port"];

    const auto Mimetypes = jsonData["server"]["mimetypes"];
}
catch(const std::exception& e)
{
    std::cerr << "Config file processing error:" << e.what() << std::endl);
    std::exit(1);
}
```

### 3.4. Hierarchical Access

- Direct hierarchical access minimizes configuration value copies
- Auto mapping of configuration types eliminates progrmming mistakes
- If not modifyable, set configuration value `const`

```c++
const auto ServerAddress = jsonData["server"]["connection"]["ipv4"]["address"];
const auto ServerPort = jsonData["server"]["connection"]["ipv4"]["port"];
}
```

### 3.5. Lists Processing JSON

```json
{
    "namespaces":
    [
        {
            "id": "app1",
            "hostname": "testapp1.local",
            "path": "/app1",
            "interpreters": 5,
            "access":
            {
                "as-post":
                {
                    "/": "default"
                }
            }
        },
        {
            "id": "app2",
            "hostname": "testapp2.local",
            "path": "/app2",
            "interpreters": 3,
            "access":
            {
                "as-post":
                {
                    "/": false,
                    "/endpoint1": "method1"
                },
                "as-get":
                {
                    "/endpoint2":
                    {
                        "params": [ "param1", "param2" ],
                        "method": "method2"
                    }
                }
            }
        }
    ]
}
```

### 3.6. Lists Processing C++

Looping over a list of JS(ON) Objects is as easy as the following code demonstrates.

```c++
for (const auto& NamespaceItem:jsonData["namespaces"]) {
}
```

Single NamespaceItems JSON representation.

```json
{
    "id": "app1",
    "hostname": "testapp1.local",
    "path": "/app1",
    "interpreters": 5,
    "access":
    {
        "as-post":
        {
            "/": "default"
        }
    }
}
```

### 3.7. Generic Sub-Item Processing

From the example at 3.6. access sub object NamespaceItem properties easily.

```c++
for (const auto& NamespaceItem:jsonData["namespaces"]) {
    const auto AccessPostAS = NamespaceItem["access"]["as-post"];
}
```

### 3.8. STL std::move

See the following example how to **move** a JSON object (item) to a struct container.
This saves memory as only a reference (pointer) will be generated.

```c++
typedef struct {
    nlohmann::json JSONConfig;
    std::shared_ptr<Filesystem> FilesystemRef;
} NamespaceProps_t;

for (const auto& NamespaceItem:jsonData["namespaces"]) {

    NamespaceProps_t NamespaceProps;

    NamespaceProps.JSONConfig = std::move(NamespaceItem);
    NamespaceProps.FilesystemRef = std::nullptr;

    Namespaces.insert(
        NamespacePair_t(NamespaceItem["hostname"], NamespaceProps)
    );
}
```

Also a direct move to any STL move capable container is possible.

### 3.9. Global Direct Data Modeling

The nlohmann::json library design (STL std::swap, std::move)


## 4. External References

### 4.1. Falcon AS (http/1.2)

Example code taken from https://github.com/WEBcodeX1/http-1.2.

### 4.2. x0 Java Script Framework

A JavaScript framework using true OOP modeling and 
https://github.com/WEBcodeX1/x0.

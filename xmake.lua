add_rules("mode.debug", "mode.releasedbg", "mode.release")

set_languages("c++23")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")

add_requires("skyrim-commonlib")

target("BIND")
    add_files("*.cpp")
    add_packages("skyrim-commonlib")
    add_rules("@skyrim-commonlib/plugin", {
        name = "[Purr] BIND",
        version = "420.1.69",
        author = "Mrowr Purr",
        email = "mrowr.purr@gmail.com",
        mods_folder = os.getenv("SKYSCRIPT_MODS_FOLDER"),
        mod_files = {"Scripts"}
    })

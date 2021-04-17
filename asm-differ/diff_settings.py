def apply(config, args):
    config["baseimg"] = "baserom.z64"
    config["myimg"] = "build/superman.z64"
    config["mapfile"] = "build/supermsn.map"
    config["source_directories"] = ["."]
    #config["arch"] = "mips"
    #config["map_format"] = "gnu" # gnu or mw
    #config["mw_build_dir"] = "build/" # only needed for mw map format
    #config["makeflags"] = []
    #config["objdump_executable"] = ""

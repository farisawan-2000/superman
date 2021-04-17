import os
from segtypes.n64.segment import N64Segment
from pathlib import Path
from segtypes.segment import Segment
from util import options

class N64SegBin(N64Segment):
    def split(self, rom_bytes, base_path):
        out_dir = Segment.create_split_dir(base_path, options.get("assets_dir", "bin"))

        bin_path = os.path.join(out_dir, self.name + ".bin")
        Path(bin_path).parent.mkdir(parents=True, exist_ok=True)
        with open(bin_path, "wb") as f:
            f.write(rom_bytes[self.rom_start: self.rom_end])
        self.log(f"Wrote {self.name} to {bin_path}")

    def get_ld_files(self):
        return [(options.get("assets_dir", "bin"), f"{self.name}.bin", ".data", self.rom_start)]

    @staticmethod
    def get_default_name(addr):
        return "bin_{:X}".format(addr)

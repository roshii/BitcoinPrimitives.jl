# Copyright (c) 2019 Guido Kraemer
# Copyright (c) 2019 Simon Castano
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

module BitcoinPrimitives

using SHA, Printf

export
    Block, Header,
    Tx, TxIn, TxOut, Outpoint,
    Witness, CompactSizeUInt,
    serialize

const HEADER_SIZE = 80

# This reads reversed compared to the byte order
# TODO: big endian little endian
const MAGIC = 0xd9b4_bef9
const MAGIC_SIZE = sizeof(eltype(MAGIC))

include("lib/conversions.jl")
include("lib/CompactSizeUInt.jl")
include("transaction/Tx.jl")
include("Header.jl")
include("Block.jl")

end # module

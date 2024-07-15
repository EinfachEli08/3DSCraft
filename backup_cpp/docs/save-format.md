3DSCraft Save format

World folder:

saves
|--/Worldname
    |--/level.mpack
    |--/superchunks
        |--/superchunk-x-y-index.mpack
        |--/superchunk-x-y-data.dat

level.mpack
|--/string  name:   Name of World
|--/list    players # Players, only one entry for now
    |--/float   x, y, z:    Position of player
    |--/float   yaw, pitch: Direction::_ of player
    |--/bool    flying:     Whether player is flying


Every Superchunk contains 128x128 Blocks => 8 * 8 Chunks
Data is compressed with zlib!

superchunk-x-y-index.mpack
|--/list    chunkIndices:    Where chunks are at
    |--/int     position:   Position(in 4kb sectors) of where the chunk is at
    |--/byte    size:       Size(in 4kb sectors)
    |--/int     actualSize: The actual size
superchunk-x-y-data.mpack
Chunkdatas are split with 4kb sectors, see superchunk-x-y-index.mpack above
Chunk
|--/list    cluster:    Cluster of the chunk
    |--/bin blocks: Blocks in the chunk
|--/int     genProgress:    Progress of world generation
|--/int     revision:       Version of the chunk
|--/

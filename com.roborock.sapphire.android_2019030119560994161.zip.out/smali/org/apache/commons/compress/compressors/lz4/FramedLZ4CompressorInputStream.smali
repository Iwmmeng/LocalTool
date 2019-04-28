.class public Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;


# static fields
.field static final BLOCK_CHECKSUM_MASK:I = 0x10

.field static final BLOCK_INDEPENDENCE_MASK:I = 0x20

.field static final BLOCK_MAX_SIZE_MASK:I = 0x70

.field static final CONTENT_CHECKSUM_MASK:I = 0x4

.field static final CONTENT_SIZE_MASK:I = 0x8

.field static final LZ4_SIGNATURE:[B

.field private static final SKIPPABLE_FRAME_PREFIX_BYTE_MASK:B = 0x50t

.field private static final SKIPPABLE_FRAME_TRAILER:[B

.field static final SUPPORTED_VERSION:I = 0x40

.field static final UNCOMPRESSED_FLAG_MASK:I = -0x80000000

.field static final VERSION_MASK:I = 0xc0


# instance fields
.field private blockDependencyBuffer:[B

.field private final blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

.field private final contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

.field private currentBlock:Ljava/io/InputStream;

.field private final decompressConcatenated:Z

.field private endReached:Z

.field private expectBlockChecksum:Z

.field private expectBlockDependency:Z

.field private expectContentChecksum:Z

.field private expectContentSize:Z

.field private final in:Ljava/io/InputStream;

.field private inUncompressed:Z

.field private final oneByte:[B

.field private final supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->SKIPPABLE_FRAME_TRAILER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x22t
        0x4dt
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x2at
        0x4dt
        0x18t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->oneByte:[B

    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream$1;-><init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->decompressConcatenated:Z

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->init(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOneByte()I

    move-result p0

    return p0
.end method

.method private appendToBlockDependencyBuffer([BII)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    array-length v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    array-length v0, v0

    sub-int/2addr v0, p3

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    const/4 v3, 0x0

    invoke-static {v1, p3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private init(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readSignature(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readFrameDescriptor()V

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->nextBlock()V

    :cond_0
    return-void
.end method

.method private static isSkippableFrameSignature([B)Z
    .locals 6

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x50

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    aget-byte v3, p0, v2

    sget-object v4, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->SKIPPABLE_FRAME_TRAILER:[B

    add-int/lit8 v5, v2, -0x1

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static matches([BI)Z
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    array-length p1, p0

    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    sget-object p1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    array-length p1, p1

    new-array p1, p1, [B

    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    array-length v0, v0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    :cond_1
    sget-object p1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private maybeFinishCurrentBlock()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockChecksum:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    const-string v1, "block"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->verifyChecksum(Lorg/apache/commons/compress/compressors/lz4/XXHash32;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    :cond_0
    return-void
.end method

.method private nextBlock()V
    .locals 9

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->maybeFinishCurrentBlock()V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    and-long v4, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/32 v5, 0x7fffffff

    and-long v7, v0, v5

    long-to-int v0, v7

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->verifyContentChecksum()V

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->decompressConcatenated:Z

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->init(Z)V

    return-void

    :cond_2
    new-instance v1, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    int-to-long v6, v0

    invoke-direct {v1, v5, v6, v7}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockChecksum:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v0, v5, v1}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;-><init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v4, :cond_4

    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->inUncompressed:Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    return-void

    :cond_4
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->inUncompressed:Z

    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockDependency:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->prefill([B)V

    :cond_5
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    return-void
.end method

.method private readFrameDescriptor()V
    .locals 7

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOneByte()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of stream while reading frame flags"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update(I)V

    and-int/lit16 v2, v0, 0xc0

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockDependency:Z

    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockDependency:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    if-nez v2, :cond_4

    const/high16 v2, 0x10000

    new-array v2, v2, [B

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    :cond_4
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockChecksum:Z

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentSize:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentChecksum:Z

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOneByte()I

    move-result v0

    if-ne v0, v1, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of stream while reading frame BD byte"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update(I)V

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentSize:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_a

    new-array v0, v2, [B

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->count(I)V

    if-eq v2, v3, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of stream while reading content size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    :cond_a
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOneByte()I

    move-result v0

    if-ne v0, v1, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of stream while reading frame header checksum"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    move-result-wide v3

    shr-long v1, v3, v2

    const-wide/16 v3, 0xff

    and-long v5, v1, v3

    long-to-int v1, v5

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    if-eq v0, v1, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "frame header checksum mismatch."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private readOnce([BII)I
    .locals 5

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->inUncompressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->count(I)V

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    check-cast v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->getBytesRead()J

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->getBytesRead()J

    move-result-wide p2

    sub-long v3, p2, v1

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->count(J)V

    return p1
.end method

.method private readOneByte()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->count(I)V

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    return v1
.end method

.method private readSignature(Z)Z
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "Not a LZ4 frame stream"

    goto :goto_0

    :cond_0
    const-string v0, "LZ4 frame stream followed by garbage"

    :goto_0
    const/4 v1, 0x4

    new-array v2, v1, [B

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->count(I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    iput-boolean v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    return v4

    :cond_1
    if-eq v1, v3, :cond_2

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->skipSkippableFrame([B)I

    move-result v3

    if-nez v3, :cond_3

    if-nez p1, :cond_3

    iput-boolean v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    return v4

    :cond_3
    if-ne v1, v3, :cond_5

    invoke-static {v2, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->matches([BI)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return v5

    :cond_5
    :goto_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private skipSkippableFrame([B)I
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x4

    :goto_0
    if-ne v1, v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->isSkippableFrameSignature([B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v3, v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->count(J)V

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Premature end of stream while skipping frame"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v1, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->count(I)V

    goto :goto_0

    :cond_1
    return v1
.end method

.method private verifyChecksum(Lorg/apache/commons/compress/compressors/lz4/XXHash32;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v2, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->count(I)V

    if-eq v0, v2, :cond_0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Premature end of stream while reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " checksum"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    move-result-wide v2

    invoke-static {v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([B)J

    move-result-wide v0

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " checksum mismatch."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private verifyContentChecksum()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentChecksum:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    const-string v1, "content"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->verifyChecksum(Lorg/apache/commons/compress/compressors/lz4/XXHash32;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->oneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->oneByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    return v2
.end method

.method public read([BII)I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOnce([BII)I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->nextBlock()V

    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOnce([BII)I

    move-result v0

    :cond_1
    if-eq v0, v1, :cond_3

    iget-boolean p3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockDependency:Z

    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->appendToBlockDependencyBuffer([BII)V

    :cond_2
    iget-boolean p3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentChecksum:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {p3, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    :cond_3
    return v0
.end method

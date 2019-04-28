.class public Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;


# static fields
.field private static final FOUR_BYTE_COPY_TAG:I = 0x3

.field private static final FOUR_SIZE_BYTE_MARKER:I = 0xfc

.field private static final MAX_LITERAL_SIZE_WITHOUT_SIZE_BYTES:I = 0x3c

.field private static final MAX_LITERAL_SIZE_WITH_ONE_SIZE_BYTE:I = 0x100

.field private static final MAX_LITERAL_SIZE_WITH_THREE_SIZE_BYTES:I = 0x1000000

.field private static final MAX_LITERAL_SIZE_WITH_TWO_SIZE_BYTES:I = 0x10000

.field private static final MAX_MATCH_LENGTH:I = 0x40

.field private static final MAX_MATCH_LENGTH_WITH_ONE_OFFSET_BYTE:I = 0xb

.field private static final MAX_OFFSET_WITH_ONE_OFFSET_BYTE:I = 0x400

.field private static final MAX_OFFSET_WITH_TWO_OFFSET_BYTES:I = 0x8000

.field private static final MIN_MATCH_LENGTH:I = 0x4

.field private static final MIN_MATCH_LENGTH_WITH_ONE_OFFSET_BYTE:I = 0x4

.field private static final ONE_BYTE_COPY_TAG:I = 0x1

.field private static final ONE_SIZE_BYTE_MARKER:I = 0xf0

.field private static final THREE_SIZE_BYTE_MARKER:I = 0xf8

.field private static final TWO_BYTE_COPY_TAG:I = 0x2

.field private static final TWO_SIZE_BYTE_MARKER:I = 0xf4


# instance fields
.field private final compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

.field private final consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

.field private finished:Z

.field private final oneByte:[B

.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;JI)V
    .locals 0

    invoke-static {p4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->createParameterBuilder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->oneByte:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finished:Z

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    new-instance v0, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

    new-instance p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;-><init>(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;)V

    invoke-direct {p1, p4, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;-><init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeUncompressedSize(J)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    return-void
.end method

.method public static createParameterBuilder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .locals 2

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->builder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMinBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxOffset(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxLiteralLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method private writeBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    move-result p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0xb

    if-gt v0, v1, :cond_0

    const/16 v1, 0x400

    if-gt p1, v1, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithOneOffsetByte(II)V

    return-void

    :cond_0
    const v1, 0x8000

    if-ge p1, v1, :cond_1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithTwoOffsetBytes(II)V

    return-void

    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithFourOffsetBytes(II)V

    return-void
.end method

.method private writeBackReferenceWithFourOffsetBytes(II)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithLittleEndianOffset(IIII)V

    return-void
.end method

.method private writeBackReferenceWithLittleEndianOffset(IIII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    add-int/lit8 p3, p3, -0x1

    shl-int/lit8 p3, p3, 0x2

    or-int/2addr p1, p3

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    invoke-direct {p0, p2, p4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLittleEndian(II)V

    return-void
.end method

.method private writeBackReferenceWithOneOffsetByte(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    add-int/lit8 p1, p1, -0x4

    shl-int/lit8 p1, p1, 0x2

    or-int/lit8 p1, p1, 0x1

    and-int/lit16 v1, p2, 0x700

    shr-int/lit8 v1, v1, 0x3

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeBackReferenceWithTwoOffsetBytes(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithLittleEndianOffset(IIII)V

    return-void
.end method

.method private writeLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getLength()I

    move-result v0

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockNoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    return-void

    :cond_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockOneSizeByte(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    return-void

    :cond_1
    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockTwoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    return-void

    :cond_2
    const/high16 v1, 0x1000000

    if-gt v0, v1, :cond_3

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockThreeSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    return-void

    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockFourSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    return-void
.end method

.method private writeLiteralBlockFourSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2

    const/16 v0, 0xfc

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    return-void
.end method

.method private writeLiteralBlockNoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    shl-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    return-void
.end method

.method private writeLiteralBlockOneSizeByte(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2

    const/16 v0, 0xf0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    return-void
.end method

.method private writeLiteralBlockThreeSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2

    const/16 v0, 0xf8

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    return-void
.end method

.method private writeLiteralBlockTwoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2

    const/16 v0, 0xf4

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    return-void
.end method

.method private writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 p1, p3, -0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLittleEndian(II)V

    iget-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getData()[B

    move-result-object p2

    invoke-virtual {p4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    move-result p4

    invoke-virtual {p1, p2, p4, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private writeLittleEndian(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

    int-to-long v1, p2

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;JI)V

    return-void
.end method

.method private writeUncompressedSize(J)V
    .locals 4

    :cond_0
    const-wide/16 v0, 0x7f

    and-long v2, p1, v0

    long-to-int v0, v2

    int-to-long v1, v0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    shr-long/2addr p1, v0

    if-nez v1, :cond_0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finish()V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finished:Z

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->oneByte:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->oneByte:[B

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    return-void
.end method

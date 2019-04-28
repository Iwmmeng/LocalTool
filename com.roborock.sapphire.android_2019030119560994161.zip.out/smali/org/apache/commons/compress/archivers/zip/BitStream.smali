.class Lorg/apache/commons/compress/archivers/zip/BitStream;
.super Lorg/apache/commons/compress/utils/BitInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    return-void
.end method


# virtual methods
.method nextBit()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->readBits(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method nextBits(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/BitStream;->readBits(I)J

    move-result-wide v0

    return-wide v0
.end method

.method nextByte()I
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->readBits(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

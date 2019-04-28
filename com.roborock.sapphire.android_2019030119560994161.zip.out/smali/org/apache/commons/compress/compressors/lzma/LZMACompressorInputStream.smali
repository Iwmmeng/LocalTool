.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;


# instance fields
.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    :try_start_0
    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    invoke-direct {v0, p1, p2}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p1}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v2

    invoke-direct {p2, v0, v1, v2, p1}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw p2
.end method

.method public static matches([BI)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x3

    if-lt p1, v2, :cond_0

    aget-byte p1, p0, v1

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_0

    aget-byte p1, p0, v0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    aget-byte p0, p0, p1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->count(I)V

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->count(I)V

    return p1
.end method

.method public skip(J)J
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

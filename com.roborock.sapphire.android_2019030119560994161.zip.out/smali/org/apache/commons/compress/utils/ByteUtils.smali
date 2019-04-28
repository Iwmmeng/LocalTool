.class public final Lorg/apache/commons/compress/utils/ByteUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;,
        Lorg/apache/commons/compress/utils/ByteUtils$InputStreamByteSupplier;,
        Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;,
        Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final checkReadLength(I)V
    .locals 1

    const/16 v0, 0x8

    if-le p0, v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t read more than eight bytes into a long value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public static fromLittleEndian(Ljava/io/DataInput;I)J
    .locals 7

    invoke-static {p1}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static fromLittleEndian(Ljava/io/InputStream;I)J
    .locals 8

    invoke-static {p1}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "premature end of data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J
    .locals 8

    invoke-static {p1}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-interface {p0}, Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;->getAsByte()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "premature end of data"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static fromLittleEndian([B)J
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static fromLittleEndian([BII)J
    .locals 9

    invoke-static {p2}, Lorg/apache/commons/compress/utils/ByteUtils;->checkReadLength(I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long v7, v3, v5

    mul-int/lit8 v3, v2, 0x8

    shl-long v3, v7, v3

    or-long v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static toLittleEndian(Ljava/io/DataOutput;JI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v1, v3

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->write(I)V

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toLittleEndian(Ljava/io/OutputStream;JI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v1, v3

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;JI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v1, v3

    invoke-interface {p0, v1}, Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;->accept(I)V

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static toLittleEndian([BJII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

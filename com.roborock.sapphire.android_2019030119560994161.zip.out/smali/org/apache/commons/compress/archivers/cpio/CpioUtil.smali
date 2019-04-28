.class Lorg/apache/commons/compress/archivers/cpio/CpioUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteArray2long([BZ)J
    .locals 7

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-byte v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, v0, v3

    aput-byte v4, v0, p1

    aput-byte v1, v0, v3

    add-int/lit8 p1, v3, 0x1

    goto :goto_0

    :cond_1
    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v1, p1

    :goto_1
    array-length p1, v0

    if-ge p0, p1, :cond_2

    const/16 p1, 0x8

    shl-long/2addr v1, p1

    aget-byte p1, v0, p0

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long v5, v1, v3

    add-int/lit8 p0, p0, 0x1

    move-wide v1, v5

    goto :goto_1

    :cond_2
    return-wide v1
.end method

.method static fileType(J)J
    .locals 4

    const-wide/32 v0, 0xf000

    and-long v2, p0, v0

    return-wide v2
.end method

.method static long2byteArray(JIZ)[B
    .locals 6

    new-array v0, p2, [B

    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_3

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    const-wide/16 v2, 0xff

    and-long v4, p0, v2

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v2, 0x8

    shr-long/2addr p0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 p0, 0x0

    :goto_1
    if-ge p0, p2, :cond_2

    aget-byte p1, v0, p0

    add-int/lit8 p3, p0, 0x1

    aget-byte v1, v0, p3

    aput-byte v1, v0, p0

    aput-byte p1, v0, p3

    add-int/lit8 p0, p3, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

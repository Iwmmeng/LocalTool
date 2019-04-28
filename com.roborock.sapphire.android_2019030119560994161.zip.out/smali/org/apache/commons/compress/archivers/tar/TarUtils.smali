.class public Lorg/apache/commons/compress/archivers/tar/TarUtils;
.super Ljava/lang/Object;


# static fields
.field private static final BYTE_MASK:I = 0xff

.field static final DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field static final FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCheckSum([B)J
    .locals 8

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move-wide v1, v6

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string p0, "\u0000"

    const-string v1, "{NUL}"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " at offset "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' len="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatBigIntegerBinary(J[BIIZ)V
    .locals 3

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, p4, -0x1

    if-le v1, v2, :cond_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Value "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " is too large for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " byte field."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    add-int/2addr p4, p3

    sub-int/2addr p4, v1

    const/4 p0, 0x0

    invoke-static {v0, p0, p2, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p5, :cond_1

    const/16 p0, 0xff

    :cond_1
    int-to-byte p0, p0

    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_2

    aput-byte p0, p2, p3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .locals 1

    add-int/lit8 v0, p4, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/lit8 p0, v0, 0x1

    add-int/2addr v0, p3

    const/4 p1, 0x0

    aput-byte p1, p2, v0

    add-int/2addr p0, p3

    const/16 p1, 0x20

    aput-byte p1, p2, p0

    add-int/2addr p3, p4

    return p3
.end method

.method private static formatLongBinary(J[BIIZ)V
    .locals 13

    move/from16 v0, p3

    move/from16 v1, p4

    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x8

    mul-int/lit8 v2, v2, 0x8

    const-wide/16 v4, 0x1

    shl-long v6, v4, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-ltz v12, :cond_3

    cmp-long v10, v8, v6

    if-ltz v10, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    sub-long v10, v6, v4

    xor-long v6, v8, v10

    add-long v8, v6, v4

    const-wide/16 v4, 0xff

    shl-long/2addr v4, v2

    or-long v6, v8, v4

    move-wide v8, v6

    :cond_1
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lt v1, v0, :cond_2

    long-to-int v2, v8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    shr-long/2addr v8, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " is too large for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " byte field."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static formatLongOctalBytes(J[BII)I
    .locals 1

    add-int/lit8 v0, p4, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/2addr v0, p3

    const/16 p0, 0x20

    aput-byte p0, p2, v0

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatLongOctalOrBinaryBytes(J[BII)I
    .locals 9

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    const-wide/32 v0, 0x1fffff

    goto :goto_0

    :cond_0
    const-wide v0, 0x1ffffffffL

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    cmp-long v3, p0, v0

    if-gtz v3, :cond_2

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0x9

    if-ge p4, v0, :cond_3

    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongBinary(J[BIIZ)V

    goto :goto_2

    :cond_3
    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatBigIntegerBinary(J[BIIZ)V

    :goto_2
    if-eqz v2, :cond_4

    const/16 p0, 0xff

    goto :goto_3

    :cond_4
    const/16 p0, 0x80

    :goto_3
    int-to-byte p0, p0

    aput-byte p0, p2, p3

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, p3, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p4

    sub-int/2addr p0, p4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-static {p4, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-ge p0, p3, :cond_1

    add-int p4, p2, p0

    aput-byte v3, p1, p4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr p2, p3

    return p2
.end method

.method public static formatOctalBytes(J[BII)I
    .locals 1

    add-int/lit8 v0, p4, -0x2

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/lit8 p0, v0, 0x1

    add-int/2addr v0, p3

    const/16 p1, 0x20

    aput-byte p1, p2, v0

    add-int/2addr p0, p3

    const/4 p1, 0x0

    aput-byte p1, p2, p0

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .locals 11

    add-int/lit8 v0, p4, -0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/16 v4, 0x30

    if-nez v3, :cond_0

    add-int/lit8 p0, v0, -0x1

    add-int/2addr v0, p3

    aput-byte v4, p2, v0

    goto :goto_1

    :cond_0
    move-wide v5, p0

    :goto_0
    if-ltz v0, :cond_1

    cmp-long v3, v5, v1

    if-eqz v3, :cond_1

    add-int v3, p3, v0

    const-wide/16 v7, 0x7

    and-long v9, v5, v7

    long-to-int v7, v9

    int-to-byte v7, v7

    add-int/2addr v7, v4

    int-to-byte v7, v7

    aput-byte v7, p2, v3

    const/4 v3, 0x3

    ushr-long/2addr v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long v3, v5, v1

    if-eqz v3, :cond_2

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " will not fit in octal number buffer of length "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move p0, v0

    :goto_1
    if-ltz p0, :cond_3

    add-int p1, p3, p0

    aput-byte v4, p2, p1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static parseBinaryBigInteger([BIIZ)J
    .locals 4

    add-int/lit8 v0, p2, -0x1

    new-array v1, v0, [B

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz p3, :cond_0

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte binary number exceeds maximum signed long value"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    neg-long p0, p0

    return-wide p0

    :cond_2
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static parseBinaryLong([BIIZ)J
    .locals 9

    const/16 v0, 0x9

    if-lt p2, v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte binary number exceeds maximum signed long value"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    move-wide v3, v0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_1

    const/16 v1, 0x8

    shl-long/2addr v3, v1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v5, v1

    add-long v7, v3, v5

    add-int/lit8 v0, v0, 0x1

    move-wide v3, v7

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-wide/16 p0, 0x1

    sub-long v0, v3, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-int/2addr p2, v2

    int-to-double v5, p2

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    mul-double v5, v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long v4, v2, p0

    xor-long p0, v0, v4

    goto :goto_1

    :cond_2
    move-wide p0, v3

    :goto_1
    if-eqz p3, :cond_3

    neg-long p0, p0

    :cond_3
    return-wide p0
.end method

.method public static parseBoolean([BI)Z
    .locals 0

    aget-byte p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static parseName([BII)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-byte v3, p0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    new-array p2, v1, [B

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static parseOctal([BII)J
    .locals 8

    add-int v0, p1, p2

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " must be at least 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    aget-byte v1, p0, p1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    return-wide v2

    :cond_1
    move v1, p1

    :goto_0
    const/16 v4, 0x20

    if-ge v1, v0, :cond_2

    aget-byte v5, p0, v1

    if-ne v5, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    :goto_1
    if-ge v1, v0, :cond_4

    if-eqz v5, :cond_3

    if-ne v5, v4, :cond_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    aget-byte v5, p0, v5

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v1, v0, :cond_7

    aget-byte v4, p0, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_6

    const/16 v5, 0x37

    if-le v4, v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x3

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long v6, v2, v4

    add-int/lit8 v1, v1, 0x1

    move-wide v2, v6

    goto :goto_2

    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v1, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    return-wide v2
.end method

.method public static parseOctalOrBinary([BII)J
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide p0

    return-wide p0

    :cond_0
    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge p2, v1, :cond_2

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryLong([BIIZ)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryBigInteger([BIIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static verifyCheckSum([B)Z
    .locals 14

    const/16 v0, 0x94

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v7, v4

    move-wide v5, v7

    const/4 v4, 0x0

    :goto_0
    array-length v9, p0

    if-ge v4, v9, :cond_1

    aget-byte v9, p0, v4

    if-gt v0, v4, :cond_0

    const/16 v10, 0x9c

    if-ge v4, v10, :cond_0

    const/16 v9, 0x20

    :cond_0
    and-int/lit16 v10, v9, 0xff

    int-to-long v10, v10

    add-long v12, v5, v10

    int-to-long v5, v9

    add-long v9, v7, v5

    add-int/lit8 v4, v4, 0x1

    move-wide v7, v9

    move-wide v5, v12

    goto :goto_0

    :cond_1
    cmp-long p0, v1, v5

    if-eqz p0, :cond_2

    cmp-long p0, v1, v7

    if-nez p0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.class public Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Parameter checksum must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Parameter in must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    iput-object p2, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    :cond_0
    return p3
.end method

.method public skip(J)J
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x1

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.class public Lorg/apache/commons/compress/utils/CountingOutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private bytesWritten:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/utils/CountingOutputStream;->bytesWritten:J

    return-void
.end method


# virtual methods
.method protected count(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/utils/CountingOutputStream;->bytesWritten:J

    add-long v2, v0, p1

    iput-wide v2, p0, Lorg/apache/commons/compress/utils/CountingOutputStream;->bytesWritten:J

    :cond_0
    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/utils/CountingOutputStream;->bytesWritten:J

    return-wide v0
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/utils/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/utils/CountingOutputStream;->count(J)V

    return-void
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/CountingOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/utils/CountingOutputStream;->count(J)V

    return-void
.end method

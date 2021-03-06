.class public Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;
.super Ljava/io/OutputStream;

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final out:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private maybeFlush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    :cond_0
    return-void
.end method

.method private padBlock()V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_1

    rsub-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    iget-object v5, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v3

    :cond_1
    :goto_1
    if-lt v0, v2, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_3
    return-void
.end method

.method private writeBlock()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    iget v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void

    :cond_1
    :goto_0
    const-string v1, "Failed to write %,d bytes atomically. Only wrote  %,d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->flushBlock()V

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    :cond_0
    return-void
.end method

.method public flushBlock()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->padBlock()V

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    sub-int v2, v0, v2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-lt v2, v3, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v3, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    return v0
.end method

.method public write(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    return-void
.end method

.method public write([BII)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.class public Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field private static final NAIVE_RESIZE_LIMIT:I = 0x3fffffff


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private data:[B

.field private position:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    return-void
.end method

.method private ensureOpen()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private repositionIfNecessary()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iput v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    :cond_0
    return-void
.end method

.method private resize(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    if-ge p1, v1, :cond_2

    :goto_0
    if-ge v0, p1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public position()J
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    return-object p0

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Position has to be in range 0.. 2147483647"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->repositionIfNecessary()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    return v0
.end method

.method public size()J
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 3

    iget v0, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    int-to-long v0, v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    long-to-int p1, p1

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->repositionIfNecessary()V

    return-object p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->ensureOpen()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    add-int/2addr v1, v0

    if-gez v1, :cond_0

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->resize(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->data:[B

    iget v2, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    iget v1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    if-ge p1, v1, :cond_2

    iget p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->position:I

    iput p1, p0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;->size:I

    :cond_2
    return v0
.end method

.class Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;
.super Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UncompressedState"
.end annotation


# instance fields
.field private final blockLength:J

.field private read:J

.field final synthetic this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;


# direct methods
.method private constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;J)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V

    iput-wide p2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;JLorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;J)V

    return-void
.end method


# virtual methods
.method available()I
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    sub-long v4, v0, v2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$400(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->bitsAvailable()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method hasData()Z
    .locals 5

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method read([BII)I
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    sub-long v4, v0, v2

    int-to-long v0, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$400(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/utils/BitInputStream;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/utils/BitInputStream;->bitsCached()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$500(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;I)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$600(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    move-result v1

    aput-byte v1, p1, v2

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$700(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Ljava/io/InputStream;

    move-result-object v1

    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    new-instance p1, Ljava/io/EOFException;

    const-string p2, "Truncated Deflate64 Stream"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->this$0:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-static {v3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->access$600(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add([BII)V

    :goto_1
    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    int-to-long v4, v1

    add-long v6, v2, v4

    iput-wide v6, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return p3
.end method

.method state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
    .locals 5

    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->read:J

    iget-wide v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$UncompressedState;->blockLength:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->STORED:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;->INITIAL:Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;

    return-object v0
.end method

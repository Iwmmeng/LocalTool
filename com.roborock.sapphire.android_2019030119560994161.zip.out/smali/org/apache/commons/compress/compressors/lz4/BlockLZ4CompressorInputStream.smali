.class public Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;
    }
.end annotation


# static fields
.field static final BACK_REFERENCE_SIZE_MASK:I = 0xf

.field static final LITERAL_SIZE_MASK:I = 0xf0

.field static final SIZE_BITS:I = 0x4

.field static final WINDOW_SIZE:I = 0x10000


# instance fields
.field private nextBackReferenceSize:I

.field private state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object p1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return-void
.end method

.method private initializeBackReference()Z
    .locals 7

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    int-to-long v1, v1

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizeBytes()J

    move-result-wide v3

    add-long v5, v1, v3

    move-wide v1, v5

    :cond_0
    const-wide/16 v3, 0x4

    add-long v5, v1, v3

    invoke-virtual {p0, v0, v5, v6}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->startBackReference(IJ)V

    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->IN_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    throw v0
.end method

.method private readSizeBytes()J
    .locals 7

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readOneByte()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of stream while parsing length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    int-to-long v3, v2

    add-long v5, v0, v3

    const/16 v0, 0xff

    if-eq v2, v0, :cond_1

    return-wide v5

    :cond_1
    move-wide v0, v5

    goto :goto_0
.end method

.method private readSizes()V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readOneByte()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Premature end of stream while looking for next block"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v1, v0, 0xf

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->nextBackReferenceSize:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    const-wide/16 v2, 0xf

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizeBytes()J

    move-result-wide v2

    add-long v4, v0, v2

    move-wide v0, v4

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->startLiteral(J)V

    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->IN_LITERAL:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$1;->$SwitchMap$org$apache$commons$compress$compressors$lz4$BlockLZ4CompressorInputStream$State:[I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown stream state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->initializeBackReference()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->EOF:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    return v1

    :cond_0
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readBackReference([BII)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->hasMoreDataInBlock()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->NO_BLOCK:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    :cond_1
    if-lez v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->read([BII)I

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readSizes()V

    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->readLiteral([BII)I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->hasMoreDataInBlock()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;->LOOKING_FOR_BACK_REFERENCE:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->state:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream$State;

    :cond_3
    if-lez v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;->read([BII)I

    move-result v0

    return v0

    :pswitch_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

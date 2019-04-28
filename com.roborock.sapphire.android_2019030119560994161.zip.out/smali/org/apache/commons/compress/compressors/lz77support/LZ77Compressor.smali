.class public Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;,
        Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
    }
.end annotation


# static fields
.field private static final HASH_MASK:I = 0x7fff

.field private static final HASH_SIZE:I = 0x8000

.field private static final H_SHIFT:I = 0x5

.field private static final NO_MATCH:I = -0x1

.field static final NUMBER_OF_BYTES_IN_HASH:I = 0x3

.field private static final THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;


# instance fields
.field private blockStart:I

.field private final callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

.field private currentPosition:I

.field private final head:[I

.field private initialized:Z

.field private insertHash:I

.field private lookahead:I

.field private matchStart:I

.field private missedInserts:I

.field private final params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

.field private final prev:[I

.field private final wMask:I

.field private final window:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "params must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result p1

    mul-int/lit8 p2, p1, 0x2

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    const p2, 0x8000

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    return-void
.end method

.method private catchUpMissedInserts()V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private compress()V
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatching()Z

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getLazyMatchingThreshold()I

    move-result v2

    :cond_0
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lt v3, v0, :cond_4

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->catchUpMissedInserts()V

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int v6, v4, v6

    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v7}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v7

    if-gt v6, v7, :cond_1

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v3

    if-eqz v1, :cond_1

    if-gt v3, v2, :cond_1

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-le v4, v0, :cond_1

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatchForNextPosition(I)I

    move-result v3

    :cond_1
    if-lt v3, v0, :cond_3

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v6, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v4, v6, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    iput v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    :cond_2
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushBackReference(I)V

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertStringsInMatch(I)V

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    :goto_1
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxLiteralLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private doCompress([BII)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->slide()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iget-boolean p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    if-nez p1, :cond_1

    iget p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result p2

    if-lt p1, p2, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    :cond_1
    iget-boolean p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress()V

    :cond_2
    return-void
.end method

.method private flushBackReference(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;-><init>(II)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method private flushLiteralBlock()V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;-><init>([BII)V

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method private initialize()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialized:Z

    return-void
.end method

.method private insertString(I)I
    .locals 3

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->nextHash(IB)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v2, p1

    aput v0, v1, v2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    aput p1, v1, v2

    return v0
.end method

.method private insertStringsInMatch(I)V
    .locals 4

    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_0

    iget v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    return-void
.end method

.method private longestMatch(I)I
    .locals 12

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMinBackReferenceLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxBackReferenceLength()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxOffset()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getNiceBackReferenceLength()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v5}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getMaxCandidates()I

    move-result v5

    move v6, v0

    move v0, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v5, :cond_4

    if-lt v0, v2, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v1, :cond_1

    iget-object v9, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    add-int v10, v0, v7

    aget-byte v9, v9, v10

    iget-object v10, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget v11, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/2addr v11, v7

    aget-byte v10, v10, v11

    if-eq v9, v10, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-le v8, v6, :cond_3

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    if-lt v8, v4, :cond_2

    move v6, v8

    return v6

    :cond_2
    move v6, v8

    :cond_3
    iget-object v7, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v8, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v0, v8

    aget v0, v7, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v6
.end method

.method private longestMatchForNextPosition(I)I
    .locals 6

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    iget v4, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->wMask:I

    and-int/2addr v4, v5

    aget v3, v3, v4

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->longestMatch(I)I

    move-result v2

    if-gt v2, p1, :cond_0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    aput v3, v0, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertHash:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    return p1

    :cond_0
    move p1, v2

    return p1
.end method

.method private nextHash(IB)I
    .locals 0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p1, p1, 0x5

    xor-int/2addr p1, p2

    and-int/lit16 p1, p1, 0x7fff

    return p1
.end method

.method private slide()V
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    if-ge v1, v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->matchStart:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    const/4 v1, 0x0

    :goto_0
    const v2, 0x8000

    const/4 v4, -0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    aget v2, v2, v1

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->head:[I

    if-lt v2, v0, :cond_1

    sub-int v4, v2, v0

    :cond_1
    aput v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    aget v1, v1, v3

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prev:[I

    if-lt v1, v0, :cond_3

    sub-int/2addr v1, v0

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    aput v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public compress([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    return-void
.end method

.method public compress([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    :goto_0
    if-le p3, v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->doCompress([BII)V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->flushLiteralBlock()V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->callback:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;

    sget-object v1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->THE_EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;

    invoke-interface {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;->accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V

    return-void
.end method

.method public prefill([B)V
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->lookahead:I

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->params:Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->getWindowSize()I

    move-result v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->window:[B

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x3

    if-lt v0, p1, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->initialize()V

    add-int/lit8 p1, v0, -0x3

    add-int/lit8 p1, p1, 0x1

    :goto_0
    if-ge v3, p1, :cond_1

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->insertString(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    goto :goto_1

    :cond_2
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->missedInserts:I

    :goto_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->currentPosition:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->blockStart:I

    return-void

    :cond_3
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "the compressor has already started to accept data, can\'t prefill anymore"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

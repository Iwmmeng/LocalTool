.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;


# instance fields
.field private final encOS:Lcom/github/luben/zstd/ZstdOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdOutputStream;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->encOS:Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdOutputStream;->write([BII)V

    return-void
.end method

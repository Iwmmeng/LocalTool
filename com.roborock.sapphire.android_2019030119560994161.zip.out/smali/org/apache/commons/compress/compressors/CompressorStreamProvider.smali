.class public interface abstract Lorg/apache/commons/compress/compressors/CompressorStreamProvider;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/apache/commons/compress/compressors/CompressorInputStream;
.end method

.method public abstract createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.end method

.method public abstract getInputStreamCompressorNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputStreamCompressorNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

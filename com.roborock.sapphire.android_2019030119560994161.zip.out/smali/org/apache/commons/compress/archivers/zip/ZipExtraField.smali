.class public interface abstract Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRAFIELD_HEADER_SIZE:I = 0x4


# virtual methods
.method public abstract getCentralDirectoryData()[B
.end method

.method public abstract getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
.end method

.method public abstract getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
.end method

.method public abstract getLocalFileDataData()[B
.end method

.method public abstract getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
.end method

.method public abstract parseFromCentralDirectoryData([BII)V
.end method

.method public abstract parseFromLocalFileData([BII)V
.end method

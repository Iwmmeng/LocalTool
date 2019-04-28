.class public Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# instance fields
.field private centralData:[B

.field private headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private localData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    return-void
.end method

.method public setCentralDirectoryData([B)V
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->centralData:[B

    return-void
.end method

.method public setHeaderId(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->headerId:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public setLocalFileDataData([B)V
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->copy([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->localData:[B

    return-void
.end method

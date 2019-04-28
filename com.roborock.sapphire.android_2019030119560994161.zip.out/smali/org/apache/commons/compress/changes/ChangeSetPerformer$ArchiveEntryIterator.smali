.class interface abstract Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/changes/ChangeSetPerformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ArchiveEntryIterator"
.end annotation


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract hasNext()Z
.end method

.method public abstract next()Lorg/apache/commons/compress/archivers/ArchiveEntry;
.end method

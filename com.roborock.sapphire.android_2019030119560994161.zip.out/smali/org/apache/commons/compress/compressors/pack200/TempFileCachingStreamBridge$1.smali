.class Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge$1;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;->getInputView()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge$1;->this$0:Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge$1;->this$0:Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;->access$000(Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

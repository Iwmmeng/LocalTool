.class Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$2;->$SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->access$200(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->access$100(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->access$000(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

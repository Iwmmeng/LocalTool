.class public Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/utils/ByteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStreamByteConsumer"
.end annotation


# instance fields
.field private final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;->os:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

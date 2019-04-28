.class public Lorg/apache/commons/compress/utils/ByteUtils$InputStreamByteSupplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/utils/ByteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStreamByteSupplier"
.end annotation


# instance fields
.field private final is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/utils/ByteUtils$InputStreamByteSupplier;->is:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getAsByte()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/utils/ByteUtils$InputStreamByteSupplier;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

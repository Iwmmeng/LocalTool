.class public Lorg/objenesis/instantiator/sun/MagicInstantiator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/objenesis/instantiator/ObjectInstantiator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/objenesis/instantiator/annotations/Instantiator;
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->STANDARD:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# static fields
.field private static CONSTANT_POOL_COUNT:I = 0x13

.field private static final CONSTRUCTOR_CODE:[B

.field private static final CONSTRUCTOR_CODE_ATTRIBUTE_LENGTH:I

.field private static final CONSTRUCTOR_DESC:Ljava/lang/String; = "()V"

.field private static final CONSTRUCTOR_NAME:Ljava/lang/String; = "<init>"

.field private static final INDEX_CLASS_INTERFACE:I = 0x9

.field private static final INDEX_CLASS_OBJECT:I = 0xe

.field private static final INDEX_CLASS_SUPERCLASS:I = 0x2

.field private static final INDEX_CLASS_THIS:I = 0x1

.field private static final INDEX_CLASS_TYPE:I = 0x11

.field private static final INDEX_METHODREF_OBJECT_CONSTRUCTOR:I = 0xd

.field private static final INDEX_NAMEANDTYPE_DEFAULT_CONSTRUCTOR:I = 0x10

.field private static final INDEX_UTF8_CODE_ATTRIBUTE:I = 0x5

.field private static final INDEX_UTF8_CONSTRUCTOR_DESC:I = 0x4

.field private static final INDEX_UTF8_CONSTRUCTOR_NAME:I = 0x3

.field private static final INDEX_UTF8_INSTANTIATOR_CLASS:I = 0x7

.field private static final INDEX_UTF8_INTERFACE:I = 0xa

.field private static final INDEX_UTF8_NEWINSTANCE_DESC:I = 0xc

.field private static final INDEX_UTF8_NEWINSTANCE_NAME:I = 0xb

.field private static final INDEX_UTF8_OBJECT:I = 0xf

.field private static final INDEX_UTF8_SUPERCLASS:I = 0x8

.field private static final INDEX_UTF8_TYPE:I = 0x12

.field private static final MAGIC_ACCESSOR:Ljava/lang/String;

.field private static final NEWINSTANCE_CODE:[B

.field private static final NEWINSTANCE_CODE_ATTRIBUTE_LENGTH:I


# instance fields
.field private instantiator:Lorg/objenesis/instantiator/ObjectInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/objenesis/instantiator/sun/MagicInstantiator;->getMagicClass()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->MAGIC_ACCESSOR:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE:[B

    sget-object v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    sput v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE_ATTRIBUTE_LENGTH:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE:[B

    sget-object v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    sput v0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE_ATTRIBUTE_LENGTH:I

    return-void

    :array_0
    .array-data 1
        0x2at
        -0x49t
        0x0t
        0xdt
        -0x4ft
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x45t
        0x0t
        0x11t
        0x59t
        -0x49t
        0x0t
        0xdt
        -0x50t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/objenesis/instantiator/sun/MagicInstantiator;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object p1

    iput-object p1, p0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->instantiator:Lorg/objenesis/instantiator/ObjectInstantiator;

    return-void
.end method

.method private static getMagicClass()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "sun.reflect.MagicAccessorImpl"

    const/4 v1, 0x0

    const-class v2, Lorg/objenesis/instantiator/sun/MagicInstantiator;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    const-string v0, "sun/reflect/MagicAccessorImpl"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "jdk/internal/reflect/MagicAccessorImpl"

    return-object v0
.end method

.method private newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$$$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->getExistingClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/objenesis/instantiator/sun/MagicInstantiator;->writeExtendingClass(Ljava/lang/Class;Ljava/lang/String;)[B

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->defineClass(Ljava/lang/String;[BLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/objenesis/ObjenesisException;

    invoke-direct {v0, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/objenesis/instantiator/ObjectInstantiator;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lorg/objenesis/ObjenesisException;

    invoke-direct {v0, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lorg/objenesis/ObjenesisException;

    invoke-direct {v0, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeExtendingClass(Ljava/lang/Class;Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    invoke-static {p2}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->classNameToInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->MAGIC:[B

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v1, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->VERSION:[B

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    sget v1, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTANT_POOL_COUNT:I

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x7

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v4, "<init>"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v4, "()V"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v4, "Code"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object p2, Lorg/objenesis/instantiator/sun/MagicInstantiator;->MAGIC_ACCESSOR:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 p2, 0xa

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-class v4, Lorg/objenesis/instantiator/ObjectInstantiator;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v4, "newInstance"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v4, "()Ljava/lang/Object;"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 p2, 0xe

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 p2, 0x10

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 p2, 0xf

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string p2, "java/lang/Object"

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 p2, 0xc

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v1, 0x12

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/objenesis/instantiator/util/ClassDefinitionUtils;->classNameToInternalClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 p1, 0x31

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 p1, 0x2

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v5, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE_ATTRIBUTE_LENGTH:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v5, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v5, Lorg/objenesis/instantiator/sun/MagicInstantiator;->CONSTRUCTOR_CODE:[B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget p2, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE_ATTRIBUTE_LENGTH:I

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object p1, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE:[B

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object p1, Lorg/objenesis/instantiator/sun/MagicInstantiator;->NEWINSTANCE_CODE:[B

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/objenesis/ObjenesisException;

    invoke-direct {p2, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_1
    :try_start_3
    new-instance p2, Lorg/objenesis/ObjenesisException;

    invoke-direct {p2, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    new-instance p2, Lorg/objenesis/ObjenesisException;

    invoke-direct {p2, p1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_3
    throw p1
.end method


# virtual methods
.method public getInstantiator()Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->instantiator:Lorg/objenesis/instantiator/ObjectInstantiator;

    return-object v0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/objenesis/instantiator/sun/MagicInstantiator;->instantiator:Lorg/objenesis/instantiator/ObjectInstantiator;

    invoke-interface {v0}, Lorg/objenesis/instantiator/ObjectInstantiator;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

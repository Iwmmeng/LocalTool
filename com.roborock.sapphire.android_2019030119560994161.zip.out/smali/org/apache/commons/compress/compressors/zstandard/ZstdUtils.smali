.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    }
.end annotation


# static fields
.field private static final SKIPPABLE_FRAME_MAGIC:[B

.field private static final ZSTANDARD_FRAME_MAGIC:[B

.field private static volatile cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sput-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    :try_start_0
    const-string v0, "org.osgi.framework.BundleEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->setCacheZstdAvailablity(Z)V

    return-void

    nop

    :array_0
    .array-data 1
        0x28t
        -0x4bt
        0x2ft
        -0x3t
    .end array-data

    :array_1
    .array-data 1
        0x2at
        0x4dt
        0x18t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCachedZstdAvailability()Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    return-object v0
.end method

.method private static internalIsZstdCompressionAvailable()Z
    .locals 1

    :try_start_0
    const-string v0, "com.github.luben.zstd.ZstdInputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isZstdCompressionAvailable()Z
    .locals 2

    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->internalIsZstdCompressionAvailable()Z

    move-result v0

    return v0
.end method

.method public static matches([BI)Z
    .locals 5

    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    array-length v0, v0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    sget-object v3, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->ZSTANDARD_FRAME_MAGIC:[B

    aget-byte v3, v3, p1

    if-eq v0, v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    return v2

    :cond_3
    const/16 p1, 0x50

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xf0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    :goto_2
    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    array-length v0, v0

    if-ge p1, v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    aget-byte v3, p0, v0

    sget-object v4, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->SKIPPABLE_FRAME_MAGIC:[B

    aget-byte p1, v4, p1

    if-eq v3, p1, :cond_4

    return v1

    :cond_4
    move p1, v0

    goto :goto_2

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public static setCacheZstdAvailablity(Z)V
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    :goto_0
    sput-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    return-void

    :cond_0
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->cachedZstdAvailability:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    sget-object v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    if-ne p0, v0, :cond_2

    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->internalIsZstdCompressionAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils$CachedAvailability;

    goto :goto_0

    :cond_2
    return-void
.end method

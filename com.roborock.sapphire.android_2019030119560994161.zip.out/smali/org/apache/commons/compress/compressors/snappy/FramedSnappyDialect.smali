.class public final enum Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

.field public static final enum IWORK_ARCHIVE:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

.field public static final enum STANDARD:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;


# instance fields
.field private final checksumWithCompressedChunks:Z

.field private final streamIdentifier:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    const-string v1, "STANDARD"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->STANDARD:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    const-string v1, "IWORK_ARCHIVE"

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->IWORK_ARCHIVE:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->STANDARD:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->IWORK_ARCHIVE:Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->$VALUES:[Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->streamIdentifier:Z

    iput-boolean p4, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->checksumWithCompressedChunks:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->$VALUES:[Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;

    return-object v0
.end method


# virtual methods
.method hasStreamIdentifier()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->streamIdentifier:Z

    return v0
.end method

.method usesChecksumWithCompressedChunks()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyDialect;->checksumWithCompressedChunks:Z

    return v0
.end method

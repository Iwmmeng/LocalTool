.class public final enum Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

.field public static final enum COMMENT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

.field public static final enum UNICODE_EXTRA_FIELD:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    const-string v1, "COMMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->COMMENT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    const-string v1, "UNICODE_EXTRA_FIELD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->UNICODE_EXTRA_FIELD:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->COMMENT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->UNICODE_EXTRA_FIELD:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    return-object v0
.end method

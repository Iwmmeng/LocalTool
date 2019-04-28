.class abstract enum Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/CLI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

.field public static final enum EXTRACT:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

.field public static final enum LIST:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$1;

    const-string v1, "LIST"

    const-string v2, "Analysing"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->LIST:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;

    const-string v1, "EXTRACT"

    const-string v2, "Extracting"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->EXTRACT:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->LIST:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->EXTRACT:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->message:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/CLI$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .locals 1

    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->message:Ljava/lang/String;

    return-object v0
.end method

.method public abstract takeAction(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
.end method

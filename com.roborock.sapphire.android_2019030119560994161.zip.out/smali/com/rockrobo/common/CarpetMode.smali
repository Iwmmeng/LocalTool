.class public final enum Lcom/rockrobo/common/CarpetMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/common/CarpetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/common/CarpetMode;

.field public static final enum OFF:Lcom/rockrobo/common/CarpetMode;

.field public static final enum ON:Lcom/rockrobo/common/CarpetMode;

.field public static final enum UNKNOWN:Lcom/rockrobo/common/CarpetMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/rockrobo/common/CarpetMode;

    const-string v1, "ON"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/rockrobo/common/CarpetMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    new-instance v0, Lcom/rockrobo/common/CarpetMode;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2, v3}, Lcom/rockrobo/common/CarpetMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CarpetMode;->OFF:Lcom/rockrobo/common/CarpetMode;

    new-instance v0, Lcom/rockrobo/common/CarpetMode;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/rockrobo/common/CarpetMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CarpetMode;->UNKNOWN:Lcom/rockrobo/common/CarpetMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rockrobo/common/CarpetMode;

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->OFF:Lcom/rockrobo/common/CarpetMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/common/CarpetMode;->UNKNOWN:Lcom/rockrobo/common/CarpetMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockrobo/common/CarpetMode;->$VALUES:[Lcom/rockrobo/common/CarpetMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/rockrobo/common/CarpetMode;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/rockrobo/common/CarpetMode;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/rockrobo/common/CarpetMode;->OFF:Lcom/rockrobo/common/CarpetMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/rockrobo/common/CarpetMode;->ON:Lcom/rockrobo/common/CarpetMode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/rockrobo/common/CarpetMode;->UNKNOWN:Lcom/rockrobo/common/CarpetMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/common/CarpetMode;
    .locals 1

    const-class v0, Lcom/rockrobo/common/CarpetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/common/CarpetMode;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/common/CarpetMode;
    .locals 1

    sget-object v0, Lcom/rockrobo/common/CarpetMode;->$VALUES:[Lcom/rockrobo/common/CarpetMode;

    invoke-virtual {v0}, [Lcom/rockrobo/common/CarpetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/common/CarpetMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/common/CarpetMode;->value:I

    return v0
.end method

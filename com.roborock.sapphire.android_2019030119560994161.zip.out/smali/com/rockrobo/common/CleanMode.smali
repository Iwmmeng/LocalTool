.class public final enum Lcom/rockrobo/common/CleanMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/common/CleanMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/common/CleanMode;

.field public static final enum FULL:Lcom/rockrobo/common/CleanMode;

.field public static final enum MOP:Lcom/rockrobo/common/CleanMode;

.field public static final enum NONE:Lcom/rockrobo/common/CleanMode;

.field public static final enum POWER:Lcom/rockrobo/common/CleanMode;

.field public static final enum SILENT:Lcom/rockrobo/common/CleanMode;

.field public static final enum STANDARD:Lcom/rockrobo/common/CleanMode;


# instance fields
.field private final fanPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/rockrobo/common/CleanMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/rockrobo/common/CleanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    new-instance v0, Lcom/rockrobo/common/CleanMode;

    const-string v1, "MOP"

    const/4 v3, 0x1

    const/16 v4, 0x29

    invoke-direct {v0, v1, v3, v4}, Lcom/rockrobo/common/CleanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CleanMode;->MOP:Lcom/rockrobo/common/CleanMode;

    new-instance v0, Lcom/rockrobo/common/CleanMode;

    const-string v1, "SILENT"

    const/4 v4, 0x2

    const/16 v5, 0x32

    invoke-direct {v0, v1, v4, v5}, Lcom/rockrobo/common/CleanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CleanMode;->SILENT:Lcom/rockrobo/common/CleanMode;

    new-instance v0, Lcom/rockrobo/common/CleanMode;

    const-string v1, "STANDARD"

    const/4 v5, 0x3

    const/16 v6, 0x44

    invoke-direct {v0, v1, v5, v6}, Lcom/rockrobo/common/CleanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    new-instance v0, Lcom/rockrobo/common/CleanMode;

    const-string v1, "POWER"

    const/4 v6, 0x4

    const/16 v7, 0x4f

    invoke-direct {v0, v1, v6, v7}, Lcom/rockrobo/common/CleanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CleanMode;->POWER:Lcom/rockrobo/common/CleanMode;

    new-instance v0, Lcom/rockrobo/common/CleanMode;

    const-string v1, "FULL"

    const/4 v7, 0x5

    const/16 v8, 0x64

    invoke-direct {v0, v1, v7, v8}, Lcom/rockrobo/common/CleanMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/common/CleanMode;->FULL:Lcom/rockrobo/common/CleanMode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/rockrobo/common/CleanMode;

    sget-object v1, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/common/CleanMode;->MOP:Lcom/rockrobo/common/CleanMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockrobo/common/CleanMode;->SILENT:Lcom/rockrobo/common/CleanMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rockrobo/common/CleanMode;->POWER:Lcom/rockrobo/common/CleanMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rockrobo/common/CleanMode;->FULL:Lcom/rockrobo/common/CleanMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/rockrobo/common/CleanMode;->$VALUES:[Lcom/rockrobo/common/CleanMode;

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

    iput p3, p0, Lcom/rockrobo/common/CleanMode;->fanPower:I

    return-void
.end method

.method public static valueOf(I)Lcom/rockrobo/common/CleanMode;
    .locals 1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_4

    const/16 v0, 0x32

    if-eq p0, v0, :cond_3

    const/16 v0, 0x44

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/rockrobo/common/CleanMode;->NONE:Lcom/rockrobo/common/CleanMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/rockrobo/common/CleanMode;->FULL:Lcom/rockrobo/common/CleanMode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/rockrobo/common/CleanMode;->POWER:Lcom/rockrobo/common/CleanMode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    return-object p0

    :cond_3
    sget-object p0, Lcom/rockrobo/common/CleanMode;->SILENT:Lcom/rockrobo/common/CleanMode;

    return-object p0

    :cond_4
    sget-object p0, Lcom/rockrobo/common/CleanMode;->MOP:Lcom/rockrobo/common/CleanMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/common/CleanMode;
    .locals 1

    const-class v0, Lcom/rockrobo/common/CleanMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/common/CleanMode;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/common/CleanMode;
    .locals 1

    sget-object v0, Lcom/rockrobo/common/CleanMode;->$VALUES:[Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v0}, [Lcom/rockrobo/common/CleanMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/common/CleanMode;

    return-object v0
.end method


# virtual methods
.method public getFanPower()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/common/CleanMode;->fanPower:I

    return v0
.end method

.method public toStringId()I
    .locals 2

    iget v0, p0, Lcom/rockrobo/common/CleanMode;->fanPower:I

    const/16 v1, 0x29

    if-eq v0, v1, :cond_4

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    const/16 v1, 0x44

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const v0, 0x7f0a0073

    return v0

    :cond_0
    const v0, 0x7f0a012d

    return v0

    :cond_1
    const v0, 0x7f0a0130

    return v0

    :cond_2
    const v0, 0x7f0a0132

    return v0

    :cond_3
    const v0, 0x7f0a0131

    return v0

    :cond_4
    const v0, 0x7f0a012e

    return v0
.end method

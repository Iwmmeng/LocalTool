.class public final enum Lcom/rockrobo/more/cleanhistory/ItemStat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/more/cleanhistory/ItemStat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/more/cleanhistory/ItemStat;

.field public static final enum NORMAL:Lcom/rockrobo/more/cleanhistory/ItemStat;

.field public static final enum RETRIEVING:Lcom/rockrobo/more/cleanhistory/ItemStat;

.field public static final enum RETRIEV_FAILED:Lcom/rockrobo/more/cleanhistory/ItemStat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/rockrobo/more/cleanhistory/ItemStat;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/more/cleanhistory/ItemStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/more/cleanhistory/ItemStat;->NORMAL:Lcom/rockrobo/more/cleanhistory/ItemStat;

    new-instance v0, Lcom/rockrobo/more/cleanhistory/ItemStat;

    const-string v1, "RETRIEVING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/rockrobo/more/cleanhistory/ItemStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/more/cleanhistory/ItemStat;->RETRIEVING:Lcom/rockrobo/more/cleanhistory/ItemStat;

    new-instance v0, Lcom/rockrobo/more/cleanhistory/ItemStat;

    const-string v1, "RETRIEV_FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/rockrobo/more/cleanhistory/ItemStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/more/cleanhistory/ItemStat;->RETRIEV_FAILED:Lcom/rockrobo/more/cleanhistory/ItemStat;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rockrobo/more/cleanhistory/ItemStat;

    sget-object v1, Lcom/rockrobo/more/cleanhistory/ItemStat;->NORMAL:Lcom/rockrobo/more/cleanhistory/ItemStat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/more/cleanhistory/ItemStat;->RETRIEVING:Lcom/rockrobo/more/cleanhistory/ItemStat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockrobo/more/cleanhistory/ItemStat;->RETRIEV_FAILED:Lcom/rockrobo/more/cleanhistory/ItemStat;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockrobo/more/cleanhistory/ItemStat;->$VALUES:[Lcom/rockrobo/more/cleanhistory/ItemStat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/more/cleanhistory/ItemStat;
    .locals 1

    const-class v0, Lcom/rockrobo/more/cleanhistory/ItemStat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/more/cleanhistory/ItemStat;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/more/cleanhistory/ItemStat;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/cleanhistory/ItemStat;->$VALUES:[Lcom/rockrobo/more/cleanhistory/ItemStat;

    invoke-virtual {v0}, [Lcom/rockrobo/more/cleanhistory/ItemStat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/more/cleanhistory/ItemStat;

    return-object v0
.end method

.class public final enum Lcom/rockrobo/map/MapUIStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/map/MapUIStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/map/MapUIStatus;

.field public static final enum HISTORY:Lcom/rockrobo/map/MapUIStatus;

.field public static final enum MAIN:Lcom/rockrobo/map/MapUIStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/rockrobo/map/MapUIStatus;

    const-string v1, "HISTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/map/MapUIStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/map/MapUIStatus;->HISTORY:Lcom/rockrobo/map/MapUIStatus;

    new-instance v0, Lcom/rockrobo/map/MapUIStatus;

    const-string v1, "MAIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/rockrobo/map/MapUIStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/map/MapUIStatus;->MAIN:Lcom/rockrobo/map/MapUIStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rockrobo/map/MapUIStatus;

    sget-object v1, Lcom/rockrobo/map/MapUIStatus;->HISTORY:Lcom/rockrobo/map/MapUIStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/map/MapUIStatus;->MAIN:Lcom/rockrobo/map/MapUIStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/rockrobo/map/MapUIStatus;->$VALUES:[Lcom/rockrobo/map/MapUIStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/map/MapUIStatus;
    .locals 1

    const-class v0, Lcom/rockrobo/map/MapUIStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/map/MapUIStatus;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/map/MapUIStatus;
    .locals 1

    sget-object v0, Lcom/rockrobo/map/MapUIStatus;->$VALUES:[Lcom/rockrobo/map/MapUIStatus;

    invoke-virtual {v0}, [Lcom/rockrobo/map/MapUIStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/map/MapUIStatus;

    return-object v0
.end method

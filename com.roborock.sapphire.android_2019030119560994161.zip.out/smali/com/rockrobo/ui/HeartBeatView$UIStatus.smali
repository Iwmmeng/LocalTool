.class public final enum Lcom/rockrobo/ui/HeartBeatView$UIStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/HeartBeatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/ui/HeartBeatView$UIStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/ui/HeartBeatView$UIStatus;

.field public static final enum NORM:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

.field public static final enum PAUSE:Lcom/rockrobo/ui/HeartBeatView$UIStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    const-string v1, "NORM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/ui/HeartBeatView$UIStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->NORM:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    new-instance v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    const-string v1, "PAUSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/rockrobo/ui/HeartBeatView$UIStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->PAUSE:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    sget-object v1, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->NORM:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->PAUSE:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->$VALUES:[Lcom/rockrobo/ui/HeartBeatView$UIStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/ui/HeartBeatView$UIStatus;
    .locals 1

    const-class v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/ui/HeartBeatView$UIStatus;
    .locals 1

    sget-object v0, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->$VALUES:[Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    invoke-virtual {v0}, [Lcom/rockrobo/ui/HeartBeatView$UIStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    return-object v0
.end method

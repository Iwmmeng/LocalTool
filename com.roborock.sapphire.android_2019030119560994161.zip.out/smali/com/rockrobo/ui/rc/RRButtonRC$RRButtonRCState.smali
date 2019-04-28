.class public final enum Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/rc/RRButtonRC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RRButtonRCState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

.field public static final enum FORWARD:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

.field public static final enum LEFT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

.field public static final enum RIGHT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

.field public static final enum UNPRESSED:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    const-string v1, "UNPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->UNPRESSED:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    new-instance v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    const-string v1, "FORWARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->FORWARD:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    new-instance v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    const-string v1, "LEFT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->LEFT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    new-instance v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    const-string v1, "RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->RIGHT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    sget-object v1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->UNPRESSED:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->FORWARD:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->LEFT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->RIGHT:Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->$VALUES:[Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;
    .locals 1

    const-class v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;
    .locals 1

    sget-object v0, Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->$VALUES:[Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    invoke-virtual {v0}, [Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/ui/rc/RRButtonRC$RRButtonRCState;

    return-object v0
.end method

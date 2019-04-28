.class final enum Lcom/rockrobo/more/RemoteControllerActivity$RCType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/RemoteControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RCType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/more/RemoteControllerActivity$RCType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/more/RemoteControllerActivity$RCType;

.field public static final enum BUTTON:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

.field public static final enum STICK:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

.field public static final enum UNKNOWN:Lcom/rockrobo/more/RemoteControllerActivity$RCType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->UNKNOWN:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    new-instance v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    const-string v1, "BUTTON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->BUTTON:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    new-instance v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    const-string v1, "STICK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/rockrobo/more/RemoteControllerActivity$RCType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->STICK:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    sget-object v1, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->UNKNOWN:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->BUTTON:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->STICK:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->$VALUES:[Lcom/rockrobo/more/RemoteControllerActivity$RCType;

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

    iput p3, p0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->value:I

    return-void
.end method

.method static synthetic access$600(Lcom/rockrobo/more/RemoteControllerActivity$RCType;)I
    .locals 0

    iget p0, p0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->value:I

    return p0
.end method

.method public static int2RCType(I)Lcom/rockrobo/more/RemoteControllerActivity$RCType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->UNKNOWN:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->STICK:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->BUTTON:Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/more/RemoteControllerActivity$RCType;
    .locals 1

    const-class v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/more/RemoteControllerActivity$RCType;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/RemoteControllerActivity$RCType;->$VALUES:[Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    invoke-virtual {v0}, [Lcom/rockrobo/more/RemoteControllerActivity$RCType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/more/RemoteControllerActivity$RCType;

    return-object v0
.end method

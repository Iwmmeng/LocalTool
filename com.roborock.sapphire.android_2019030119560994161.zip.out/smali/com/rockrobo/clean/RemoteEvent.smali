.class public final enum Lcom/rockrobo/clean/RemoteEvent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/clean/RemoteEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_ENTER:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_EXIT:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_FORWARD:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_MAP_BACKWARD:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_MAP_FORWARD:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_MAP_TO_LEFT:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_MAP_TO_RIGHT:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_ROBOT_VIEW_POINT:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_STOP:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_TURN_LEFT:Lcom/rockrobo/clean/RemoteEvent;

.field public static final enum EVENT_TURN_RIGHT:Lcom/rockrobo/clean/RemoteEvent;


# instance fields
.field private robotCmd:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_ENTER"

    const-string v2, "user.app_rc_start"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_ENTER:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_FORWARD"

    const-string v2, "user.app_rc_forward"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_FORWARD:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_TURN_LEFT"

    const-string v2, "user.app_rc_left"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_TURN_LEFT:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_TURN_RIGHT"

    const-string v2, "user.app_rc_right"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_TURN_RIGHT:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_STOP"

    const-string v2, "user.app_rc_stop"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_STOP:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_EXIT"

    const-string v2, "user.app_rc_end"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_EXIT:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_MAP_FORWARD"

    const-string v2, "user.app_rc_move"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_MAP_FORWARD:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_MAP_BACKWARD"

    const-string v2, "user.app_rc_move"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v10, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_MAP_BACKWARD:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_MAP_TO_LEFT"

    const-string v2, "user.app_rc_move"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v11, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_MAP_TO_LEFT:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_MAP_TO_RIGHT"

    const-string v2, "user.app_rc_move"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v12, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_MAP_TO_RIGHT:Lcom/rockrobo/clean/RemoteEvent;

    new-instance v0, Lcom/rockrobo/clean/RemoteEvent;

    const-string v1, "EVENT_ROBOT_VIEW_POINT"

    const-string v2, "user.app_rc_move"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v13, v2}, Lcom/rockrobo/clean/RemoteEvent;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_ROBOT_VIEW_POINT:Lcom/rockrobo/clean/RemoteEvent;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/rockrobo/clean/RemoteEvent;

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_ENTER:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_FORWARD:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_TURN_LEFT:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_TURN_RIGHT:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_STOP:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_EXIT:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v8

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_MAP_FORWARD:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v9

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_MAP_BACKWARD:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v10

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_MAP_TO_LEFT:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v11

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_MAP_TO_RIGHT:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v12

    sget-object v1, Lcom/rockrobo/clean/RemoteEvent;->EVENT_ROBOT_VIEW_POINT:Lcom/rockrobo/clean/RemoteEvent;

    aput-object v1, v0, v13

    sput-object v0, Lcom/rockrobo/clean/RemoteEvent;->$VALUES:[Lcom/rockrobo/clean/RemoteEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/rockrobo/clean/RemoteEvent;->value:I

    iput-object p4, p0, Lcom/rockrobo/clean/RemoteEvent;->robotCmd:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lcom/rockrobo/clean/RemoteEvent;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_EXIT:Lcom/rockrobo/clean/RemoteEvent;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_STOP:Lcom/rockrobo/clean/RemoteEvent;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_TURN_RIGHT:Lcom/rockrobo/clean/RemoteEvent;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_TURN_LEFT:Lcom/rockrobo/clean/RemoteEvent;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_FORWARD:Lcom/rockrobo/clean/RemoteEvent;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/rockrobo/clean/RemoteEvent;->EVENT_ENTER:Lcom/rockrobo/clean/RemoteEvent;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/clean/RemoteEvent;
    .locals 1

    const-class v0, Lcom/rockrobo/clean/RemoteEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/clean/RemoteEvent;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/clean/RemoteEvent;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RemoteEvent;->$VALUES:[Lcom/rockrobo/clean/RemoteEvent;

    invoke-virtual {v0}, [Lcom/rockrobo/clean/RemoteEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/clean/RemoteEvent;

    return-object v0
.end method


# virtual methods
.method public getRobotCmd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockrobo/clean/RemoteEvent;->robotCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/clean/RemoteEvent;->value:I

    return v0
.end method

.class public final enum Lcom/rockrobo/clean/RobotStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/clean/RobotStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/clean/RobotStatus;

.field public static final enum BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum CHARGE_ERROR:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum CHARGING:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum CLEAN:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum DEVICE_OFFLINE:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum INITIAL:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum MALFUNCTIONING:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum PAUSE:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum PREPARE_SHUTDOWN:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum RUB_TO_DOC:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum SLEEPING:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum UPDATING:Lcom/rockrobo/clean/RobotStatus;

.field public static final enum WAITING:Lcom/rockrobo/clean/RobotStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "INITIAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->INITIAL:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "SLEEPING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "WAITING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->WAITING:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "CLEAN"

    const/4 v6, 0x5

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v6}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "BACK_TO_CHARGE"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "REMOTE_NEW"

    const/4 v8, 0x7

    invoke-direct {v0, v1, v7, v8}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "CHARGING"

    const/16 v9, 0x8

    invoke-direct {v0, v1, v8, v9}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "CHARGE_ERROR"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v9, v10}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->CHARGE_ERROR:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "PAUSE"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v10, v11}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->PAUSE:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "SPOT_CLEAN"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v11, v12}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "MALFUNCTIONING"

    const/16 v13, 0xc

    invoke-direct {v0, v1, v12, v13}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->MALFUNCTIONING:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "PREPARE_SHUTDOWN"

    const/16 v14, 0xd

    invoke-direct {v0, v1, v13, v14}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->PREPARE_SHUTDOWN:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "UPDATING"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v14, v15}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->UPDATING:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "RUB_TO_DOC"

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->RUB_TO_DOC:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "FULL_CHARGE"

    const/16 v15, 0x64

    invoke-direct {v0, v1, v14, v15}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    new-instance v0, Lcom/rockrobo/clean/RobotStatus;

    const-string v1, "DEVICE_OFFLINE"

    const/16 v15, 0x10

    const/16 v14, 0x65

    invoke-direct {v0, v1, v15, v14}, Lcom/rockrobo/clean/RobotStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->DEVICE_OFFLINE:Lcom/rockrobo/clean/RobotStatus;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/rockrobo/clean/RobotStatus;

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->INITIAL:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->WAITING:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGE_ERROR:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->PAUSE:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->MALFUNCTIONING:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v12

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->PREPARE_SHUTDOWN:Lcom/rockrobo/clean/RobotStatus;

    aput-object v1, v0, v13

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->UPDATING:Lcom/rockrobo/clean/RobotStatus;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->RUB_TO_DOC:Lcom/rockrobo/clean/RobotStatus;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->DEVICE_OFFLINE:Lcom/rockrobo/clean/RobotStatus;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/rockrobo/clean/RobotStatus;->$VALUES:[Lcom/rockrobo/clean/RobotStatus;

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

    iput p3, p0, Lcom/rockrobo/clean/RobotStatus;->value:I

    return-void
.end method

.method public static getEnum(I)Lcom/rockrobo/clean/RobotStatus;
    .locals 5

    invoke-static {}, Lcom/rockrobo/clean/RobotStatus;->values()[Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/rockrobo/clean/RobotStatus;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/clean/RobotStatus;
    .locals 1

    const-class v0, Lcom/rockrobo/clean/RobotStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/clean/RobotStatus;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/clean/RobotStatus;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/RobotStatus;->$VALUES:[Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v0}, [Lcom/rockrobo/clean/RobotStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/clean/RobotStatus;

    return-object v0
.end method


# virtual methods
.method public getDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/clean/RobotStatus$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p0}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f0a0004

    packed-switch v0, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    const v0, 0x7f0a0154

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    const v0, 0x7f0a00d7

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    const v0, 0x7f0a0216

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0a0185

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0a0116

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0a015a

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0a0010

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0a0013

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0a01ae

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0a01f2

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0a0214

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0a01f3

    goto :goto_0

    :pswitch_d
    const v0, 0x7f0a01b9

    goto :goto_0

    :pswitch_e
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_f
    const v0, 0x7f0a0015

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMapViewDescription(Landroid/content/res/Resources;Lcom/rockrobo/clean/CleanStrategy;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/clean/RobotStatus$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p0}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 p2, 0x8

    if-eq v0, p2, :cond_0

    const/16 p2, 0xf

    if-eq v0, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/RobotStatus;->getDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p2, 0x7f0a0124

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lcom/rockrobo/clean/CleanStrategy;->WALL_ALONG:Lcom/rockrobo/clean/CleanStrategy;

    if-ne p2, v0, :cond_2

    const p2, 0x7f0a0122

    goto :goto_0

    :cond_2
    const p2, 0x7f0a0125

    goto :goto_0
.end method

.method public getShortDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/rockrobo/clean/RobotStatus$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p0}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/RobotStatus;->getDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const v0, 0x7f0a01ba

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    :pswitch_1
    const v0, 0x7f0a0012

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/rockrobo/clean/RobotStatus;->value:I

    return v0
.end method

.method public isFreezing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/rockrobo/clean/RobotStatus;->isMoving()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMoving()Z
    .locals 2

    sget-object v0, Lcom/rockrobo/clean/RobotStatus$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    invoke-virtual {p0}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class synthetic Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/mainview/MainViewResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$rockrobo$clean$RobotStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/rockrobo/clean/RobotStatus;->values()[Lcom/rockrobo/clean/RobotStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    :try_start_0
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/rockrobo/ui/mainview/MainViewResourceManager$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->DEVICE_OFFLINE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

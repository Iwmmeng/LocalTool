.class synthetic Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/mainview/GLMainViewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$rockrobo$clean$RobotStatus:[I

.field static final synthetic $SwitchMap$com$rockrobo$ui$mainview$GLMainViewRenderer$RobotDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->values()[Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$ui$mainview$GLMainViewRenderer$RobotDirection:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$ui$mainview$GLMainViewRenderer$RobotDirection:[I

    sget-object v2, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->LEFT_TO_RIGHT:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    invoke-virtual {v2}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$ui$mainview$GLMainViewRenderer$RobotDirection:[I

    sget-object v3, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->RIGHT_TO_LEFT:Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;

    invoke-virtual {v3}, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$RobotDirection;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/rockrobo/clean/RobotStatus;->values()[Lcom/rockrobo/clean/RobotStatus;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    :try_start_2
    sget-object v2, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v3, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v3}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v2, Lcom/rockrobo/clean/RobotStatus;->UNKNOWN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v2}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->REMOTE_NEW:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->BACK_TO_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/rockrobo/ui/mainview/GLMainViewRenderer$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->DEVICE_OFFLINE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

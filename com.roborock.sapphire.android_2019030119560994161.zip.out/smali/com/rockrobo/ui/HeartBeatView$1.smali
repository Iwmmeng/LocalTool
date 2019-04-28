.class synthetic Lcom/rockrobo/ui/HeartBeatView$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/HeartBeatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$rockrobo$clean$RobotStatus:[I

.field static final synthetic $SwitchMap$com$rockrobo$ui$HeartBeatView$UIStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->values()[Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$ui$HeartBeatView$UIStatus:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$ui$HeartBeatView$UIStatus:[I

    sget-object v2, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->NORM:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    invoke-virtual {v2}, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$ui$HeartBeatView$UIStatus:[I

    sget-object v2, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->PAUSE:Lcom/rockrobo/ui/HeartBeatView$UIStatus;

    invoke-virtual {v2}, Lcom/rockrobo/ui/HeartBeatView$UIStatus;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/rockrobo/clean/RobotStatus;->values()[Lcom/rockrobo/clean/RobotStatus;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    :try_start_2
    sget-object v1, Lcom/rockrobo/ui/HeartBeatView$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v2, Lcom/rockrobo/clean/RobotStatus;->SLEEPING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v2}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

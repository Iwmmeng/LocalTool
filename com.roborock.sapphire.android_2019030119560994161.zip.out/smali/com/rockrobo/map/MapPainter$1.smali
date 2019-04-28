.class synthetic Lcom/rockrobo/map/MapPainter$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/map/MapPainter;
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

    sput-object v0, Lcom/rockrobo/map/MapPainter$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    :try_start_0
    sget-object v0, Lcom/rockrobo/map/MapPainter$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGE_ERROR:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/rockrobo/map/MapPainter$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->CHARGING:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/rockrobo/map/MapPainter$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->FULL_CHARGE:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

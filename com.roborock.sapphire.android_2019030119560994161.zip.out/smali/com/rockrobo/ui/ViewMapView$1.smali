.class synthetic Lcom/rockrobo/ui/ViewMapView$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/ui/ViewMapView;
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

    sput-object v0, Lcom/rockrobo/ui/ViewMapView$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    :try_start_0
    sget-object v0, Lcom/rockrobo/ui/ViewMapView$1;->$SwitchMap$com$rockrobo$clean$RobotStatus:[I

    sget-object v1, Lcom/rockrobo/clean/RobotStatus;->SPOT_CLEAN:Lcom/rockrobo/clean/RobotStatus;

    invoke-virtual {v1}, Lcom/rockrobo/clean/RobotStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

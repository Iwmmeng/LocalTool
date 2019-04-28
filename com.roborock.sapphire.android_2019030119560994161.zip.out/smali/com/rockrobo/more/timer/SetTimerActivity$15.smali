.class synthetic Lcom/rockrobo/more/timer/SetTimerActivity$15;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/timer/SetTimerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$rockrobo$common$CleanMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/rockrobo/common/CleanMode;->values()[Lcom/rockrobo/common/CleanMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/rockrobo/more/timer/SetTimerActivity$15;->$SwitchMap$com$rockrobo$common$CleanMode:[I

    :try_start_0
    sget-object v0, Lcom/rockrobo/more/timer/SetTimerActivity$15;->$SwitchMap$com$rockrobo$common$CleanMode:[I

    sget-object v1, Lcom/rockrobo/common/CleanMode;->SILENT:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/rockrobo/more/timer/SetTimerActivity$15;->$SwitchMap$com$rockrobo$common$CleanMode:[I

    sget-object v1, Lcom/rockrobo/common/CleanMode;->POWER:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/rockrobo/more/timer/SetTimerActivity$15;->$SwitchMap$com$rockrobo$common$CleanMode:[I

    sget-object v1, Lcom/rockrobo/common/CleanMode;->FULL:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/rockrobo/more/timer/SetTimerActivity$15;->$SwitchMap$com$rockrobo$common$CleanMode:[I

    sget-object v1, Lcom/rockrobo/common/CleanMode;->STANDARD:Lcom/rockrobo/common/CleanMode;

    invoke-virtual {v1}, Lcom/rockrobo/common/CleanMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

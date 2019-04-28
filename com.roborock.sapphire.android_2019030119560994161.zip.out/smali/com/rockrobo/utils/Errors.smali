.class public Lcom/rockrobo/utils/Errors;
.super Ljava/lang/Object;


# static fields
.field public static final Battery:I = 0xe

.field public static final Binfull:I = 0x284

.field public static final Bumper:I = 0x2

.field public static final Charge:I = 0xd

.field public static final Cliff:I = 0x4

.field public static final Compass:I = 0xb

.field public static final DockShade:I = 0x17

.field public static final Drop:I = 0x3

.field public static final Dustbin:I = 0x9

.field public static final Fan:I = 0x12

.field public static final Inner:I = 0xff

.field public static final MainStall:I = 0x5

.field public static final Power:I = 0xc

.field public static final SideBrush:I = 0x11

.field public static final SideStall:I = 0x6

.field public static final Strainer:I = 0xa

.field public static final Stuck:I = 0x8

.field public static final Trace:I = 0x14

.field public static final Wheel:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorContent(I)I
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x17

    if-eq p0, v0, :cond_2

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1

    const/16 v0, 0x284

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const p0, 0x7f0a003e

    return p0

    :pswitch_0
    const p0, 0x7f0a009e

    return p0

    :pswitch_1
    const p0, 0x7f0a00ad

    return p0

    :pswitch_2
    const p0, 0x7f0a007a

    return p0

    :pswitch_3
    const p0, 0x7f0a0083

    return p0

    :pswitch_4
    const p0, 0x7f0a00aa

    return p0

    :pswitch_5
    const p0, 0x7f0a008c

    return p0

    :pswitch_6
    const p0, 0x7f0a00b3

    return p0

    :pswitch_7
    const p0, 0x7f0a009b

    return p0

    :pswitch_8
    const p0, 0x7f0a00b7

    return p0

    :pswitch_9
    const p0, 0x7f0a00c0

    return p0

    :pswitch_a
    const p0, 0x7f0a00b0

    return p0

    :pswitch_b
    const p0, 0x7f0a00a7

    return p0

    :pswitch_c
    const p0, 0x7f0a0089

    return p0

    :pswitch_d
    const p0, 0x7f0a0098

    return p0

    :pswitch_e
    const p0, 0x7f0a0080

    return p0

    :cond_0
    const p0, 0x7f0a007d

    return p0

    :cond_1
    const p0, 0x7f0a00a1

    return p0

    :cond_2
    const p0, 0x7f0a0095

    return p0

    :cond_3
    const p0, 0x7f0a00ba

    return p0

    :pswitch_data_0
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getErrorMessage(I)I
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x17

    if-eq p0, v0, :cond_2

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1

    const/16 v0, 0x284

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const p0, 0x7f0a003e

    return p0

    :pswitch_0
    const p0, 0x7f0a009f

    return p0

    :pswitch_1
    const p0, 0x7f0a00ae

    return p0

    :pswitch_2
    const p0, 0x7f0a007b

    return p0

    :pswitch_3
    const p0, 0x7f0a0084

    return p0

    :pswitch_4
    const p0, 0x7f0a00ab

    return p0

    :pswitch_5
    const p0, 0x7f0a008d

    return p0

    :pswitch_6
    const p0, 0x7f0a00b4

    return p0

    :pswitch_7
    const p0, 0x7f0a009c

    return p0

    :pswitch_8
    const p0, 0x7f0a00b8

    return p0

    :pswitch_9
    const p0, 0x7f0a00c1

    return p0

    :pswitch_a
    const p0, 0x7f0a00b1

    return p0

    :pswitch_b
    const p0, 0x7f0a00a8

    return p0

    :pswitch_c
    const p0, 0x7f0a008a

    return p0

    :pswitch_d
    const p0, 0x7f0a0099

    return p0

    :pswitch_e
    const p0, 0x7f0a0081

    return p0

    :cond_0
    const p0, 0x7f0a007e

    return p0

    :cond_1
    const p0, 0x7f0a00a2

    return p0

    :cond_2
    const p0, 0x7f0a0096

    return p0

    :cond_3
    const p0, 0x7f0a00bb

    return p0

    :pswitch_data_0
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getErrorTitle(I)I
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x17

    if-eq p0, v0, :cond_2

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1

    const/16 v0, 0x284

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const p0, 0x7f0a003f

    return p0

    :pswitch_0
    const p0, 0x7f0a009d

    return p0

    :pswitch_1
    const p0, 0x7f0a00ac

    return p0

    :pswitch_2
    const p0, 0x7f0a0079

    return p0

    :pswitch_3
    const p0, 0x7f0a0082

    return p0

    :pswitch_4
    const p0, 0x7f0a00a9

    return p0

    :pswitch_5
    const p0, 0x7f0a008b

    return p0

    :pswitch_6
    const p0, 0x7f0a00b2

    return p0

    :pswitch_7
    const p0, 0x7f0a009a

    return p0

    :pswitch_8
    const p0, 0x7f0a00b6

    return p0

    :pswitch_9
    const p0, 0x7f0a00bf

    return p0

    :pswitch_a
    const p0, 0x7f0a00af

    return p0

    :pswitch_b
    const p0, 0x7f0a00a6

    return p0

    :pswitch_c
    const p0, 0x7f0a0088

    return p0

    :pswitch_d
    const p0, 0x7f0a0097

    return p0

    :pswitch_e
    const p0, 0x7f0a007f

    return p0

    :cond_0
    const p0, 0x7f0a007c

    return p0

    :cond_1
    const p0, 0x7f0a00a0

    return p0

    :cond_2
    const p0, 0x7f0a0094

    return p0

    :cond_3
    const p0, 0x7f0a00b9

    return p0

    :pswitch_data_0
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static knownErrorCode(I)Z
    .locals 1

    invoke-static {p0}, Lcom/rockrobo/utils/Errors;->getErrorMessage(I)I

    move-result p0

    const v0, 0x7f0a003e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

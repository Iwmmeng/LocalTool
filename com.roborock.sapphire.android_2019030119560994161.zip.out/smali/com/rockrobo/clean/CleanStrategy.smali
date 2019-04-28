.class public final enum Lcom/rockrobo/clean/CleanStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rockrobo/clean/CleanStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rockrobo/clean/CleanStrategy;

.field public static final enum UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

.field public static final enum WALL_ALONG:Lcom/rockrobo/clean/CleanStrategy;

.field public static final enum Z_CLEAN:Lcom/rockrobo/clean/CleanStrategy;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/rockrobo/clean/CleanStrategy;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/rockrobo/clean/CleanStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/CleanStrategy;->UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

    new-instance v0, Lcom/rockrobo/clean/CleanStrategy;

    const-string v1, "Z_CLEAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/rockrobo/clean/CleanStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/CleanStrategy;->Z_CLEAN:Lcom/rockrobo/clean/CleanStrategy;

    new-instance v0, Lcom/rockrobo/clean/CleanStrategy;

    const-string v1, "WALL_ALONG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/rockrobo/clean/CleanStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/rockrobo/clean/CleanStrategy;->WALL_ALONG:Lcom/rockrobo/clean/CleanStrategy;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/rockrobo/clean/CleanStrategy;

    sget-object v1, Lcom/rockrobo/clean/CleanStrategy;->UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rockrobo/clean/CleanStrategy;->Z_CLEAN:Lcom/rockrobo/clean/CleanStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rockrobo/clean/CleanStrategy;->WALL_ALONG:Lcom/rockrobo/clean/CleanStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/rockrobo/clean/CleanStrategy;->$VALUES:[Lcom/rockrobo/clean/CleanStrategy;

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

    iput p3, p0, Lcom/rockrobo/clean/CleanStrategy;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/rockrobo/clean/CleanStrategy;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/rockrobo/clean/CleanStrategy;->UNKNOWN:Lcom/rockrobo/clean/CleanStrategy;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/rockrobo/clean/CleanStrategy;->WALL_ALONG:Lcom/rockrobo/clean/CleanStrategy;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/rockrobo/clean/CleanStrategy;->Z_CLEAN:Lcom/rockrobo/clean/CleanStrategy;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rockrobo/clean/CleanStrategy;
    .locals 1

    const-class v0, Lcom/rockrobo/clean/CleanStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/clean/CleanStrategy;

    return-object p0
.end method

.method public static values()[Lcom/rockrobo/clean/CleanStrategy;
    .locals 1

    sget-object v0, Lcom/rockrobo/clean/CleanStrategy;->$VALUES:[Lcom/rockrobo/clean/CleanStrategy;

    invoke-virtual {v0}, [Lcom/rockrobo/clean/CleanStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockrobo/clean/CleanStrategy;

    return-object v0
.end method

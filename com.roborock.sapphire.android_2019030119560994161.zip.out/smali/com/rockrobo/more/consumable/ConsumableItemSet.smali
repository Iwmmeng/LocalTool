.class public Lcom/rockrobo/more/consumable/ConsumableItemSet;
.super Ljava/lang/Object;


# static fields
.field public static final CONSUMABLE_ITEM_CNT:I = 0x4

.field public static final CONSUMABLE_TYPE_KEY:Ljava/lang/String; = "consumableType"

.field public static final FILTER_WORK_TIME_KEY:Ljava/lang/String; = "filter_work_time"

.field public static final KEY_CONSUMABLE_ITEMS:Ljava/lang/String; = "key_consumable_items"

.field public static final KEY_DETAIL_RETRIEVED:Ljava/lang/String; = "key_detail_retrieved"

.field public static final MAIN_BRUSH_WORK_TIME_KEY:Ljava/lang/String; = "main_brush_work_time"

.field public static final SENSORS_WORK_TIME_KEY:Ljava/lang/String; = "sensor_dirty_time"

.field public static final SIDE_BRUSH_WORK_TIME_KEY:Ljava/lang/String; = "side_brush_work_time"

.field public static final THRESHOLD:I = 0x14

.field public static final TYPE_FILTER:I = 0x0

.field public static final TYPE_MAIN_BRUSH:I = 0x2

.field public static final TYPE_SENSORS:I = 0x3

.field public static final TYPE_SIDE_BRUSH:I = 0x1

.field private static consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem; = null

.field public static volatile dataRetrieved:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildConsumableDatas(Lorg/json/JSONObject;)V
    .locals 6

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/rockrobo/more/consumable/ConsumableItemSet;->setUpConsumableDatas()V

    :cond_1
    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v3

    const-string v5, "filter_work_time"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/rockrobo/more/consumable/ConsumableItem;->setUsedTotalSeconds(I)V

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v1

    const-string v1, "side_brush_work_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/consumable/ConsumableItem;->setUsedTotalSeconds(I)V

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v2

    const-string v1, "main_brush_work_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rockrobo/more/consumable/ConsumableItem;->setUsedTotalSeconds(I)V

    const-string v0, "sensor_dirty_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v4

    const-string v1, "sensor_dirty_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/rockrobo/more/consumable/ConsumableItem;->setUsedTotalSeconds(I)V

    return-void

    :cond_2
    sget-object p0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    new-instance v0, Lcom/rockrobo/more/consumable/ConsumableItem;

    invoke-direct {v0, v4, v3}, Lcom/rockrobo/more/consumable/ConsumableItem;-><init>(II)V

    aput-object v0, p0, v4

    return-void
.end method

.method public static getAllConsumableDatas()[Lcom/rockrobo/more/consumable/ConsumableItem;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    return-object v0
.end method

.method public static getConsumableData(I)Lcom/rockrobo/more/consumable/ConsumableItem;
    .locals 1

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getConsumableItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/rockrobo/more/consumable/ConsumableItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hasConsumableExpired()Z
    .locals 4

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/ConsumableItem;->expired()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/ConsumableItem;->expired()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/ConsumableItem;->expired()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/rockrobo/more/consumable/ConsumableItem;->expired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static setConsumableItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/rockrobo/more/consumable/ConsumableItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/rockrobo/more/consumable/ConsumableItem;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/rockrobo/more/consumable/ConsumableItem;

    sput-object p0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    return-void
.end method

.method public static setDetailRetrieved(Z)V
    .locals 0

    sput-boolean p0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->dataRetrieved:Z

    return-void
.end method

.method public static setUpConsumableDatas()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rockrobo/more/consumable/ConsumableItem;

    sput-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    new-instance v1, Lcom/rockrobo/more/consumable/ConsumableItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/rockrobo/more/consumable/ConsumableItem;-><init>(II)V

    aput-object v1, v0, v2

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    new-instance v1, Lcom/rockrobo/more/consumable/ConsumableItem;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/rockrobo/more/consumable/ConsumableItem;-><init>(II)V

    aput-object v1, v0, v3

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    new-instance v1, Lcom/rockrobo/more/consumable/ConsumableItem;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/rockrobo/more/consumable/ConsumableItem;-><init>(II)V

    aput-object v1, v0, v3

    sget-object v0, Lcom/rockrobo/more/consumable/ConsumableItemSet;->consumableItems:[Lcom/rockrobo/more/consumable/ConsumableItem;

    new-instance v1, Lcom/rockrobo/more/consumable/ConsumableItem;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/rockrobo/more/consumable/ConsumableItem;-><init>(II)V

    aput-object v1, v0, v3

    return-void
.end method

.class public Lcom/rockrobo/more/cleanhistory/ChildItemHolder;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_CHILD_ITEMS:Ljava/lang/String; = "child_items"

.field public static final KEY_CURRENT_ITEM_INDEX:Ljava/lang/String; = "current_item_index"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static childItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;"
        }
    .end annotation
.end field

.field private static currentItemIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addChildItem(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 2

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getChildItem(I)Lcom/rockrobo/more/cleanhistory/ChildItem;
    .locals 2

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rockrobo/more/cleanhistory/ChildItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getChildItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCurrentChildItem()Lcom/rockrobo/more/cleanhistory/ChildItem;
    .locals 3

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    if-eqz v1, :cond_1

    sget v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->currentItemIndex:I

    sget-object v2, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    sget v2, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->currentItemIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rockrobo/more/cleanhistory/ChildItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCurrentItemIndex()I
    .locals 2

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->currentItemIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized retainRecords(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-virtual {v2}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setChildItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sput-object p0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sput-object p0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->childItems:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCurrentItemIndex(I)V
    .locals 1

    const-class v0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/rockrobo/more/cleanhistory/ChildItemHolder;->currentItemIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

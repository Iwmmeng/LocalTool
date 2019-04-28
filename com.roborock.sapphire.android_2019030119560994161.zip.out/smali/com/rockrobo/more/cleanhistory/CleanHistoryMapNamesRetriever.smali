.class public Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final failMsg:I

.field private final presenter:Lcom/rockrobo/presenter/RobotPresenterI;

.field private final successMsg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/rockrobo/presenter/RobotPresenterI;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    iput p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->successMsg:I

    iput p3, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->failMsg:I

    return-void
.end method


# virtual methods
.method public retrieve(Ljava/util/List;)Lcom/rockrobo/more/cleanhistory/ChildItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;)",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;"
        }
    .end annotation

    sget-object v0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "childItems:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockrobo/more/cleanhistory/ChildItem;

    invoke-virtual {v0}, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapPresent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/rockrobo/more/cleanhistory/ChildItem;->isMapRetrieveFailed()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child item map present:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/rockrobo/more/cleanhistory/ChildItem;->mapPresent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child item map failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/rockrobo/more/cleanhistory/ChildItem;->isMapRetrieveFailed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->retrieveOneMap(Lcom/rockrobo/more/cleanhistory/ChildItem;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public retrieveOneMap(Lcom/rockrobo/more/cleanhistory/ChildItem;)V
    .locals 3

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->presenter:Lcom/rockrobo/presenter/RobotPresenterI;

    invoke-virtual {p1}, Lcom/rockrobo/more/cleanhistory/ChildItem;->getStartTime()I

    move-result p1

    iget v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->successMsg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryMapNamesRetriever;->failMsg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/rockrobo/presenter/RobotPresenterI;->loadCleanHistoryMapName(ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

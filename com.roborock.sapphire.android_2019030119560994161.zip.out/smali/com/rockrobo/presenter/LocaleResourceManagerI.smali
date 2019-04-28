.class public interface abstract Lcom/rockrobo/presenter/LocaleResourceManagerI;
.super Ljava/lang/Object;


# virtual methods
.method public abstract exit()V
.end method

.method public abstract readCleanHistoryDetail()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readCleanHistorySummary()Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;
.end method

.method public abstract saveCleanHistoryDetail(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rockrobo/more/cleanhistory/ChildItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveCleanHistorySummary(Lcom/rockrobo/more/cleanhistory/CleanHistorySummaryData;)V
.end method

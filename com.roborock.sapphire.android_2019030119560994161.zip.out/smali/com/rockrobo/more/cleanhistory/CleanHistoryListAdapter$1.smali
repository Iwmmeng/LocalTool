.class Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

    iput p2, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$1;->this$0:Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;

    check-cast p1, Landroid/widget/TextView;

    iget v1, p0, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter$1;->val$position:I

    invoke-static {v0, p1, v1}, Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;->access$000(Lcom/rockrobo/more/cleanhistory/CleanHistoryListAdapter;Landroid/widget/TextView;I)V

    return-void
.end method

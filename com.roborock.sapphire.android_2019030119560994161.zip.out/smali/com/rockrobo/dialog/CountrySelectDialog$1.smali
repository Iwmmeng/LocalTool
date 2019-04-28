.class Lcom/rockrobo/dialog/CountrySelectDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/dialog/CountrySelectDialog;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/dialog/CountrySelectDialog;


# direct methods
.method constructor <init>(Lcom/rockrobo/dialog/CountrySelectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    long-to-int p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$002(Lcom/rockrobo/dialog/CountrySelectDialog;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$100(Lcom/rockrobo/dialog/CountrySelectDialog;)Lcom/rockrobo/dialog/CountryListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p2}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$000(Lcom/rockrobo/dialog/CountrySelectDialog;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rockrobo/dialog/CountryListAdapter;->setSelectStrId(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$200(Lcom/rockrobo/dialog/CountrySelectDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0x9186d71

    if-eq p2, p3, :cond_3

    const/16 p3, 0xc81

    if-eq p2, p3, :cond_2

    const/16 p3, 0xe43

    if-eq p2, p3, :cond_1

    const/16 p3, 0xe54

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "sg"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string p2, "ru"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string p2, "de"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string p2, "us_true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const p2, 0x7f0a004f

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$000(Lcom/rockrobo/dialog/CountrySelectDialog;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$300(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$400(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$000(Lcom/rockrobo/dialog/CountrySelectDialog;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p2, 0x7f0a0053

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$300(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$400(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$500(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$600(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$000(Lcom/rockrobo/dialog/CountrySelectDialog;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$300(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$400(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$500(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$600(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$500(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    iget-object p1, p0, Lcom/rockrobo/dialog/CountrySelectDialog$1;->this$0:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-static {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->access$600(Lcom/rockrobo/dialog/CountrySelectDialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/rockrobo/clean/CleanActivity$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/clean/CleanActivity;->showCountrySelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;

.field final synthetic val$dialog:Lcom/rockrobo/dialog/CountrySelectDialog;


# direct methods
.method constructor <init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/dialog/CountrySelectDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$14;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iput-object p2, p0, Lcom/rockrobo/clean/CleanActivity$14;->val$dialog:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$14;->val$dialog:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-virtual {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->getUserCountry()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/rockrobo/clean/CleanActivity;->access$1300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected country code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/rockrobo/common/RobotInfo;->setUserCountry(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$14;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$2500(Lcom/rockrobo/clean/CleanActivity;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$14;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-static {p1}, Lcom/rockrobo/clean/CleanActivity;->access$2600(Lcom/rockrobo/clean/CleanActivity;)V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$14;->val$dialog:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-virtual {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->dismiss()V

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$14;->this$0:Lcom/rockrobo/clean/CleanActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rockrobo/clean/CleanActivity;->access$2702(Lcom/rockrobo/clean/CleanActivity;Z)Z

    return-void
.end method

.class Lcom/rockrobo/clean/CleanActivity$15;
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

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$15;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iput-object p2, p0, Lcom/rockrobo/clean/CleanActivity$15;->val$dialog:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/clean/CleanActivity$15;->val$dialog:Lcom/rockrobo/dialog/CountrySelectDialog;

    invoke-virtual {p1}, Lcom/rockrobo/dialog/CountrySelectDialog;->dismiss()V

    return-void
.end method

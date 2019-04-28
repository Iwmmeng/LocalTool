.class Lcom/rockrobo/more/robotsetup/MopAlertDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rockrobo/more/robotsetup/MopAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/robotsetup/MopAlertDialog;


# direct methods
.method constructor <init>(Lcom/rockrobo/more/robotsetup/MopAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/robotsetup/MopAlertDialog$1;->this$0:Lcom/rockrobo/more/robotsetup/MopAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rockrobo/more/robotsetup/MopAlertDialog$1;->this$0:Lcom/rockrobo/more/robotsetup/MopAlertDialog;

    invoke-virtual {p1}, Lcom/rockrobo/more/robotsetup/MopAlertDialog;->dismiss()V

    return-void
.end method

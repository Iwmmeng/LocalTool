.class Lcom/rockrobo/clean/CleanActivity$MainViewTouchListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rockrobo/ui/mainview/MapButtonClickListenerI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/clean/CleanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/clean/CleanActivity;


# direct methods
.method private constructor <init>(Lcom/rockrobo/clean/CleanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/CleanActivity$MainViewTouchListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockrobo/clean/CleanActivity;Lcom/rockrobo/clean/CleanActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/CleanActivity$MainViewTouchListener;-><init>(Lcom/rockrobo/clean/CleanActivity;)V

    return-void
.end method


# virtual methods
.method public mapButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/rockrobo/clean/CleanActivity$MainViewTouchListener;->this$0:Lcom/rockrobo/clean/CleanActivity;

    iget-object v0, v0, Lcom/rockrobo/clean/CleanActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

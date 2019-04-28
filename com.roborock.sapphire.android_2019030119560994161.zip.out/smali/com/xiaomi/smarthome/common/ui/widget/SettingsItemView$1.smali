.class Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->setType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;

    iget-boolean p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelected:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelected:Z

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;

    iget-boolean v0, v0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mSelected:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->setSelect(Z)V

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnSelectedListener:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$OnSelectedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;

    iget-object p1, p1, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;->mOnSelectedListener:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$OnSelectedListener;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView;

    invoke-interface {p1, v0}, Lcom/xiaomi/smarthome/common/ui/widget/SettingsItemView$OnSelectedListener;->onSelected(Landroid/view/View;)V

    :cond_0
    return-void
.end method

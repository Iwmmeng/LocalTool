.class Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

.field final synthetic val$button:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;->this$0:Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup;

    iput-object p2, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;->val$button:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;->val$button:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/xiaomi/smarthome/common/ui/widget/XmRadioGroup$1;->val$button:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

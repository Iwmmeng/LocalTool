.class Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UseButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

.field private final voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;


# direct methods
.method public constructor <init>(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick enter!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$700(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Lcom/rockrobo/more/voicepackage/VoiceItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Don\'t allow 2 parallel downloading"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$400(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f0a022a

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->instance()Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/smarthome/device/api/XmPluginHostApi;->getApiLevel()I

    move-result p1

    const/16 v1, 0x1d

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$400(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0a0235

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0a0234

    const v2, 0x7f0a00e0

    invoke-static {p1, v0, v1, v2}, Lcom/rockrobo/xmplugin/utils/DialogUtils;->doAlert(Landroid/app/Activity;Ljava/lang/Integer;II)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget-object v1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-static {p1, v1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$702(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)Lcom/rockrobo/more/voicepackage/VoiceItem;

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoiceItem;->isDefaultVoicePackage()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use system default voice package id:"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-virtual {v2}, Lcom/rockrobo/more/voicepackage/VoiceItem;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$802(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;I)I

    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    iget-object v0, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->voiceItem:Lcom/rockrobo/more/voicepackage/VoiceItem;

    invoke-static {p1, v0}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$900(Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;Lcom/rockrobo/more/voicepackage/VoiceItem;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use voice package id:"

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter$UseButtonOnClickListener;->this$0:Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;

    invoke-virtual {p1}, Lcom/rockrobo/more/voicepackage/VoicePackageListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.class public Lcom/xiaomi/smarthome/common/plug/utils/ToastUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/smarthome/common/plug/utils/ToastUtils;->showToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static showToast(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/xiaomi/smarthome/common/plug/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/xiaomi/smarthome/common/plug/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object p0
.end method

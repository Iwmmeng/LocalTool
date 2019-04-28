.class public Lcom/rockrobo/clean/RawFileLoadAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field public volatile licenseContent:Ljava/lang/String;

.field public volatile loadComplete:Z

.field public volatile loadFailed:Z

.field public volatile privacyPolicyContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/clean/RawFileLoadAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->licenseContent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->privacyPolicyContent:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->loadComplete:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->loadFailed:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private readLicenseContentFromRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "cn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x7f090000

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "us_true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f090004

    goto :goto_0

    :cond_1
    const-string v0, "sg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0x7f090003

    goto :goto_0

    :cond_2
    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x7f090001

    goto :goto_0

    :cond_3
    const-string v0, "ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const v1, 0x7f090002

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/rockrobo/utils/RRFileUtils;->readUtf8StringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readPrivacyPolicyFromRaw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "cn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f090006

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "us_true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f09000a

    goto :goto_0

    :cond_1
    const-string v0, "sg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0x7f090009

    goto :goto_0

    :cond_2
    const-string v0, "de"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x7f090007

    goto :goto_0

    :cond_3
    const-string v0, "ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const v1, 0x7f090008

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/rockrobo/utils/RRFileUtils;->readUtf8StringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->readLicenseContentFromRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->licenseContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->handler:Landroid/os/Handler;

    const/16 v3, 0xd7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->readPrivacyPolicyFromRaw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->privacyPolicyContent:Ljava/lang/String;

    iget-object p1, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->handler:Landroid/os/Handler;

    const/16 v1, 0xd8

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->loadComplete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v0, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->loadFailed:Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/RawFileLoadAsyncTask;->handler:Landroid/os/Handler;

    return-void
.end method

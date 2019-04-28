.class public Lcom/rockrobo/clean/URLDownloadAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/net/URL;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public volatile downloadComplete:Z

.field public volatile downloadFailed:Z

.field private handler:Landroid/os/Handler;

.field public volatile licenseContent:Ljava/lang/String;

.field public volatile privacyPolicyContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "roborock.vacuum.e2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/rockrobo/clean/URLDownloadAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->licenseContent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->privacyPolicyContent:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->downloadComplete:Z

    iput-boolean v0, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->downloadFailed:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/rockrobo/clean/URLDownloadAsyncTask;->doInBackground([Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/rockrobo/utils/RRUtils;->downloadHTMLString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->licenseContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->handler:Landroid/os/Handler;

    const/16 v2, 0xd7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/rockrobo/utils/RRUtils;->downloadHTMLString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->privacyPolicyContent:Ljava/lang/String;

    iget-object p1, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->handler:Landroid/os/Handler;

    const/16 v0, 0xd8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v1, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->downloadComplete:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->downloadFailed:Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/rockrobo/clean/URLDownloadAsyncTask;->handler:Landroid/os/Handler;

    return-void
.end method

.class Lcom/google/ads/interactivemedia/v3/internal/ii$c;
.super Landroid/os/AsyncTask;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->d:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->e:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->g(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->h(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/kf;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/kf;

    const-string v2, "a.3.9.0"

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ii;->d(Lcom/google/ads/interactivemedia/v3/internal/ii;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ke;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/kf;-><init>(Lcom/google/ads/interactivemedia/v3/internal/kb;)V

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/kf;)Lcom/google/ads/interactivemedia/v3/internal/kf;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->h(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/kf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/kf;->a()Lcom/google/ads/interactivemedia/v3/internal/kb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->d(Lcom/google/ads/interactivemedia/v3/internal/ii;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->d(Lcom/google/ads/interactivemedia/v3/internal/ii;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->d:Ljava/lang/String;

    const-string v1, "adid"

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->d(Lcom/google/ads/interactivemedia/v3/internal/ii;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "advertising_id"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->d:Ljava/lang/String;

    const-string v1, "afai"

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->e:Ljava/lang/String;

    const-string v1, "limit_ad_tracking"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "0"

    goto :goto_1

    :cond_2
    const-string p1, "1"

    :goto_1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->f:Ljava/lang/String;
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "IMASDK"

    const-string v1, "Failed to get advertising ID."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->d:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->e:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->f:Ljava/lang/String;

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->b:Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->i(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->j(Lcom/google/ads/interactivemedia/v3/internal/ii;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ii;->k(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ii;->l(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/ii$b;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/ii;->d(Lcom/google/ads/interactivemedia/v3/internal/ii;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/ii;->m(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/jw;->a(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/data/TestingConfiguration;)Z

    move-result v5

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->f:Ljava/lang/String;

    move-object v6, p1

    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/impl/data/l;->createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/internal/ii$b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/l;

    move-result-object p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jc;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->requestStream:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/jc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/jc$b;Lcom/google/ads/interactivemedia/v3/internal/jc$c;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->b(Lcom/google/ads/interactivemedia/v3/internal/ii;)Lcom/google/ads/interactivemedia/v3/internal/jd;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jd;->b(Lcom/google/ads/interactivemedia/v3/internal/jc;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ii$c;->a(Ljava/lang/String;)V

    return-void
.end method

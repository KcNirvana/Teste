.class Lcom/miui/common/h/c;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aCs:Lcom/miui/common/h/b;


# direct methods
.method private constructor <init>(Lcom/miui/common/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/h/c;->aCs:Lcom/miui/common/h/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/common/h/b;Lcom/miui/common/h/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/h/c;-><init>(Lcom/miui/common/h/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/h/c;->aCs:Lcom/miui/common/h/b;

    invoke-static {v1}, Lcom/miui/common/h/b;->aNp(Lcom/miui/common/h/b;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/miui/common/h/c;->aCs:Lcom/miui/common/h/b;

    invoke-static {v0}, Lcom/miui/common/h/b;->aNq(Lcom/miui/common/h/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/h/c;->aCs:Lcom/miui/common/h/b;

    invoke-static {v0}, Lcom/miui/common/h/b;->aNo(Lcom/miui/common/h/b;)Ljava/lang/ref/SoftReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

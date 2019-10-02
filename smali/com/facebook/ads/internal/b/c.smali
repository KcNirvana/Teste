.class public abstract Lcom/facebook/ads/internal/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/u/c$b;


# static fields
.field private static final i:Ljava/lang/String;

.field private static final j:Landroid/os/Handler;

.field private static k:Lcom/facebook/ads/internal/u/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static l:Lcom/facebook/ads/internal/adapters/d;


# instance fields
.field volatile a:Z

.field protected final b:Landroid/content/Context;

.field protected c:Lcom/facebook/ads/internal/adapters/a;

.field d:Landroid/view/View;

.field e:Lcom/facebook/ads/internal/adapters/AdAdapter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public f:Lcom/facebook/ads/internal/adapters/AdAdapter;

.field public final g:Lcom/facebook/ads/internal/s/c;

.field public final h:Lcom/facebook/ads/internal/b/a;

.field private final m:Lcom/facebook/ads/internal/u/c;

.field private final n:Lcom/facebook/ads/internal/adapters/d;

.field private o:Lcom/facebook/ads/internal/m/c;

.field private p:Lcom/facebook/ads/internal/u/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/facebook/ads/internal/w/b/c;->a()V

    const-class v0, Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/b/c;->i:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/internal/b/c;->j:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/c;->h:Lcom/facebook/ads/internal/b/a;

    sget-object p1, Lcom/facebook/ads/internal/b/c;->k:Lcom/facebook/ads/internal/u/c;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/facebook/ads/internal/b/c;->k:Lcom/facebook/ads/internal/u/c;

    :goto_0
    iput-object p1, p0, Lcom/facebook/ads/internal/b/c;->m:Lcom/facebook/ads/internal/u/c;

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/facebook/ads/internal/u/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/facebook/ads/internal/u/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/facebook/ads/internal/b/c;->m:Lcom/facebook/ads/internal/u/c;

    invoke-virtual {p1, p0}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/u/c$b;)V

    sget-object p1, Lcom/facebook/ads/internal/b/c;->l:Lcom/facebook/ads/internal/adapters/d;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/facebook/ads/internal/b/c;->l:Lcom/facebook/ads/internal/adapters/d;

    :goto_2
    iput-object p1, p0, Lcom/facebook/ads/internal/b/c;->n:Lcom/facebook/ads/internal/adapters/d;

    goto :goto_3

    :cond_1
    new-instance p1, Lcom/facebook/ads/internal/adapters/d;

    invoke-direct {p1}, Lcom/facebook/ads/internal/adapters/d;-><init>()V

    goto :goto_2

    :goto_3
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    sget-object p2, Lcom/facebook/ads/internal/b/c;->i:Ljava/lang/String;

    const-string v0, "Failed to initialize CookieManager."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_4
    iget-object p1, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/n/a;->b(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/s/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/s/c;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/b/c;->g:Lcom/facebook/ads/internal/s/c;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/c;Lcom/facebook/ads/internal/m/c;)Lcom/facebook/ads/internal/m/c;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/c;->o:Lcom/facebook/ads/internal/m/c;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/b/c;)V
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/b/c;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->o:Lcom/facebook/ads/internal/m/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/c;->e()Lcom/facebook/ads/internal/m/a;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/facebook/ads/internal/b/c;->c:Lcom/facebook/ads/internal/adapters/a;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    :goto_0
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/facebook/ads/internal/m/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/b/c;->n:Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/m/d;->b()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/ads/internal/adapters/d;->a(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/b/c;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adapter does not exist: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/c;->i()V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/internal/b/c;->h:Lcom/facebook/ads/internal/b/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/b/a;->a()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v2

    invoke-interface {v3}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v4

    if-eq v2, v4, :cond_2

    iget-object p0, p0, Lcom/facebook/ads/internal/b/c;->c:Lcom/facebook/ads/internal/adapters/a;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/internal/b/c;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "data"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/m/a;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "definition"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "placementId"

    iget-object v6, p0, Lcom/facebook/ads/internal/b/c;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v6, v6, Lcom/facebook/ads/internal/b/a;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "requestTime"

    invoke-virtual {v2}, Lcom/facebook/ads/internal/m/d;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data_model_type"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/m/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/c;->p:Lcom/facebook/ads/internal/u/b;

    if-nez v2, :cond_3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v1, "environment is empty"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    iget-object p0, p0, Lcom/facebook/ads/internal/b/c;->c:Lcom/facebook/ads/internal/adapters/a;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/ads/internal/adapters/AdAdapter;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/facebook/ads/internal/adapters/AdAdapter;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/m/a;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/AdAdapter;",
            "Lcom/facebook/ads/internal/m/c;",
            "Lcom/facebook/ads/internal/m/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Lcom/facebook/ads/internal/adapters/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/c;->c:Lcom/facebook/ads/internal/adapters/a;

    return-void
.end method

.method public declared-synchronized a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/c;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/b/c$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/b/c$3;-><init>(Lcom/facebook/ads/internal/b/c;Lcom/facebook/ads/internal/protocol/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/facebook/ads/internal/u/f;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/c;->c()Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "FBAudienceNetwork"

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/protocol/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/c;->j()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/b/c$1;-><init>(Lcom/facebook/ads/internal/b/c;Lcom/facebook/ads/internal/u/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/facebook/ads/internal/protocol/g;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/b/c;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v2, v2, Lcom/facebook/ads/internal/b/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ads/internal/b/c;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v3, v3, Lcom/facebook/ads/internal/b/a;->b:Lcom/facebook/ads/internal/protocol/e;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/facebook/ads/internal/protocol/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/e;)V
    :try_end_0
    .catch Lcom/facebook/ads/internal/protocol/b; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/c;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/internal/b/a;->a(Landroid/content/Context;Lcom/facebook/ads/internal/protocol/g;)Lcom/facebook/ads/internal/u/b;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/b/c;->p:Lcom/facebook/ads/internal/u/b;

    iget-object p1, p0, Lcom/facebook/ads/internal/b/c;->m:Lcom/facebook/ads/internal/u/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->p:Lcom/facebook/ads/internal/u/b;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/u/c;->a(Lcom/facebook/ads/internal/u/b;)V

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/b;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/facebook/ads/internal/b/c;->a:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/b/c;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/b/c;->m:Lcom/facebook/ads/internal/u/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/u/c;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/c;->d:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/b/c;->a:Z

    return-void
.end method

.method public b()Lcom/facebook/ads/internal/m/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->o:Lcom/facebook/ads/internal/m/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->o:Lcom/facebook/ads/internal/m/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method c()Lcom/facebook/ads/internal/protocol/a;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->h:Lcom/facebook/ads/internal/b/a;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/a;->d:Ljava/util/EnumSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/facebook/ads/internal/protocol/a;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->CLEAR_TEXT_SUPPORT_NOT_ALLOWED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method d()Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    const-string v2, "cache"

    sget v3, Lcom/facebook/ads/internal/w/h/b;->W:I

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Cleartext http is not allowed."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    :cond_2
    return v0
.end method

.method public e()V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    const-string v1, "api"

    sget v2, Lcom/facebook/ads/internal/w/h/b;->e:I

    new-instance v3, Lcom/facebook/ads/internal/protocol/b;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_START:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v5, "Adapter is null on startAd"

    invoke-direct {v3, v4, v5}, Lcom/facebook/ads/internal/protocol/b;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->c:Lcom/facebook/ads/internal/adapters/a;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/b/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->b:Landroid/content/Context;

    const-string v1, "api"

    sget v2, Lcom/facebook/ads/internal/w/h/b;->c:I

    new-instance v3, Lcom/facebook/ads/internal/protocol/b;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v5, "ad already started"

    invoke-direct {v3, v4, v5}, Lcom/facebook/ads/internal/protocol/b;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->c:Lcom/facebook/ads/internal/adapters/a;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->AD_ALREADY_STARTED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getClientToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->g:Lcom/facebook/ads/internal/s/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/c;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    invoke-interface {v1}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getClientToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/s/c;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/b/c;->a:Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/b/c;->a()V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/b/c;->a(Z)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->o:Lcom/facebook/ads/internal/m/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->o:Lcom/facebook/ads/internal/m/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->o:Lcom/facebook/ads/internal/m/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c;->o:Lcom/facebook/ads/internal/m/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/c;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method declared-synchronized i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/ads/internal/b/c;->j:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/internal/b/c$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/b/c$2;-><init>(Lcom/facebook/ads/internal/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/b/c;->j:Landroid/os/Handler;

    return-object v0
.end method

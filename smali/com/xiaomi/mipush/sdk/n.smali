.class public Lcom/xiaomi/mipush/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/xiaomi/mipush/sdk/n;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GeoFenceRegMessageProcessor."

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/xiaomi/j/a/aj;Z)Lcom/xiaomi/j/a/n;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/k;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/k;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :try_start_0
    new-instance v1, Lcom/xiaomi/j/a/n;

    invoke-direct {v1}, Lcom/xiaomi/j/a/n;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/j/a/aj;->m()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;[B)V
    :try_end_0
    .catch Lb/a/a/f; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lb/a/a/f;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Z)Lcom/xiaomi/j/a/w;
    .locals 4

    new-instance v1, Lcom/xiaomi/j/a/w;

    invoke-direct {v1}, Lcom/xiaomi/j/a/w;-><init>()V

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/h;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/j/a/n;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/w;->a(Ljava/util/Set;)Lcom/xiaomi/j/a/w;

    return-object v1
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/n;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Lcom/xiaomi/mipush/sdk/n;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/mipush/sdk/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Lcom/xiaomi/mipush/sdk/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Lcom/xiaomi/mipush/sdk/n;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/n;->a:Lcom/xiaomi/mipush/sdk/n;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/j/a/aj;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    sget-object v1, Lcom/xiaomi/j/a/s;->K:Lcom/xiaomi/j/a/s;

    iget-object v1, v1, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    iget-object v1, v0, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v2, "permission_to_location"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    return-void
.end method

.method private a(Lcom/xiaomi/j/a/n;)V
    .locals 5

    invoke-static {p1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v0

    new-instance v1, Lcom/xiaomi/j/a/aj;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/w;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/xiaomi/j/a/s;->J:Lcom/xiaomi/j/a/s;

    iget-object v2, v2, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aj;->a([B)Lcom/xiaomi/j/a/aj;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor. report package not exist geo_fencing id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaomi/j/a/n;ZZ)V
    .locals 5

    invoke-static {p1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v1

    new-instance v2, Lcom/xiaomi/j/a/aj;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/w;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    sget-object v0, Lcom/xiaomi/j/a/s;->E:Lcom/xiaomi/j/a/s;

    iget-object v0, v0, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-virtual {v2, v1}, Lcom/xiaomi/j/a/aj;->a([B)Lcom/xiaomi/j/a/aj;

    if-eqz p3, :cond_0

    const-string v0, "permission_to_location"

    sget-object v1, Lcom/xiaomi/push/service/ax;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/j/a/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor. report geo_fencing id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v0, "geo_reg"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  isUnauthorized:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/j/a/s;->G:Lcom/xiaomi/j/a/s;

    iget-object v0, v0, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "geo_unreg"

    goto :goto_1
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "1"

    const-string v0, "__geo_local_cache"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Lcom/xiaomi/j/a/aj;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/j/a/aj;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/n;->a(Ljava/util/Map;)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/k;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/j/a/aj;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/n;->d(Lcom/xiaomi/j/a/aj;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/aj;Z)Lcom/xiaomi/j/a/n;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor. registration convert geofence object failed notification_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/aj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/k;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1, v6, v6}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/n;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/j/a/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/b/a/a/a;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/n;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0, v1, v6, v7}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/n;ZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/h;->a(Lcom/xiaomi/j/a/n;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeoFenceRegMessageProcessor. insert a new geofence failed about geo_id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/xiaomi/mipush/sdk/o;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/xiaomi/mipush/sdk/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mipush/sdk/o;->a(Lcom/xiaomi/j/a/n;)Z

    invoke-direct {p0, v1, v6, v7}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/n;ZZ)V

    const-string v0, "GeoFenceRegMessageProcessor. receive geo reg notification"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/j/a/aj;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/n;->d(Lcom/xiaomi/j/a/aj;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/aj;Z)Lcom/xiaomi/j/a/n;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoFenceRegMessageProcessor. unregistration convert geofence object failed notification_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/aj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/k;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v1, v4, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/n;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/j/a/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/b/a/a/a;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/n;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    invoke-direct {p0, v1, v4, v4}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/n;ZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/h;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/h;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/h;->c(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeoFenceRegMessageProcessor. delete a geofence about geo_id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " falied"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/j;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/j;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/push/service/j;->b(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeoFenceRegMessageProcessor. delete all geofence messages about geo_id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lcom/xiaomi/mipush/sdk/o;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/xiaomi/mipush/sdk/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/mipush/sdk/o;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1, v4, v4}, Lcom/xiaomi/mipush/sdk/n;->a(Lcom/xiaomi/j/a/n;ZZ)V

    const-string v0, "GeoFenceRegMessageProcessor. receive geo unreg notification"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c(Lcom/xiaomi/j/a/aj;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/k;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/n;->d(Lcom/xiaomi/j/a/aj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/k;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/k;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    iget-object v2, p1, Lcom/xiaomi/j/a/aj;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/b/a/a/a;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/n;->a(Z)Lcom/xiaomi/j/a/w;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v1

    new-instance v2, Lcom/xiaomi/j/a/aj;

    const-string v3, "-1"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    sget-object v3, Lcom/xiaomi/j/a/s;->I:Lcom/xiaomi/j/a/s;

    iget-object v3, v3, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-virtual {v2, v1}, Lcom/xiaomi/j/a/aj;->a([B)Lcom/xiaomi/j/a/aj;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/n;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeoFenceRegMessageProcessor. sync_geo_data. geos size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/j/a/w;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

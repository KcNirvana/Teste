.class public Lcom/alipay/apmobilesecuritysdk/c/c;
.super Ljava/lang/Object;
.source "DeviceInfoManager.java"


# static fields
.field private static a:Lcom/alipay/apmobilesecuritysdk/c/c;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/apmobilesecuritysdk/f/a",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/c/c;->a:Lcom/alipay/apmobilesecuritysdk/c/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/alipay/apmobilesecuritysdk/c/c;
    .locals 2

    sget-object v0, Lcom/alipay/apmobilesecuritysdk/c/c;->a:Lcom/alipay/apmobilesecuritysdk/c/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/apmobilesecuritysdk/c/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/c/c;->a:Lcom/alipay/apmobilesecuritysdk/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/apmobilesecuritysdk/c/c;

    invoke-direct {v0}, Lcom/alipay/apmobilesecuritysdk/c/c;-><init>()V

    sput-object v0, Lcom/alipay/apmobilesecuritysdk/c/c;->a:Lcom/alipay/apmobilesecuritysdk/c/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/apmobilesecuritysdk/c/c;->a:Lcom/alipay/apmobilesecuritysdk/c/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/b;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/e;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/c/d;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/a;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/b;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/e;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-static {p1}, Lcom/alipay/apmobilesecuritysdk/c/d;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/a;->b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/c;->c(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :try_start_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/apmobilesecuritysdk/f/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/f/a;->a()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    const-string/jumbo v2, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/apmobilesecuritysdk/f/a",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/c;->c(Landroid/content/Context;Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/apmobilesecuritysdk/c/c;->d(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/c/c;->b:Ljava/util/Map;

    return-object v0
.end method

.class public Lcom/miui/securityscan/scanner/y;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static DF:Lcom/miui/securityscan/scanner/y;


# instance fields
.field private DE:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/y;->DE:Ljava/util/Map;

    invoke-static {}, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->values()[Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/miui/securityscan/scanner/y;->DE:Ljava/util/Map;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/securityscan/scanner/y;
    .locals 2

    const-class v1, Lcom/miui/securityscan/scanner/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/scanner/y;->DF:Lcom/miui/securityscan/scanner/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/y;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/y;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/y;->DF:Lcom/miui/securityscan/scanner/y;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/y;->DF:Lcom/miui/securityscan/scanner/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Fe(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;Ljava/lang/String;Lcom/miui/securityscan/scanner/e;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/y;->DE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Ff(Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/y;->DE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public Fg()V
    .locals 5

    invoke-static {}, Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;->values()[Lcom/miui/securityscan/scanner/OptimizeManager$OptimizeCard;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/miui/securityscan/scanner/y;->DE:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

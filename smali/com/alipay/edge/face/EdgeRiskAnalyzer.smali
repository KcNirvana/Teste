.class public Lcom/alipay/edge/face/EdgeRiskAnalyzer;
.super Ljava/lang/Object;
.source "EdgeRiskAnalyzer.java"


# static fields
.field private static instance:Lcom/alipay/edge/face/EdgeRiskAnalyzer;


# instance fields
.field private edgeRiskService:Lcom/alipay/edge/EdgeRiskService;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->instance:Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/alipay/edge/EdgeRiskService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->edgeRiskService:Lcom/alipay/edge/EdgeRiskService;

    iput-object p1, p0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->edgeRiskService:Lcom/alipay/edge/EdgeRiskService;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/edge/face/EdgeRiskAnalyzer;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->instance:Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    if-nez v1, :cond_3

    const-class v1, Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->instance:Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    if-nez v2, :cond_2

    if-nez p0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/alipay/edge/impl/EdgeRiskServiceImpl;

    invoke-direct {v2}, Lcom/alipay/edge/impl/EdgeRiskServiceImpl;-><init>()V

    if-nez v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    invoke-direct {v0, p0, v2}, Lcom/alipay/edge/face/EdgeRiskAnalyzer;-><init>(Landroid/content/Context;Lcom/alipay/edge/EdgeRiskService;)V

    invoke-virtual {v2, p0}, Lcom/alipay/edge/EdgeRiskService;->initialize(Landroid/content/Context;)I

    sput-object v0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->instance:Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    sget-object v0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->instance:Lcom/alipay/edge/face/EdgeRiskAnalyzer;

    goto :goto_0
.end method


# virtual methods
.method public getRiskResult(Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/edge/face/EdgeRiskResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/alipay/edge/face/EdgeRiskResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->edgeRiskService:Lcom/alipay/edge/EdgeRiskService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/edge/EdgeRiskService;->getRiskResult(Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/edge/face/EdgeRiskResult;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public postUserAction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/edge/face/EdgeRiskAnalyzer;->edgeRiskService:Lcom/alipay/edge/EdgeRiskService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/edge/EdgeRiskService;->postUserAction(Ljava/lang/String;Ljava/util/Map;)I

    return-void
.end method

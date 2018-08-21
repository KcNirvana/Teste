.class public Lcom/alipay/mobile/common/d/a;
.super Ljava/lang/Object;
.source "CacheSet.java"


# static fields
.field private static b:Lcom/alipay/mobile/common/d/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/d/a;->b:Lcom/alipay/mobile/common/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/common/d/a;
    .locals 3

    const-class v1, Lcom/alipay/mobile/common/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/d/a;->b:Lcom/alipay/mobile/common/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/d/a;

    invoke-direct {v0}, Lcom/alipay/mobile/common/d/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/d/a;->b:Lcom/alipay/mobile/common/d/a;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/d/a;->b:Lcom/alipay/mobile/common/d/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/d/a;->a:Landroid/content/Context;

    sget-object v0, Lcom/alipay/mobile/common/d/a;->b:Lcom/alipay/mobile/common/d/a;
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
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/d/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

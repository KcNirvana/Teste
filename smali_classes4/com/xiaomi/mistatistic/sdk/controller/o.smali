.class public Lcom/xiaomi/mistatistic/sdk/controller/o;
.super Ljava/lang/Object;
.source "RegionDomainManager.java"


# static fields
.field private static a:Z = true

.field private static b:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String; = "INTL"

.field private static f:Ljava/lang/String; = "data.mistat.intl.xiaomi.com"

.field private static g:Ljava/lang/String; = "test.data.mistat.xiaomi.srv"

.field private static h:Ljava/lang/String; = "abtest.mistat.intl.xiaomi.com"

.field private static i:Ljava/lang/String; = "data.mistat.intl.xiaomi.com"

.field private static k:Ljava/lang/String;

.field private static l:Landroid/os/Handler;

.field private static final n:Lcom/xiaomi/mistatistic/sdk/controller/o;


# instance fields
.field private j:Ljava/lang/String;

.field private m:Lcom/xiaomi/mistatistic/sdk/controller/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/o;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->n:Lcom/xiaomi/mistatistic/sdk/controller/o;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    const-string v1, "CN"

    const-string v2, "data.mistat.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    const-string v1, "INTL"

    const-string v2, "data.mistat.intl.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    const-string v1, "IN"

    const-string v2, "data.mistat.india.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    const-string v1, "CN"

    const-string v2, "test.data.mistat.xiaomi.srv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    const-string v1, "INTL"

    const-string v2, "test.data.mistat.xiaomi.srv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    const-string v1, "IN"

    const-string v2, "test.data.mistat.xiaomi.srv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    const-string v1, "CN"

    const-string v2, "abtest.mistat.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    const-string v1, "INTL"

    const-string v2, "abtest.mistat.intl.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    const-string v1, "IN"

    const-string v2, "abtest.mistat.intl.xiaomi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->j:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->n:Lcom/xiaomi/mistatistic/sdk/controller/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/controller/o;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->n:Lcom/xiaomi/mistatistic/sdk/controller/o;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/mistatistic/sdk/controller/o;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    const-string v1, "region-url"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "map_test"

    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "abtest-url"

    invoke-virtual {v0, v3, p1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->j:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->j:Ljava/lang/String;

    :goto_0
    if-eqz v1, :cond_2

    sget-object v4, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v4, v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sput-object v3, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    sget-object v4, Lcom/xiaomi/mistatistic/sdk/controller/o;->k:Ljava/lang/String;

    const-string v5, "/map_domain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/mistatistic/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_4

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sput-object v3, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->g:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->k:Ljava/lang/String;

    const-string v4, "/map_domain_test"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_6

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sput-object v3, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->h:Ljava/lang/String;

    :cond_5
    sget-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->k:Ljava/lang/String;

    const-string v1, "/map_domain_ab_test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private static d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "RDM"

    const-string v2, "can not init in main thread!"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string v1, "init method must be executed in main thread!"

    invoke-direct {v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "RDM"

    const-string v1, "[getABTestDomain] domain is null."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abtest.mistat.intl.xiaomi.com"

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "http://"

    goto :goto_0

    :cond_2
    const-string p2, "https://"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "RDM"

    const-string v1, "[getDomain] domain is null."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string p3, "test.data.mistat.xiaomi.srv"

    :goto_1
    move-object v0, p3

    goto :goto_2

    :cond_2
    const-string p3, "data.mistat.intl.xiaomi.com"

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    const-string p2, "http://"

    goto :goto_3

    :cond_4
    const-string p2, "https://"

    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/o;->d()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;-><init>()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->k:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "CN"

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    const-string p1, "data.mistat.xiaomi.com"

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    const-string p1, "test.data.mistat.xiaomi.srv"

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->g:Ljava/lang/String;

    const-string p1, "abtest.mistat.xiaomi.com"

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->h:Ljava/lang/String;

    const-string p1, "data.mistat.xiaomi.com"

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "region"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RDM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SystemProperty Region]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->k:Ljava/lang/String;

    const-string v1, "/map_domain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->k:Ljava/lang/String;

    const-string v2, "/map_domain_test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->k:Ljava/lang/String;

    const-string v3, "/map_domain_ab_test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/utils/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->i:Ljava/lang/String;

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->g:Ljava/lang/String;

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->h:Ljava/lang/String;

    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->l:Landroid/os/Handler;

    const-string v0, "RDM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[file-dir]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[CurrentRegion]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[domain]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[domain_test]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[domain_abtest]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaomi/mistatistic/sdk/controller/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->m:Lcom/xiaomi/mistatistic/sdk/controller/p;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Lcom/xiaomi/mistatistic/sdk/controller/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/o$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/o;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Lcom/xiaomi/mistatistic/sdk/controller/e$a;)V

    return-void
.end method

.method declared-synchronized b(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/mistatistic/sdk/MiStatException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "RDM"

    const-string v0, "region has already been updated successfully today!"

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "RDM"

    const-string v0, "Network is disconnected,retry later when network is connected!"

    invoke-static {p1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "abtest-url"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "region-url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/o;->i:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-instance v3, Lcom/xiaomi/mistatistic/sdk/controller/o$1;

    invoke-direct {v3, p0}, Lcom/xiaomi/mistatistic/sdk/controller/o$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/o;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZLcom/xiaomi/mistatistic/sdk/controller/l$b;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "RDM"

    const-string v2, "[IOException]:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_7
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/o;->c()Lcom/xiaomi/mistatistic/sdk/controller/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Landroid/content/Context;)V

    throw v0

    :cond_2
    const-string p1, "RDM"

    const-string v0, "can not request map in the main thread!"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/xiaomi/mistatistic/sdk/MiStatException;

    const-string v0, "can not request map in the main thread!"

    invoke-direct {p1, v0}, Lcom/xiaomi/mistatistic/sdk/MiStatException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->i:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->g:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->h:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "INTL"

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->b:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->f:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->i:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->g:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->d:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/controller/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/o;->h:Ljava/lang/String;

    const-string v0, "RDM"

    const-string v1, "unknown region,set to unknown(singapore)\'s domain"

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "region"

    invoke-static {v1, v2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public c()Lcom/xiaomi/mistatistic/sdk/controller/p;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->m:Lcom/xiaomi/mistatistic/sdk/controller/p;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/o;->j:Ljava/lang/String;

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "key_update_time"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/v;->a(J)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/v;->d()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "Cannot clone instance of this class"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    const-string p1, "INTL"

    invoke-virtual {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/o;->a(Ljava/lang/String;)V

    return-void
.end method

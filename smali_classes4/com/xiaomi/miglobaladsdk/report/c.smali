.class Lcom/xiaomi/miglobaladsdk/report/c;
.super Ljava/lang/Object;
.source "AdReportTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/report/c$a;,
        Lcom/xiaomi/miglobaladsdk/report/c$g;,
        Lcom/xiaomi/miglobaladsdk/report/c$b;,
        Lcom/xiaomi/miglobaladsdk/report/c$c;,
        Lcom/xiaomi/miglobaladsdk/report/c$e;,
        Lcom/xiaomi/miglobaladsdk/report/c$d;,
        Lcom/xiaomi/miglobaladsdk/report/c$f;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private b:Lcom/xiaomi/analytics/Analytics;

.field private c:Lcom/xiaomi/miglobaladsdk/report/c$a;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Lcom/xiaomi/miglobaladsdk/report/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miglobaladsdk/report/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/report/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/report/c;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/report/c;->f:Lcom/xiaomi/miglobaladsdk/report/a;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/report/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/report/c;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/analytics/Analytics;)Lcom/xiaomi/analytics/Analytics;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/report/c;->b:Lcom/xiaomi/analytics/Analytics;

    return-object p1
.end method

.method private a(Lcom/xiaomi/miglobaladsdk/report/a;)Lcom/xiaomi/miglobaladsdk/report/c$a;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/xiaomi/miglobaladsdk/report/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v2, "PAGE_VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "GET_AD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "LOAD_AD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "LOAD_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "NO_FILL_REASON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "DSP_LOAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/c$d;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/report/c$d;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V

    goto :goto_3

    :cond_3
    const-string v2, "VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "CLICK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "REWARDED_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v2, "CLOSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "VIDEO_FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    const-string v2, "DISLIKE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/c$b;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/report/c$b;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V

    goto :goto_3

    :cond_6
    const-string v2, "UPDATE_CONFIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/c$g;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/report/c$g;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V

    goto :goto_3

    :cond_7
    :goto_0
    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/c$c;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/report/c$c;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V

    goto :goto_3

    :cond_8
    :goto_1
    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/c$e;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/report/c$e;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V

    goto :goto_3

    :cond_9
    :goto_2
    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/c$f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/report/c$f;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)V

    :cond_a
    :goto_3
    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/a;)Lcom/xiaomi/miglobaladsdk/report/c$a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Lcom/xiaomi/miglobaladsdk/report/a;)Lcom/xiaomi/miglobaladsdk/report/c$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/report/c;Lcom/xiaomi/miglobaladsdk/report/c$a;)Lcom/xiaomi/miglobaladsdk/report/c$a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/report/c;->c:Lcom/xiaomi/miglobaladsdk/report/c$a;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/report/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/report/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/report/a;)V
    .locals 5

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/utils/Commons;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/utils/b/a/a;->a()Lcom/xiaomi/utils/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/utils/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->k:Ljava/lang/String;

    const v0, 0x1d524

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->h:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->m:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->getAppVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/utils/Commons;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/utils/Commons;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->H:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/utils/Commons;->getMiuiVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->p:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/utils/Commons;->getBuildType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->o:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/utils/Commons;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->j:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/utils/Commons;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->q:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/utils/Commons;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/utils/Commons;->getMNC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/utils/Commons;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/utils/Commons;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->l:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->i:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/utils/b/a/a;->a()Lcom/xiaomi/utils/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/utils/b/a/a;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->n:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->J:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->J:Ljava/lang/String;

    :cond_1
    iget-object v1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->J:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "unknown"

    iput-object v1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->J:Ljava/lang/String;

    :cond_2
    iput v4, p2, Lcom/xiaomi/miglobaladsdk/report/a;->K:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/zeus/utils/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->K:I

    :cond_3
    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object p1

    iget-object v1, p2, Lcom/xiaomi/miglobaladsdk/report/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput v0, p2, Lcom/xiaomi/miglobaladsdk/report/a;->O:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/report/c;Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/report/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/report/c;->a(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/report/a;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/miglobaladsdk/report/a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/report/c;->f:Lcom/xiaomi/miglobaladsdk/report/a;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/miglobaladsdk/report/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/report/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/analytics/Analytics;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/report/c;->b:Lcom/xiaomi/analytics/Analytics;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/miglobaladsdk/report/c;)Lcom/xiaomi/miglobaladsdk/report/c$a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/report/c;->c:Lcom/xiaomi/miglobaladsdk/report/c$a;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    sget-object v0, Lcom/xiaomi/miglobaladsdk/report/c;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/report/c$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/miglobaladsdk/report/c$1;-><init>(Lcom/xiaomi/miglobaladsdk/report/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

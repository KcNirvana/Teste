.class public Lcom/xiaomi/analytics/Analytics;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile boL:Lcom/xiaomi/analytics/Analytics;

.field private static volatile boM:Z


# instance fields
.field private boK:Lcom/xiaomi/analytics/LoggerFactory;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/analytics/Analytics;->boM:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/analytics/LoggerFactory;

    invoke-direct {v0}, Lcom/xiaomi/analytics/LoggerFactory;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/Analytics;->boK:Lcom/xiaomi/analytics/LoggerFactory;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/j;->bLi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/BaseLogger;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xiaomi/analytics/Analytics;->bMV()V

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/d;->bLv(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/d;->bLw()V

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/k;->bLo(Landroid/content/Context;)V

    return-void
.end method

.method private static bMS(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic bMT(Lcom/xiaomi/analytics/Analytics;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static bMU(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/analytics/internal/util/j;->bLj(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/m;->bLs([Landroid/content/pm/Signature;)Z

    move-result v0

    const-string/jumbo v1, "Analytics"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%s is platform signatures : %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private bMV()V
    .locals 2

    new-instance v0, Lcom/xiaomi/analytics/Tracker;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/Tracker;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/Analytics;
    .locals 2

    const-class v1, Lcom/xiaomi/analytics/Analytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/Analytics;->boL:Lcom/xiaomi/analytics/Analytics;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/analytics/Analytics;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/Analytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/Analytics;->boL:Lcom/xiaomi/analytics/Analytics;

    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/Analytics;->boL:Lcom/xiaomi/analytics/Analytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isUpdateEnable()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/analytics/Analytics;->boM:Z

    return v0
.end method

.method public static setUpdateEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/analytics/Analytics;->boM:Z

    return-void
.end method

.method public static setUseSystemAnalyticsOnly(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/a/b;->bKt(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Analytics"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "system analytics is not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "Analytics"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "use system analytics only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/analytics/internal/o;->bLU()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/analytics/Analytics;->setUpdateEnable(Z)V

    return-void
.end method

.method public static trackSystem(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    .locals 3

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->bMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/analytics/Analytics;->bMU(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "App is not allowed to use this method to track event, except system or platform signed apps. Use getTracker instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.analytics"

    const-string/jumbo v2, "com.miui.analytics.EventService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key"

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "content"

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "extra"

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "appid"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    instance-of v1, p2, Lcom/xiaomi/analytics/AdAction;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "type"

    sget-object v2, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_2
    const-string/jumbo p1, ""

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public addJavascriptInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public deleteAllEvents()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/o;->bMr()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/a/a;->deleteAllEvents(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getClientExtraSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Analytics;->getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientExtraSync(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/xiaomi/analytics/Analytics$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/analytics/Analytics$1;-><init>(Lcom/xiaomi/analytics/Analytics;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/c;->a(Ljava/lang/Runnable;)V

    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/analytics/internal/o;->bMr()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/xiaomi/analytics/internal/a/a;->bKn(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->boK:Lcom/xiaomi/analytics/LoggerFactory;

    const-class v1, Lcom/xiaomi/analytics/Tracker;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/analytics/LoggerFactory;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/xiaomi/analytics/BaseLogger;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/Tracker;

    return-object v0
.end method

.method public setDebugOn(Z)V
    .locals 1

    sput-boolean p1, Lcom/xiaomi/analytics/internal/util/b;->bnB:Z

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/o;->bMr()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/analytics/internal/a/a;->setDebugOn(Z)V

    :cond_0
    return-void
.end method

.method public setDontUseSystemAnalytics(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/analytics/internal/o;->setDontUseSystemAnalytics(Z)V

    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/o;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/analytics/internal/o;->setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V

    return-void
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->bNd(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Analytics"

    const-string/jumbo v2, "JavascriptInterface trackAdAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public trackAdAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/analytics/Actions;->newAdAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->bNd(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Analytics"

    const-string/jumbo v2, "JavascriptInterface trackAdAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public trackCustomAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/xiaomi/analytics/Actions;->newCustomAction()Lcom/xiaomi/analytics/CustomAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->bNd(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Analytics"

    const-string/jumbo v2, "JavascriptInterface trackCustomAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/analytics/Actions;->newEventAction(Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->bNd(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Analytics"

    const-string/jumbo v2, "JavascriptInterface trackEventAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public trackEventAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p2, p3}, Lcom/xiaomi/analytics/Actions;->newEventAction(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/Action;->bNd(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/xiaomi/analytics/Analytics;->getTracker(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/Tracker;->track(Lcom/xiaomi/analytics/Action;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Analytics"

    const-string/jumbo v2, "JavascriptInterface trackEventAction exception:"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/analytics/internal/util/b;->bKJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

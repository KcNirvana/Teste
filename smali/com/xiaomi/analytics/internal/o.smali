.class public Lcom/xiaomi/analytics/internal/o;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static boF:Z

.field private static volatile boq:Lcom/xiaomi/analytics/internal/o;

.field private static bos:Ljava/lang/Object;

.field private static final bot:I


# instance fields
.field private boA:Ljava/lang/Runnable;

.field private boB:Lcom/xiaomi/analytics/internal/g;

.field private boC:Lcom/xiaomi/analytics/internal/a/b;

.field private boD:Landroid/os/Handler;

.field private boE:J

.field private boG:Ljava/lang/Runnable;

.field private boH:Ljava/lang/Runnable;

.field private boI:J

.field private boo:Z

.field private bop:Lcom/xiaomi/analytics/internal/a;

.field private bor:Lcom/xiaomi/analytics/PolicyConfiguration;

.field private volatile bou:Z

.field private bov:Lcom/xiaomi/analytics/internal/a/a;

.field private bow:Z

.field private box:Landroid/os/HandlerThread;

.field private boy:Lcom/xiaomi/analytics/internal/a/a;

.field private boz:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/xiaomi/analytics/internal/util/a;->bnx:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/xiaomi/analytics/internal/o;->bot:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/analytics/internal/o;->boF:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/analytics/internal/o;->bor:Lcom/xiaomi/analytics/PolicyConfiguration;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/analytics/internal/o;->boE:J

    iput-boolean v2, p0, Lcom/xiaomi/analytics/internal/o;->bou:Z

    iput-boolean v2, p0, Lcom/xiaomi/analytics/internal/o;->bow:Z

    iput-object v3, p0, Lcom/xiaomi/analytics/internal/o;->boy:Lcom/xiaomi/analytics/internal/a/a;

    new-instance v0, Lcom/xiaomi/analytics/internal/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/h;-><init>(Lcom/xiaomi/analytics/internal/o;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boH:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/analytics/internal/l;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/l;-><init>(Lcom/xiaomi/analytics/internal/o;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boG:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/analytics/internal/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/n;-><init>(Lcom/xiaomi/analytics/internal/o;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boB:Lcom/xiaomi/analytics/internal/g;

    new-instance v0, Lcom/xiaomi/analytics/internal/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/b;-><init>(Lcom/xiaomi/analytics/internal/o;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boz:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/xiaomi/analytics/internal/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/e;-><init>(Lcom/xiaomi/analytics/internal/o;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boA:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/analytics/internal/util/j;->bLi(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "connectivity"

    sput-object v0, Lcom/xiaomi/analytics/internal/o;->bos:Ljava/lang/Object;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "api-sdkmgr"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->box:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->box:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->box:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boD:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/analytics/internal/a/b;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boC:Lcom/xiaomi/analytics/internal/a/b;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/f;->getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->boB:Lcom/xiaomi/analytics/internal/g;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/internal/f;->bLI(Lcom/xiaomi/analytics/internal/g;)V

    sget-object v0, Lcom/xiaomi/analytics/internal/util/c;->bnD:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->boG:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bLT()Lcom/xiaomi/analytics/internal/a/a;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v1, "analytics_core"

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    aget-object v4, v2, v0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bML()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaomi/analytics/internal/util/e;->bKN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bML()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bME()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bML()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/analytics/internal/o;->bMq(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v1, "Not suitable for Android P, so delete it"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v6

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bML()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/analytics/internal/util/g;->bKR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/analytics/internal/a/e;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bML()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/analytics/internal/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "loadAssetAnalytics exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v6
.end method

.method public static bLU()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/analytics/internal/o;->boF:Z

    return-void
.end method

.method static synthetic bLV(Lcom/xiaomi/analytics/internal/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/o;->bou:Z

    return p1
.end method

.method static synthetic bLW(Lcom/xiaomi/analytics/internal/o;)I
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMJ()I

    move-result v0

    return v0
.end method

.method private bLX()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "analytics_api"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "pld"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SdkManager"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "getPreviousLoadDex exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method static synthetic bLY(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boC:Lcom/xiaomi/analytics/internal/a/b;

    return-object v0
.end method

.method static synthetic bMA(Lcom/xiaomi/analytics/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMN()V

    return-void
.end method

.method static synthetic bMB(Lcom/xiaomi/analytics/internal/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/o;->boo:Z

    return v0
.end method

.method static synthetic bMC(Lcom/xiaomi/analytics/internal/o;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMF()Z

    move-result v0

    return v0
.end method

.method static synthetic bMD(Lcom/xiaomi/analytics/internal/o;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/analytics/internal/o;->bMM(J)V

    return-void
.end method

.method private bME()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bMF()Z
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMJ()I

    move-result v0

    iget-boolean v1, p0, Lcom/xiaomi/analytics/internal/o;->boo:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/analytics/internal/o;->boI:J

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/analytics/internal/util/a;->bKE(JJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bMG(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "analytics_api"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pld"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "savePreviousLoadDex exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic bMH(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/o;->bMK(Lcom/xiaomi/analytics/internal/a/a;)V

    return-void
.end method

.method static synthetic bMI(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMz()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    return-object v0
.end method

.method private bMJ()I
    .locals 1

    sget-boolean v0, Lcom/xiaomi/analytics/internal/util/b;->bnB:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/xiaomi/analytics/internal/o;->bot:I

    goto :goto_0
.end method

.method private bMK(Lcom/xiaomi/analytics/internal/a/a;)V
    .locals 3

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bop:Lcom/xiaomi/analytics/internal/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    sget-boolean v1, Lcom/xiaomi/analytics/internal/util/b;->bnB:Z

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/a/a;->setDebugOn(Z)V

    const-string/jumbo v0, "SdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Analytics module loaded, version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    invoke-interface {v2}, Lcom/xiaomi/analytics/internal/a/a;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bop:Lcom/xiaomi/analytics/internal/a;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    invoke-interface {v0, v1}, Lcom/xiaomi/analytics/internal/a;->onSdkCorePrepared(Lcom/xiaomi/analytics/internal/a/a;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bor:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bor:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/internal/a/a;)V

    :cond_1
    return-void
.end method

.method private bML()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "analytics_asset.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bMM(J)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boD:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->boA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boD:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->boA:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v1, "post dex init task"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bMN()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bLX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boy:Lcom/xiaomi/analytics/internal/a/a;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMQ()V

    return-void
.end method

.method static synthetic bMO(Lcom/xiaomi/analytics/internal/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/o;->bow:Z

    return v0
.end method

.method static synthetic bMP(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)Lcom/xiaomi/analytics/internal/a/a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/o;->boy:Lcom/xiaomi/analytics/internal/a/a;

    return-object p1
.end method

.method private bMQ()V
    .locals 3

    const-string/jumbo v0, "SdkManager"

    const-string/jumbo v1, "register screen receiver"

    invoke-static {v0, v1}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/o;->boz:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic bMR(Lcom/xiaomi/analytics/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMt()V

    return-void
.end method

.method static synthetic bMa(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boy:Lcom/xiaomi/analytics/internal/a/a;

    return-object v0
.end method

.method static synthetic bMb(Lcom/xiaomi/analytics/internal/o;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/internal/o;->bMG(Z)V

    return-void
.end method

.method static synthetic bMc(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMu()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    return-object v0
.end method

.method private bMd()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "analytics.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bMf()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/internal/o;->bos:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bMg(Lcom/xiaomi/analytics/internal/o;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bMh(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    return-object v0
.end method

.method static synthetic bMi(Lcom/xiaomi/analytics/internal/o;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boz:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic bMj(Lcom/xiaomi/analytics/internal/o;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/analytics/internal/o;->boI:J

    return-wide p1
.end method

.method static synthetic bMk(Lcom/xiaomi/analytics/internal/o;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/o;->boo:Z

    return p1
.end method

.method private bMl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/asset_lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bMm()Lcom/xiaomi/analytics/internal/o;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/internal/o;->boq:Lcom/xiaomi/analytics/internal/o;

    return-object v0
.end method

.method static synthetic bMn(Lcom/xiaomi/analytics/internal/o;Lcom/xiaomi/analytics/internal/a/a;)Lcom/xiaomi/analytics/internal/a/a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    return-object p1
.end method

.method private bMo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bMp()V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_1
    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/h;->bLa(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/h;->bLa(Ljava/io/File;)V

    goto :goto_1
.end method

.method private bMq(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v1, "SdkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " verName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/analytics/internal/m;

    invoke-direct {v1, v0}, Lcom/xiaomi/analytics/internal/m;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/analytics/internal/m;

    const-string/jumbo v2, "2.7.3"

    invoke-direct {v0, v2}, Lcom/xiaomi/analytics/internal/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/analytics/internal/m;->bLS(Lcom/xiaomi/analytics/internal/m;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_0

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "isApkSuitableForAndroidPOrAbove exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v4
.end method

.method static synthetic bMs(Lcom/xiaomi/analytics/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMp()V

    return-void
.end method

.method private declared-synchronized bMt()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/xiaomi/analytics/internal/util/a;->bnA:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/analytics/internal/o;->boE:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/internal/o;->boE:J

    sget-object v0, Lcom/xiaomi/analytics/internal/util/c;->bnD:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->boH:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private bMu()Lcom/xiaomi/analytics/internal/a/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boC:Lcom/xiaomi/analytics/internal/a/b;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boC:Lcom/xiaomi/analytics/internal/a/b;

    invoke-virtual {v0}, Lcom/xiaomi/analytics/internal/a/b;->bKr()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->boC:Lcom/xiaomi/analytics/internal/a/b;

    return-object v0
.end method

.method static synthetic bMv(Lcom/xiaomi/analytics/internal/o;)Lcom/xiaomi/analytics/internal/a/a;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bLT()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bMw(Lcom/xiaomi/analytics/internal/o;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bMx()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "analytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bMy()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/analytics/internal/o;->boF:Z

    return v0
.end method

.method private bMz()Lcom/xiaomi/analytics/internal/a/a;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMd()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bME()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMd()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/analytics/internal/o;->bMq(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SdkManager"

    const-string/jumbo v2, "Not suitable for Android P, so delete it"

    invoke-static {v1, v2}, Lcom/xiaomi/analytics/internal/util/b;->bKG(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v4

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/xiaomi/analytics/internal/util/g;->bKR(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/analytics/internal/a/e;

    iget-object v2, p0, Lcom/xiaomi/analytics/internal/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaomi/analytics/internal/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "loadLocalAnalytics exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v4
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/o;
    .locals 2

    const-class v1, Lcom/xiaomi/analytics/internal/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/internal/o;->boq:Lcom/xiaomi/analytics/internal/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/analytics/internal/o;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/internal/o;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/o;->boq:Lcom/xiaomi/analytics/internal/o;

    :cond_0
    sget-object v0, Lcom/xiaomi/analytics/internal/o;->boq:Lcom/xiaomi/analytics/internal/o;
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
.method public bLZ()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/analytics/internal/o;->bou:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/analytics/internal/o;->bMt()V

    :cond_0
    return-void
.end method

.method public bMe(Lcom/xiaomi/analytics/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/o;->bop:Lcom/xiaomi/analytics/internal/a;

    return-void
.end method

.method public bMr()Lcom/xiaomi/analytics/internal/a/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    return-object v0
.end method

.method public getVersion()Lcom/xiaomi/analytics/internal/m;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/o;->bMr()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/o;->bMr()Lcom/xiaomi/analytics/internal/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/analytics/internal/a/a;->getVersion()Lcom/xiaomi/analytics/internal/m;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/analytics/internal/m;

    const-string/jumbo v1, "0.0.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/analytics/internal/m;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setDontUseSystemAnalytics(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/analytics/internal/o;->bow:Z

    return-void
.end method

.method public setPolicyConfiguration(Lcom/xiaomi/analytics/PolicyConfiguration;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/analytics/internal/o;->bor:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bor:Lcom/xiaomi/analytics/PolicyConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/analytics/internal/o;->bor:Lcom/xiaomi/analytics/PolicyConfiguration;

    iget-object v1, p0, Lcom/xiaomi/analytics/internal/o;->bov:Lcom/xiaomi/analytics/internal/a/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/PolicyConfiguration;->apply(Lcom/xiaomi/analytics/internal/a/a;)V

    :cond_0
    return-void
.end method

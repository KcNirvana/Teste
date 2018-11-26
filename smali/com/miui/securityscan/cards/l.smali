.class public Lcom/miui/securityscan/cards/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BB:Landroid/net/Uri;

.field public static final BC:Landroid/net/Uri;

.field private static final BS:Landroid/net/Uri;

.field private static final BT:Landroid/net/Uri;


# instance fields
.field public BD:I

.field public BE:Z

.field public BF:Z

.field public BG:Ljava/lang/String;

.field public BH:Z

.field public BI:J

.field public BJ:Z

.field public BK:Z

.field public BL:J

.field public BM:Z

.field public BN:Z

.field public BO:Z

.field public BP:Ljava/util/List;

.field public BQ:Z

.field public BR:Z

.field private BU:Ljava/util/Map;

.field private BV:Lcom/miui/securityscan/cards/h;

.field private BW:Lcom/miui/securityscan/cards/n;

.field private BX:Lcom/miui/securityscan/cards/m;

.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/cards/l;->BS:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/miui/securityscan/cards/l;->BT:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "key_garbage_danger_in_flag"

    invoke-static {v0}, Lmiui/provider/ExtraSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/cards/l;->BT:Landroid/net/Uri;

    const-string/jumbo v0, "key_has_app_update"

    invoke-static {v0}, Lmiui/provider/ExtraSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/cards/l;->BS:Landroid/net/Uri;

    const-string/jumbo v0, "key_antivirus_danger"

    invoke-static {v0}, Lmiui/provider/ExtraSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/cards/l;->BC:Landroid/net/Uri;

    const-string/jumbo v0, "key_antivirus_safe"

    invoke-static {v0}, Lmiui/provider/ExtraSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/cards/l;->BB:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/miui/securityscan/cards/l;->BH:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/securityscan/cards/l;->BD:I

    iput-boolean v1, p0, Lcom/miui/securityscan/cards/l;->BE:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/cards/l;->BQ:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/cards/l;->BN:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/cards/l;->BO:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/cards/l;->BJ:Z

    iput-boolean v3, p0, Lcom/miui/securityscan/cards/l;->BK:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/securityscan/cards/l;->BL:J

    iput-boolean v3, p0, Lcom/miui/securityscan/cards/l;->BM:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/cards/l;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/securityscan/cards/l;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/cards/l;->BP:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/cards/l;->BU:Ljava/util/Map;

    new-instance v0, Lcom/miui/securityscan/cards/m;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/cards/m;-><init>(Lcom/miui/securityscan/cards/l;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/l;->BX:Lcom/miui/securityscan/cards/m;

    new-instance v0, Lcom/miui/securityscan/cards/n;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/cards/n;-><init>(Lcom/miui/securityscan/cards/l;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/l;->BW:Lcom/miui/securityscan/cards/n;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.action.NETWORK_POLICY_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/cards/l;->BX:Lcom/miui/securityscan/cards/m;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/cards/l;->BT:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/securityscan/cards/l;->BW:Lcom/miui/securityscan/cards/n;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/cards/l;->BS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/securityscan/cards/l;->BW:Lcom/miui/securityscan/cards/n;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/cards/l;->BC:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/securityscan/cards/l;->BW:Lcom/miui/securityscan/cards/n;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/cards/l;->BB:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/securityscan/cards/l;->BW:Lcom/miui/securityscan/cards/n;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BX:Lcom/miui/securityscan/cards/m;

    iget-object v1, p0, Lcom/miui/securityscan/cards/l;->BP:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/m;->Dy(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BX:Lcom/miui/securityscan/cards/m;

    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baJ(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/m;->Dx(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BW:Lcom/miui/securityscan/cards/n;

    iget-object v1, p0, Lcom/miui/securityscan/cards/l;->BP:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/n;->Dz(Ljava/util/List;)V

    new-instance v0, Lcom/miui/securityscan/cards/h;

    invoke-direct {v0, p1, p0}, Lcom/miui/securityscan/cards/h;-><init>(Landroid/content/Context;Lcom/miui/securityscan/cards/l;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/l;->BV:Lcom/miui/securityscan/cards/h;

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BV:Lcom/miui/securityscan/cards/h;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/cards/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/miui/securityscan/cards/l;->Dr()V

    return-void
.end method

.method private Dr()V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/cards/t;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/cards/t;-><init>(Lcom/miui/securityscan/cards/l;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic Dt(Lcom/miui/securityscan/cards/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Du(Lcom/miui/securityscan/cards/l;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BU:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic Dv(Lcom/miui/securityscan/cards/l;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public Dp(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BU:Ljava/util/Map;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/cards/l;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BU:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public Dq(Lcom/miui/securityscan/cards/o;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public Ds(Lcom/miui/securityscan/cards/o;Ljava/util/Set;)V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/l;->BR:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Ca:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/l;->BH:Z

    iget-wide v2, p0, Lcom/miui/securityscan/cards/l;->BI:J

    invoke-interface {p1, v0, v2, v3}, Lcom/miui/securityscan/cards/o;->onGarbageChange(ZJ)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cb:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/miui/securityscan/cards/l;->BJ:Z

    iget-boolean v3, p0, Lcom/miui/securityscan/cards/l;->BK:Z

    iget-wide v4, p0, Lcom/miui/securityscan/cards/l;->BL:J

    iget-boolean v6, p0, Lcom/miui/securityscan/cards/l;->BM:Z

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/miui/securityscan/cards/o;->onNetworkAssistChange(ZZJZ)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cc:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/securityscan/cards/l;->BF:Z

    iget v2, p0, Lcom/miui/securityscan/cards/l;->BD:I

    iget-boolean v3, p0, Lcom/miui/securityscan/cards/l;->BE:Z

    iget-object v5, p0, Lcom/miui/securityscan/cards/l;->BG:Ljava/lang/String;

    const/4 v4, 0x3

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/miui/securityscan/cards/o;->onPowerCenterChange(ZIZILjava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cd:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/l;->BQ:Z

    invoke-interface {p1, v0}, Lcom/miui/securityscan/cards/o;->onSecurityScanChange(Z)V

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BZ:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/l;->BN:Z

    invoke-interface {p1, v0}, Lcom/miui/securityscan/cards/o;->onAppManagerChange(Z)V

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BY:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/securityscan/cards/l;->BO:Z

    invoke-interface {p1, v0}, Lcom/miui/securityscan/cards/o;->onAntiSpamChange(Z)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/securityscan/cards/l;->BX:Lcom/miui/securityscan/cards/m;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/cards/l;->BW:Lcom/miui/securityscan/cards/n;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BV:Lcom/miui/securityscan/cards/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/cards/l;->BV:Lcom/miui/securityscan/cards/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/h;->cancel(Z)Z

    :cond_0
    return-void
.end method

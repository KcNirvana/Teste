.class public Lcom/miui/securitycenter/Application;
.super Lmiui/external/a;
.source ""


# static fields
.field private static aYf:I

.field private static aYg:Lcom/miui/securitycenter/Application;


# instance fields
.field private aYd:Z

.field private aYe:Ljava/lang/String;


# direct methods
.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/miui/securitycenter/Application;->aYf:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/securitycenter/Application;->aYf:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/external/a;-><init>()V

    return-void
.end method

.method private static bsA(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/securityscan/g/b;->Mr(Landroid/content/Context;)Lcom/miui/securityscan/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/g/b;->init()V

    invoke-virtual {v0}, Lcom/miui/securityscan/g/b;->Mw()V

    return-void
.end method

.method private bsB(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->initForUIProcess(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->initForUIProcess()V

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->initGroupMap(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/networkassistant/dual/SimCardHelper;->asyncInit(Landroid/content/Context;)V

    return-void
.end method

.method private static bsC(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/miui/gamebooster/a/i;->fC(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/gamebooster/c/b;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/c/b;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private static bsD(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/miui/antivirus/receiver/a;

    invoke-direct {v0}, Lcom/miui/antivirus/receiver/a;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static bsE(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/monthreport/i;->getInstance(Landroid/content/Context;)Lcom/miui/monthreport/i;

    invoke-static {p0}, Lcom/miui/push/a;->getInstance(Landroid/content/Context;)Lcom/miui/push/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/push/a;->init()V

    return-void
.end method

.method private bsF(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/antivirus/receiver/b;

    invoke-direct {v1}, Lcom/miui/antivirus/receiver/b;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/miui/antivirus/i;->aDj(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Lcom/miui/antivirus/utils/a;->aum(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDJ(Ljava/util/ArrayList;)V

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/i;->aDs()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "action_register_foreground_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method

.method private static bsG(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/h;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/h;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static bsH(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/powercenter/a/a;->baS(Landroid/content/Context;)V

    return-void
.end method

.method private bsL(Z)V
    .locals 2

    sget v0, Lcom/miui/securitycenter/Application;->aYf:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/securitycenter/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/a;->bsh(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.securitycenter.action.UPDATE_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "notify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic bsM(Lcom/miui/securitycenter/Application;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/Application;->aYe:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bsN(Lcom/miui/securitycenter/Application;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securitycenter/Application;->aYd:Z

    return p1
.end method

.method static synthetic bsO(I)I
    .locals 0

    sput p0, Lcom/miui/securitycenter/Application;->aYf:I

    return p0
.end method

.method static synthetic bsP(Lcom/miui/securitycenter/Application;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/Application;->bsz(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsQ(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsA(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsR(Lcom/miui/securitycenter/Application;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/Application;->bsB(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsS(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsC(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsT(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsD(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsU(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsE(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsV(Lcom/miui/securitycenter/Application;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/Application;->bsF(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsW(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsG(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsX(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/securitycenter/Application;->bsH(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic bsY(Lcom/miui/securitycenter/Application;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/Application;->bsL(Z)V

    return-void
.end method

.method public static bsy()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/miui/securitycenter/Application;->aYg:Lcom/miui/securitycenter/Application;

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private bsz(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "miui.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/antispam/b/a;

    invoke-direct {v1}, Lcom/miui/antispam/b/a;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/miui/securitycenter/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/antispam/db/a;->ZH()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->resetMarkedNumberBlockSettings(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/antispam/db/a;->Zt(Z)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/miui/securitycenter/Application;
    .locals 1

    sget-object v0, Lcom/miui/securitycenter/Application;->aYg:Lcom/miui/securitycenter/Application;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/external/a;->attachBaseContext(Landroid/content/Context;)V

    sput-object p0, Lcom/miui/securitycenter/Application;->aYg:Lcom/miui/securitycenter/Application;

    invoke-static {p1}, Lcom/miui/common/a/b;->aGA(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/common/b/k;->aIC(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/Application;->aYe:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/analytics/AnalyticsUtil;->initMiStats(Landroid/content/Context;)V

    return-void
.end method

.method public bsI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securitycenter/Application;->aYd:Z

    return v0
.end method

.method public bsJ()Lmiui/external/b;
    .locals 2

    new-instance v0, Lcom/miui/securitycenter/e;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/e;-><init>(Lcom/miui/securitycenter/Application;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/securitycenter/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/miui/securitycenter/f;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/f;-><init>(Lcom/miui/securitycenter/Application;)V

    return-object v0
.end method

.method protected bsK()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/g;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/g;-><init>(Lcom/miui/securitycenter/Application;)V

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

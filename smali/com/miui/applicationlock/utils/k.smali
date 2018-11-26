.class public Lcom/miui/applicationlock/utils/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private abq:Lcom/miui/applicationlock/utils/e;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/utils/k;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/applicationlock/utils/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/utils/k;->abq:Lcom/miui/applicationlock/utils/e;

    new-instance v0, Lcom/miui/applicationlock/utils/v;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/utils/v;-><init>(Lcom/miui/applicationlock/utils/k;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static aeS(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/applicationlock/utils/y;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/utils/y;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static aeT(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/applicationlock/utils/A;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/utils/A;-><init>(Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/A;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static aeU(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/applicationlock/utils/B;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/utils/B;-><init>(Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/B;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static aeV(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.midrop"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "entrance_id"

    const-string/jumbo v2, "MiuiSecurityCenter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/miui/applicationlock/utils/z;

    invoke-direct {v1, p0, v0, p1}, Lcom/miui/applicationlock/utils/z;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private aeW()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/applicationlock/utils/k;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/applicationlock/utils/k;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/applicationlock/utils/k;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static aeX(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "cmd"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private static aeY(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/TransitionHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "from"

    const-string/jumbo v2, "AlarmReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "enter_way"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static aeZ(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v3

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-virtual {v3}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afx(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static afa(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.xiaomi.midrop"

    invoke-static {p0, v0}, Lcom/miui/applicationlock/utils/m;->afX(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static afb(Lcom/miui/applicationlock/utils/e;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/miui/applicationlock/utils/e;->aeq()Z

    move-result v0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afR()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static afc(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/applicationlock/utils/x;

    invoke-direct {v0, p1, p2, p0}, Lcom/miui/applicationlock/utils/x;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static afd(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/applicationlock/utils/w;

    invoke-direct {v0, p1, p0, p2}, Lcom/miui/applicationlock/utils/w;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/w;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static afe(Landroid/content/Context;JLjava/lang/String;I)V
    .locals 5

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/securitycenter/service/RemoteService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "cmd"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p0, p4, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static aff(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/miui/common/b/f;->aHP()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afb(Lcom/miui/applicationlock/utils/e;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->agb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afS()I

    move-result v0

    if-ge v0, v3, :cond_3

    const/16 v0, 0x15

    const/16 v1, 0x1e

    invoke-static {v3, v0, v1}, Lcom/miui/applicationlock/utils/m;->agc(III)J

    move-result-wide v0

    const-string/jumbo v2, "app_installed_scan"

    invoke-static {p0, v0, v1, v2, v5}, Lcom/miui/applicationlock/utils/k;->afe(Landroid/content/Context;JLjava/lang/String;I)V

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/miui/applicationlock/utils/k;->afa(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->agb()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afW()I

    move-result v0

    if-ge v0, v3, :cond_4

    const/16 v0, 0x13

    invoke-static {v3, v0, v4}, Lcom/miui/applicationlock/utils/m;->agc(III)J

    move-result-wide v0

    const-string/jumbo v2, "midrop_app_scan"

    invoke-static {p0, v0, v1, v2, v6}, Lcom/miui/applicationlock/utils/k;->afe(Landroid/content/Context;JLjava/lang/String;I)V

    :cond_2
    :goto_1
    invoke-static {v4}, Lcom/miui/applicationlock/utils/m;->agd(Z)V

    return-void

    :cond_3
    const-string/jumbo v0, "app_installed_scan"

    invoke-static {p0, v5, v0}, Lcom/miui/applicationlock/utils/k;->aeX(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "midrop_app_scan"

    invoke-static {p0, v6, v0}, Lcom/miui/applicationlock/utils/k;->aeX(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic afg(Lcom/miui/applicationlock/utils/k;)Lcom/miui/applicationlock/utils/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/k;->abq:Lcom/miui/applicationlock/utils/e;

    return-object v0
.end method

.method static synthetic afh(Lcom/miui/applicationlock/utils/k;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/k;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic afi(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/applicationlock/utils/k;->aeY(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic afj(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/applicationlock/utils/k;->aeZ(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic afk(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/applicationlock/utils/k;->afa(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic afl(Lcom/miui/applicationlock/utils/e;)Z
    .locals 1

    invoke-static {p0}, Lcom/miui/applicationlock/utils/k;->afb(Lcom/miui/applicationlock/utils/e;)Z

    move-result v0

    return v0
.end method

.method static synthetic afm(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/applicationlock/utils/k;->aeX(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic afn(Landroid/content/Context;JLjava/lang/String;I)V
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/applicationlock/utils/k;->afe(Landroid/content/Context;JLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public aeR(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 8

    const-string/jumbo v0, "param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handle_notifycation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->getCount()I

    move-result v7

    iget-object v0, p0, Lcom/miui/applicationlock/utils/k;->abq:Lcom/miui/applicationlock/utils/e;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/k;->afb(Lcom/miui/applicationlock/utils/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "00002"

    invoke-static {p2, v0}, Lcom/miui/applicationlock/utils/k;->aeY(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ed

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    const v1, 0x7f07079c

    const v2, 0x7f0707a6

    const/16 v4, 0x66

    const/4 v5, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/applicationlock/utils/m;->afP(Landroid/content/Context;IILandroid/content/Intent;IILandroid/graphics/Bitmap;)V

    const-string/jumbo v0, "guide_notification"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajy(Ljava/lang/String;)V

    add-int/lit8 v0, v7, 0x1

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afQ(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/utils/k;->aeW()V

    goto :goto_0
.end method

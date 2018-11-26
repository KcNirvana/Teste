.class public Lcom/miui/securityscan/cards/h;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private Bu:Ljava/lang/ref/WeakReference;

.field private Bv:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/securityscan/cards/l;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/h;->Bu:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/h;->Bv:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private static CQ(Landroid/content/Context;)Z
    .locals 8

    const-wide/32 v6, 0x5265c00

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v0

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    new-instance v4, Lcom/miui/appmanager/i;

    invoke-direct {v4, p0}, Lcom/miui/appmanager/i;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "app_manager_click_time"

    invoke-static {v6, v7}, Lcom/miui/appmanager/h;->blV(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7}, Lcom/miui/appmanager/h;->blV(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "app_manager_click"

    invoke-static {v3, v2}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    xor-int/lit8 v3, v0, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4}, Lcom/miui/appmanager/i;->bmi()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/cards/h;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/securityscan/cards/h;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v10

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/cards/h;->Bu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/l;

    iget-object v1, p0, Lcom/miui/securityscan/cards/h;->Bv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v5, "level"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "scale"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v5, v5, 0x64

    div-int v2, v5, v2

    iput v2, v0, Lcom/miui/securityscan/cards/l;->BD:I

    iget v2, v0, Lcom/miui/securityscan/cards/l;->BD:I

    const/16 v5, 0xa

    if-le v2, v5, :cond_6

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BE:Z

    invoke-static {v1}, Lcom/miui/powercenter/a/a;->baJ(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BF:Z

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/b;->getInstance()Lcom/miui/powercenter/batteryhistory/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/b;->aTB()Ljava/util/List;

    move-result-object v2

    iget-boolean v5, v0, Lcom/miui/securityscan/cards/l;->BF:Z

    if-eqz v5, :cond_7

    invoke-static {v1, v2}, Lcom/miui/powercenter/batteryhistory/i;->aTQ(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/j;

    move-result-object v2

    iget-wide v6, v2, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/miui/powercenter/a/d;->bbf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const v5, 0x7f0705fb

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/securityscan/cards/l;->BG:Ljava/lang/String;

    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/miui/securitycenter/a;->bse(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BH:Z

    invoke-static {v1}, Lcom/miui/securitycenter/a;->brW(Landroid/content/Context;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/miui/securityscan/cards/l;->BI:J

    invoke-static {v1}, Lcom/miui/common/b/c;->aHn(Landroid/content/Context;)Lcom/miui/common/b/d;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-wide v6, v2, Lcom/miui/common/b/d;->azL:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    iget-wide v6, v2, Lcom/miui/common/b/d;->azK:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    iget-wide v6, v2, Lcom/miui/common/b/d;->azL:J

    iget-wide v8, v2, Lcom/miui/common/b/d;->azN:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    move v4, v3

    :cond_2
    iput-boolean v4, v0, Lcom/miui/securityscan/cards/l;->BJ:Z

    iput-boolean v3, v0, Lcom/miui/securityscan/cards/l;->BK:Z

    iget-wide v4, v2, Lcom/miui/common/b/d;->azK:J

    iget-wide v6, v2, Lcom/miui/common/b/d;->azL:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/miui/securityscan/cards/l;->BL:J

    :cond_3
    iget-boolean v2, v2, Lcom/miui/common/b/d;->azM:Z

    iput-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BM:Z

    :cond_4
    invoke-static {v1}, Lcom/miui/securityscan/cards/h;->CQ(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BN:Z

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->hasNewAntispam(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/miui/securityscan/cards/l;->BO:Z

    :cond_5
    return-object v10

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    invoke-static {v1, v2}, Lcom/miui/powercenter/batteryhistory/g;->aTL(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v6

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/miui/powercenter/a/d;->bbf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const v5, 0x7f0705f9

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/securityscan/cards/l;->BG:Ljava/lang/String;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/cards/h;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/miui/securityscan/cards/h;->Bu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/l;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/securityscan/cards/l;->BP:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/cards/o;

    iget-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BH:Z

    iget-wide v4, v0, Lcom/miui/securityscan/cards/l;->BI:J

    invoke-interface {v1, v2, v4, v5}, Lcom/miui/securityscan/cards/o;->onGarbageChange(ZJ)V

    iget-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BJ:Z

    iget-boolean v3, v0, Lcom/miui/securityscan/cards/l;->BK:Z

    iget-wide v4, v0, Lcom/miui/securityscan/cards/l;->BL:J

    iget-boolean v6, v0, Lcom/miui/securityscan/cards/l;->BM:Z

    invoke-interface/range {v1 .. v6}, Lcom/miui/securityscan/cards/o;->onNetworkAssistChange(ZZJZ)V

    iget-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BF:Z

    iget v3, v0, Lcom/miui/securityscan/cards/l;->BD:I

    iget-boolean v4, v0, Lcom/miui/securityscan/cards/l;->BE:Z

    iget-object v6, v0, Lcom/miui/securityscan/cards/l;->BG:Ljava/lang/String;

    move v5, v8

    invoke-interface/range {v1 .. v6}, Lcom/miui/securityscan/cards/o;->onPowerCenterChange(ZIZILjava/lang/String;)V

    iget-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BQ:Z

    invoke-interface {v1, v2}, Lcom/miui/securityscan/cards/o;->onSecurityScanChange(Z)V

    iget-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BN:Z

    invoke-interface {v1, v2}, Lcom/miui/securityscan/cards/o;->onAppManagerChange(Z)V

    iget-boolean v2, v0, Lcom/miui/securityscan/cards/l;->BO:Z

    invoke-interface {v1, v2}, Lcom/miui/securityscan/cards/o;->onAntiSpamChange(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v8, v0, Lcom/miui/securityscan/cards/l;->BR:Z

    :cond_1
    return-void
.end method

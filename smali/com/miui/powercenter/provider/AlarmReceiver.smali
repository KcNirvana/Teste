.class public Lcom/miui/powercenter/provider/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private aNY(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/provider/g;

    invoke-direct {v1, p0, v0}, Lcom/miui/powercenter/provider/g;-><init>(Lcom/miui/powercenter/provider/AlarmReceiver;Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/miui/powercenter/quickoptimize/q;->aQy(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/r;)V

    return-void
.end method

.method private aNZ(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/miui/a/b/b/b;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/b/b/b;->bts()Z

    move-result v0

    const-string/jumbo v1, "key_last_mobile_data_enabled"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/a/b/b/b;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/a/b/b/b;->btt(Z)V

    const-string/jumbo v0, "AlarmReceiver"

    const-string/jumbo v1, "Disable mobile data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private aOa(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "key_last_mobile_data_enabled"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/a/b/b/b;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/b/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/a/b/b/b;->btt(Z)V

    const-string/jumbo v0, "key_last_mobile_data_enabled"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    const-string/jumbo v0, "AlarmReceiver"

    const-string/jumbo v1, "Enable mobile data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.powercenter.action.TRY_ENABLE_MOBILE_DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/provider/AlarmReceiver;->aOa(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "com.miui.powercenter.action.DISABLE_MOBILE_DATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/powercenter/provider/AlarmReceiver;->aNZ(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.miui.powercenter.action.CLEAN_MEMORY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlarmReceiver"

    const-string/jumbo v1, "Execute clean memory on lock screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/powercenter/provider/AlarmReceiver;->aNY(Landroid/content/Context;)V

    goto :goto_0
.end method

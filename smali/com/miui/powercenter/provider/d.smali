.class public Lcom/miui/powercenter/provider/d;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private aCO:Lcom/miui/powercenter/provider/a;

.field private aCP:Lcom/miui/powercenter/provider/c;

.field private aCQ:Lcom/miui/powercenter/batteryhistory/j;

.field private aCR:Z

.field private aCS:Z

.field private aCT:J

.field private aCU:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v0, p0, Lcom/miui/powercenter/provider/d;->aCR:Z

    iput v0, p0, Lcom/miui/powercenter/provider/d;->aCU:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/provider/d;->aCS:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/provider/d;->aCT:J

    new-instance v0, Lcom/miui/powercenter/provider/a;

    invoke-direct {v0}, Lcom/miui/powercenter/provider/a;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/provider/d;->aCO:Lcom/miui/powercenter/provider/a;

    new-instance v0, Lcom/miui/powercenter/provider/c;

    invoke-direct {v0}, Lcom/miui/powercenter/provider/c;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/provider/d;->aCP:Lcom/miui/powercenter/provider/c;

    return-void
.end method

.method private aOd(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, -0x1

    const-string/jumbo v0, "level"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "scale"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    invoke-static {p2}, Lcom/miui/powercenter/a/a;->baK(Landroid/content/Intent;)Z

    move-result v1

    iget v2, p0, Lcom/miui/powercenter/provider/d;->aCU:I

    if-eq v2, v0, :cond_0

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/powercenter/provider/d;->aOf(Landroid/content/Context;)V

    :goto_0
    iput v0, p0, Lcom/miui/powercenter/provider/d;->aCU:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/powercenter/provider/d;->aCT:J

    :cond_0
    iget-boolean v0, p0, Lcom/miui/powercenter/provider/d;->aCS:Z

    if-eq v0, v1, :cond_2

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/miui/powercenter/provider/d;->aCQ:Lcom/miui/powercenter/batteryhistory/j;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BatteryInfoReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Save charge details,  startLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/provider/d;->aCQ:Lcom/miui/powercenter/batteryhistory/j;

    iget v3, v3, Lcom/miui/powercenter/batteryhistory/j;->aHU:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " endLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/provider/d;->aCQ:Lcom/miui/powercenter/batteryhistory/j;

    iget v3, v3, Lcom/miui/powercenter/batteryhistory/j;->aHV:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " totalChargedTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/provider/d;->aCQ:Lcom/miui/powercenter/batteryhistory/j;

    iget-wide v4, v3, Lcom/miui/powercenter/batteryhistory/j;->aHS:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/provider/d;->aCQ:Lcom/miui/powercenter/batteryhistory/j;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/provider/d;->aOh(Lcom/miui/powercenter/batteryhistory/j;)V

    iget-object v0, p0, Lcom/miui/powercenter/provider/d;->aCQ:Lcom/miui/powercenter/batteryhistory/j;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/provider/d;->aOg(Lcom/miui/powercenter/batteryhistory/j;)V

    iput-object v8, p0, Lcom/miui/powercenter/provider/d;->aCQ:Lcom/miui/powercenter/batteryhistory/j;

    :cond_1
    :goto_1
    const-string/jumbo v0, "BatteryInfoReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Charge status changed, prev status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/powercenter/provider/d;->aCS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/miui/powercenter/provider/d;->aCS:Z

    iget-object v0, p0, Lcom/miui/powercenter/provider/d;->aCO:Lcom/miui/powercenter/provider/a;

    invoke-virtual {v0}, Lcom/miui/powercenter/provider/a;->reset()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/miui/powercenter/a;->bff()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/powercenter/provider/d;->aCO:Lcom/miui/powercenter/provider/a;

    invoke-virtual {v2, v0}, Lcom/miui/powercenter/provider/a;->aNS(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/powercenter/a;->bfv()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/miui/powercenter/provider/d;->aCO:Lcom/miui/powercenter/provider/a;

    invoke-virtual {v4, p1, v0}, Lcom/miui/powercenter/provider/a;->aNT(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/miui/powercenter/provider/d;->aCP:Lcom/miui/powercenter/provider/c;

    invoke-virtual {v5, p1, v4}, Lcom/miui/powercenter/provider/c;->aNX(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/miui/powercenter/a;->bfD(J)V

    const-string/jumbo v2, "BatteryInfoReceiver"

    const-string/jumbo v3, "Show battery consume abnormal notification"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v2, p0, Lcom/miui/powercenter/provider/d;->aCU:I

    invoke-direct {p0, v2, v0}, Lcom/miui/powercenter/provider/d;->aOe(II)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdQ(I)V

    goto :goto_1
.end method

.method private aOe(II)V
    .locals 6

    const/16 v0, 0x64

    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/a;->bfc()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    if-le v1, v0, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/miui/powercenter/a;->bfz(I)V

    invoke-static {}, Lcom/miui/powercenter/a;->bfb()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/powercenter/provider/d;->aCT:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/powercenter/a;->bfA(J)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private aOf(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/provider/h;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/provider/h;-><init>(Lcom/miui/powercenter/provider/d;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/provider/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private aOg(Lcom/miui/powercenter/batteryhistory/j;)V
    .locals 4

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/j;->aHS:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p1, Lcom/miui/powercenter/batteryhistory/j;->aHV:I

    iget v1, p1, Lcom/miui/powercenter/batteryhistory/j;->aHU:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/powercenter/a;->bfy(J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/powercenter/a;->bfz(I)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/miui/powercenter/a;->bfA(J)V

    :cond_0
    return-void
.end method

.method private aOh(Lcom/miui/powercenter/batteryhistory/j;)V
    .locals 8

    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "BatteryInfoReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "charge detail, startLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHU:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " endLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " plugType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " useMaxOrMin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHW:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chargedTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/miui/powercenter/batteryhistory/j;->aHV:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1

    iget v0, p1, Lcom/miui/powercenter/batteryhistory/j;->aHU:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/miui/powercenter/batteryhistory/j;->aHW:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/miui/powercenter/batteryhistory/j;->aHT:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHV:I

    iget v3, p1, Lcom/miui/powercenter/batteryhistory/j;->aHU:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    const-string/jumbo v0, "BatteryInfoReceiver"

    const-string/jumbo v1, "chargeFullTime 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHY:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/miui/powercenter/a;->bfn()J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    add-long/2addr v2, v0

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/miui/powercenter/a;->bfB(J)V

    :goto_0
    const-string/jumbo v2, "BatteryInfoReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plugType ac, charge full time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {v0, v1}, Lcom/miui/powercenter/a;->bfB(J)V

    goto :goto_0

    :cond_3
    iget v2, p1, Lcom/miui/powercenter/batteryhistory/j;->aHY:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/miui/powercenter/a;->bfo()J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    add-long/2addr v2, v0

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/miui/powercenter/a;->bfC(J)V

    :goto_2
    const-string/jumbo v2, "BatteryInfoReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "plugType usb, charge full time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Lcom/miui/powercenter/a;->bfC(J)V

    goto :goto_2
.end method

.method static synthetic aOi(Lcom/miui/powercenter/provider/d;Lcom/miui/powercenter/batteryhistory/j;)Lcom/miui/powercenter/batteryhistory/j;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/d;->aCQ:Lcom/miui/powercenter/batteryhistory/j;

    return-object p1
.end method


# virtual methods
.method public aOb(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/powercenter/provider/d;->aCR:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/provider/d;->aCR:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/provider/d;->aOd(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public aOc(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/provider/d;->aCR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/provider/d;->aCR:Z

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BatteryInfoReceiver"

    const-string/jumbo v1, "ACTION_BATTERY_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/provider/d;->aOd(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

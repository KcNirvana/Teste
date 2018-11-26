.class public Lcom/miui/powercenter/provider/DateResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private aNt(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/powercenter/autotask/f;->aVH(Landroid/content/Context;)V

    return-void
.end method

.method private aNu(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/c;->aSL(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/c;->aSM(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/powercenter/provider/DateResetReceiver;->aNu(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/powercenter/provider/DateResetReceiver;->aNt(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

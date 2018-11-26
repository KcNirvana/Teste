.class Lcom/miui/securitycenter/service/a;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private aXS:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securitycenter/service/a;->aXS:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private brA()V
    .locals 1

    const-string/jumbo v0, "stopCycle"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/service/a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/securitycenter/service/a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method static synthetic brB(Lcom/miui/securitycenter/service/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/a;->brz()V

    return-void
.end method

.method static synthetic brC(Lcom/miui/securitycenter/service/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/service/a;->brA()V

    return-void
.end method

.method private brz()V
    .locals 2

    const-string/jumbo v0, "startCycle"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/a;->aXS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/service/NotificationService;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/securitycenter/service/c;

    invoke-direct {v1, p0, v0}, Lcom/miui/securitycenter/service/c;-><init>(Lcom/miui/securitycenter/service/a;Lcom/miui/securitycenter/service/NotificationService;)V

    invoke-virtual {p0, v1}, Lcom/miui/securitycenter/service/a;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

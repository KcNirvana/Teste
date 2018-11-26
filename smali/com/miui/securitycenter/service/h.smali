.class final Lcom/miui/securitycenter/service/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aYa:Lcom/miui/securitycenter/service/NotificationService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->brx(Lcom/miui/securitycenter/service/NotificationService;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->brl(Lcom/miui/securitycenter/service/NotificationService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "cycleMemory"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->brq(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->brk(Lcom/miui/securitycenter/service/NotificationService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    new-instance v1, Lcom/miui/securitycenter/service/a;

    iget-object v2, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    iget-object v3, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v3}, Lcom/miui/securitycenter/service/NotificationService;->brk(Lcom/miui/securitycenter/service/NotificationService;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/miui/securitycenter/service/a;-><init>(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->brp(Lcom/miui/securitycenter/service/NotificationService;Lcom/miui/securitycenter/service/a;)Lcom/miui/securitycenter/service/a;

    iget-object v0, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->brj(Lcom/miui/securitycenter/service/NotificationService;)Lcom/miui/securitycenter/service/a;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/service/a;->brB(Lcom/miui/securitycenter/service/a;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/h;->aYa:Lcom/miui/securitycenter/service/NotificationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->brs(Lcom/miui/securitycenter/service/NotificationService;Z)Z

    return-void
.end method

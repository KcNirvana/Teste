.class final Lcom/miui/securitycenter/service/f;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic aXY:Lcom/miui/securitycenter/service/NotificationService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/NotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/f;->aXY:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen_on"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/f;->aXY:Lcom/miui/securitycenter/service/NotificationService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->brt(Lcom/miui/securitycenter/service/NotificationService;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/f;->aXY:Lcom/miui/securitycenter/service/NotificationService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/securitycenter/service/NotificationService;->brw(Lcom/miui/securitycenter/service/NotificationService;J)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "screen_off"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/f;->aXY:Lcom/miui/securitycenter/service/NotificationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/service/NotificationService;->brt(Lcom/miui/securitycenter/service/NotificationService;Z)Z

    goto :goto_0
.end method

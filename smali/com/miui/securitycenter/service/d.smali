.class final Lcom/miui/securitycenter/service/d;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field final synthetic aXW:Lcom/miui/securitycenter/service/NotificationService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/NotificationService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/d;->aXW:Lcom/miui/securitycenter/service/NotificationService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string/jumbo v0, "update_antispam"

    invoke-static {v0}, Lcom/miui/common/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/d;->aXW:Lcom/miui/securitycenter/service/NotificationService;

    invoke-virtual {v0}, Lcom/miui/securitycenter/service/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securitycenter/service/NotificationService;->bry(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/securitycenter/service/d;->aXW:Lcom/miui/securitycenter/service/NotificationService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/securitycenter/service/NotificationService;->brw(Lcom/miui/securitycenter/service/NotificationService;J)V

    return-void
.end method

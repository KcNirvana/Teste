.class final Lcom/miui/securitycenter/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic aYj:Lcom/miui/securitycenter/Application;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/g;->aYj:Lcom/miui/securitycenter/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/g;->aYj:Lcom/miui/securitycenter/Application;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securitycenter/Application;->bsY(Lcom/miui/securitycenter/Application;Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->-get1()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/securitycenter/Application;->bsO(I)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->-get1()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/miui/securitycenter/Application;->bsO(I)I

    iget-object v0, p0, Lcom/miui/securitycenter/g;->aYj:Lcom/miui/securitycenter/Application;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securitycenter/Application;->bsY(Lcom/miui/securitycenter/Application;Z)V

    return-void
.end method

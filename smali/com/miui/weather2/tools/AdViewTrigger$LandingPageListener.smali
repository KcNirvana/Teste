.class public Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;
.super Lcom/miui/systemAdSolution/landingPage/LandingPageAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/tools/AdViewTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LandingPageListener"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/tools/AdViewTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/weather2/tools/AdViewTrigger;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDownloadCancel()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/AdViewTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->f()V

    :cond_0
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/AdViewTrigger;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->a(Lcom/miui/weather2/tools/AdViewTrigger;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/miui/weather2/tools/k;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/weather2/tools/k;-><init>(Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;ILcom/miui/weather2/tools/AdViewTrigger;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onDownloadStart()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/AdViewTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->e()V

    const-string v1, "Wth2:AdViewTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LandingPageListener.onDownloadStart() packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",downloadUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AdParameters;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/AdViewTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->g()V

    const-string v1, "Wth2:AdViewTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LandingPageListener.onDownloadSuccess() packageX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AdParameters;->getPackageX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->a(Lcom/miui/weather2/tools/AdViewTrigger;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/miui/weather2/tools/j;

    invoke-direct {v2, p0, v0}, Lcom/miui/weather2/tools/j;-><init>(Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;Lcom/miui/weather2/tools/AdViewTrigger;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onInstallSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/AdViewTrigger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->h()V

    const-string v1, "Wth2:AdViewTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LandingPageListener.onInstallSuccess() packageX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/weather2/tools/AdViewTrigger;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getParameters()Lcom/miui/weather2/structures/AdParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/weather2/structures/AdParameters;->getPackageX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->a(Lcom/miui/weather2/tools/AdViewTrigger;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/weather2/tools/bi;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/miui/weather2/tools/l;

    invoke-direct {v2, p0, v0}, Lcom/miui/weather2/tools/l;-><init>(Lcom/miui/weather2/tools/AdViewTrigger$LandingPageListener;Lcom/miui/weather2/tools/AdViewTrigger;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

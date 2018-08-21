.class public Lcom/alibaba/wireless/security/framework/b;
.super Landroid/app/Instrumentation;


# instance fields
.field a:Landroid/app/Instrumentation;

.field b:Lcom/alibaba/wireless/security/framework/a/d;

.field private c:Lcom/alibaba/wireless/security/framework/d;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/alibaba/wireless/security/framework/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    iput-object p1, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-static {p1}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->b:Lcom/alibaba/wireless/security/framework/a/d;

    iput-object p2, p0, Lcom/alibaba/wireless/security/framework/b;->c:Lcom/alibaba/wireless/security/framework/d;

    return-void
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/b;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onStart()V

    return-void
.end method

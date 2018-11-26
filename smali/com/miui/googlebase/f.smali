.class final Lcom/miui/googlebase/f;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;


# direct methods
.method constructor <init>(Lcom/miui/googlebase/GoogleBaseAppInstallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "GoogleBaseApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bde:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v2}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAv(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v2}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAy(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Lcom/miui/googlebase/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lcom/miui/googlebase/a/c;->bzP(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "GoogleBaseApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "delete apk installer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v0, Lcom/miui/googlebase/c;

    iget-object v1, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAw(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/miui/googlebase/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/googlebase/c;->bAM()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAC(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v0, v5}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAF(Lcom/miui/googlebase/GoogleBaseAppInstallService;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/miui/googlebase/c;->bAP()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v0, v5}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAF(Lcom/miui/googlebase/GoogleBaseAppInstallService;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    iget-object v1, p0, Lcom/miui/googlebase/f;->bdz:Lcom/miui/googlebase/GoogleBaseAppInstallService;

    invoke-static {v1}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAw(Lcom/miui/googlebase/GoogleBaseAppInstallService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/miui/googlebase/GoogleBaseAppInstallService;->bAD(Lcom/miui/googlebase/GoogleBaseAppInstallService;Landroid/content/Context;Z)V

    goto :goto_0
.end method

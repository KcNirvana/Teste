.class Lcom/miui/weather2/tools/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/ag;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/ah;->a:Lcom/miui/weather2/tools/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ah;->a:Lcom/miui/weather2/tools/ag;

    iget-object v0, v0, Lcom/miui/weather2/tools/ag;->a:Lcom/miui/weather2/tools/af;

    invoke-static {v0}, Lcom/miui/weather2/tools/af;->a(Lcom/miui/weather2/tools/af;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ah;->a:Lcom/miui/weather2/tools/ag;

    iget-object v0, v0, Lcom/miui/weather2/tools/ag;->a:Lcom/miui/weather2/tools/af;

    invoke-static {v0}, Lcom/miui/weather2/tools/af;->a(Lcom/miui/weather2/tools/af;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;->showMiFamily()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/tools/ah;->a:Lcom/miui/weather2/tools/ag;

    iget-object v1, v1, Lcom/miui/weather2/tools/ag;->a:Lcom/miui/weather2/tools/af;

    invoke-static {v1}, Lcom/miui/weather2/tools/af;->a(Lcom/miui/weather2/tools/af;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;->getMiFamilyLogoPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/ah;->a:Lcom/miui/weather2/tools/ag;

    iget-object v2, v2, Lcom/miui/weather2/tools/ag;->a:Lcom/miui/weather2/tools/af;

    invoke-static {v2}, Lcom/miui/weather2/tools/af;->a(Lcom/miui/weather2/tools/af;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;->getMiFamilyTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/ah;->a:Lcom/miui/weather2/tools/ag;

    iget-object v3, v3, Lcom/miui/weather2/tools/ag;->a:Lcom/miui/weather2/tools/af;

    invoke-static {v3}, Lcom/miui/weather2/tools/af;->a(Lcom/miui/weather2/tools/af;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    move-result-object v3

    const-string v4, "20024.00000"

    invoke-interface {v3, v4}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;->getMiFamilyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/tools/ah;->a:Lcom/miui/weather2/tools/ag;

    iget-object v4, v4, Lcom/miui/weather2/tools/ag;->a:Lcom/miui/weather2/tools/af;

    new-instance v5, Lcom/miui/weather2/tools/af$a;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/miui/weather2/tools/af$a;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/miui/weather2/tools/af;->a(Lcom/miui/weather2/tools/af;Lcom/miui/weather2/tools/af$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:MiFamilyManager"

    const-string v2, "bindMiFamilyService throws RemoteException "

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

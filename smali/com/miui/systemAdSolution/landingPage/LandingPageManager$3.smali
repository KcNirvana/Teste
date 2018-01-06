.class Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;
.super Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker",
        "<",
        "Ljava/lang/Void;",
        "Lcom/miui/systemAdSolution/landingPage/ILandingPageService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

.field final synthetic val$appInfoJsonStr:Ljava/lang/String;

.field final synthetic val$flags:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;->this$0:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

    iput-object p4, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;->val$appInfoJsonStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;->val$flags:Landroid/os/Bundle;

    invoke-direct {p0, p2, p3}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;->innerInvoke(Lcom/miui/systemAdSolution/landingPage/ILandingPageService;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public innerInvoke(Lcom/miui/systemAdSolution/landingPage/ILandingPageService;)Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;->val$appInfoJsonStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$3;->val$flags:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->showAppDetailCard(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LandingPageManager"

    const-string v2, "showAppDetailCard : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

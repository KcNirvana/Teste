.class Lcom/miui/systemAdSolution/landingPage/LandingPageManager$7;
.super Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/miui/systemAdSolution/landingPage/ILandingPageService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;


# direct methods
.method constructor <init>(Lcom/miui/systemAdSolution/landingPage/LandingPageManager;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$7;->this$0:Lcom/miui/systemAdSolution/landingPage/LandingPageManager;

    invoke-direct {p0, p2, p3}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public innerInvoke(Lcom/miui/systemAdSolution/landingPage/ILandingPageService;)Ljava/lang/Integer;
    .locals 3

    :try_start_0
    invoke-interface {p1}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->getServiceVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LandingPageManager"

    const-string v2, "getServiceVersion : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-virtual {p0, p1}, Lcom/miui/systemAdSolution/landingPage/LandingPageManager$7;->innerInvoke(Lcom/miui/systemAdSolution/landingPage/ILandingPageService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

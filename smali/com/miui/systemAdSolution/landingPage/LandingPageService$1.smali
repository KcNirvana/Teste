.class Lcom/miui/systemAdSolution/landingPage/LandingPageService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/miui/systemAdSolution/landingPage/LandingPageService;


# direct methods
.method constructor <init>(Lcom/miui/systemAdSolution/landingPage/LandingPageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService$1;->this$0:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService$1;->this$0:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    invoke-static {p2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->access$002(Lcom/miui/systemAdSolution/landingPage/LandingPageService;Lcom/miui/systemAdSolution/landingPage/ILandingPageService;)Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService$1;->this$0:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->access$002(Lcom/miui/systemAdSolution/landingPage/LandingPageService;Lcom/miui/systemAdSolution/landingPage/ILandingPageService;)Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    return-void
.end method

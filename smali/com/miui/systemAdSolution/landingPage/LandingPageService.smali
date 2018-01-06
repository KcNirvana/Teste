.class public Lcom/miui/systemAdSolution/landingPage/LandingPageService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Wth2:LandingPageService"

.field private static sDeeplinkServiceWrapper:Lcom/miui/systemAdSolution/landingPage/LandingPageService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->sDeeplinkServiceWrapper:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService$1;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageService$1;-><init>(Lcom/miui/systemAdSolution/landingPage/LandingPageService;)V

    iput-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ad.LANDING_PAGE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.systemAdSolution"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/miui/systemAdSolution/landingPage/LandingPageService;Lcom/miui/systemAdSolution/landingPage/ILandingPageService;)Lcom/miui/systemAdSolution/landingPage/ILandingPageService;
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    return-object p1
.end method

.method public static getInstance()Lcom/miui/systemAdSolution/landingPage/LandingPageService;
    .locals 1

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->sDeeplinkServiceWrapper:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->sDeeplinkServiceWrapper:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    iget-object v0, v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->sDeeplinkServiceWrapper:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->sDeeplinkServiceWrapper:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    invoke-direct {v0, p0}, Lcom/miui/systemAdSolution/landingPage/LandingPageService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->sDeeplinkServiceWrapper:Lcom/miui/systemAdSolution/landingPage/LandingPageService;

    :cond_0
    return-void
.end method


# virtual methods
.method public registerLandingPagerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-interface {v0, p1, p2}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->registerListener(Ljava/lang/String;Lcom/miui/systemAdSolution/landingPage/ILandingPageListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:LandingPageService"

    const-string v2, "registerLandingPagerListener()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startApp(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "Wth2:LandingPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startApp() json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "startAppFlags"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "showCancelFlags"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-interface {v1, p1, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->deeplinkStartApp(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Wth2:LandingPageService"

    const-string v2, "startApp()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startDownloadApp(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "Wth2:LandingPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadApp() json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "startAppFlags"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "showCancelFlags"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-interface {v1, p1, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->startDownload(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-interface {v1, p1, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->showAppDetailCard(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Wth2:LandingPageService"

    const-string v2, "startDownloadApp()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startSilentDownloadApp(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "Wth2:LandingPageService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSilentDownloadApp() json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "startAppFlags"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "showCancelFlags"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/systemAdSolution/landingPage/LandingPageService;->mInnerService:Lcom/miui/systemAdSolution/landingPage/ILandingPageService;

    invoke-interface {v1, p1, v0}, Lcom/miui/systemAdSolution/landingPage/ILandingPageService;->startDownload(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Wth2:LandingPageService"

    const-string v2, "startSilentDownloadApp()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

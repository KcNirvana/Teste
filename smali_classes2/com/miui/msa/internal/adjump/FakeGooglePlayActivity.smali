.class public Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;
.super Landroid/app/Activity;
.source "FakeGooglePlayActivity.java"


# static fields
.field private static final ERROR_JUMP_TIME_OUT:Ljava/lang/String; = "timeOut"

.field private static final KEY_INTENT_AD_INFO:Ljava/lang/String; = "adInfo"

.field private static final KEY_INTENT_JUMP:Ljava/lang/String; = "jumpControl"

.field private static final SAFE_TIME:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "FakeGPActivity"


# instance fields
.field private mAdInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

.field private mJumpControl:Lcom/miui/msa/internal/adjump/JumpControlInfo;

.field private mSafeGuardRunnable:Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;

.field private mSafeHandler:Landroid/os/Handler;

.field private mStatusBar:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;)Lcom/miui/msa/internal/adjump/AdInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mAdInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;)Lcom/miui/msa/internal/adjump/JumpControlInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mJumpControl:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->handle302WithOkHttp(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    move-result p0

    return p0
.end method

.method private checkInfo()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "adInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/miui/msa/internal/adjump/AdInfoBean;

    check-cast v1, Lcom/miui/msa/internal/adjump/AdInfoBean;

    iput-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mAdInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "jumpControl"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->parse(Lorg/json/JSONObject;)Lcom/miui/msa/internal/adjump/JumpControlInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mJumpControl:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mAdInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mJumpControl:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v1, "FakeGPActivity"

    const-string v2, "checkInfo error: invalid IntentData ."

    invoke-static {v1, v2}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "FakeGPActivity"

    const-string v3, "checkInfo e : "

    invoke-static {v2, v3, v1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private createStatusView(I)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mStatusBar:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getStatusBarHeight()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mStatusBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mStatusBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mStatusBar:Landroid/view/View;

    return-object p1
.end method

.method private getStatusBarHeight()I
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "FakeGPActivity"

    const-string v2, "getStatusBarHeight : "

    invoke-static {v1, v2, v0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private handle302WithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 9

    const-string v0, "FakeGPActivity"

    const-string v1, "handle302WithHttpUrlConnection"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/miui/msa/internal/adjump/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$2;

    const-string v3, "FakeGPActivity"

    const-string v4, "jump302 use httpUrlConnection"

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$2;-><init>(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method private handle302WithOkHttp(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 2

    const-string v0, "FakeGPActivity"

    const-string v1, "handle302WithOkHttp"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/miui/msa/internal/adjump/UrlOkHttpParser;->getRedirectUrl(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "FakeGPActivity"

    const-string p2, "Final url is empty ! Maybe get exception when redirect."

    invoke-static {p1, p2}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getCallee()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/miui/msa/internal/adjump/AdJumpHandlerUtils;->handleWithCallee(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "FakeGPActivity"

    const-string p3, "onGetGooglePlayUrlFinished e : "

    invoke-static {p2, p3, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private handle302WithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    .locals 2

    const-string v0, "FakeGPActivity"

    const-string v1, "handle302WithWebView"

    invoke-static {v0, v1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/msa/internal/adjump/UrlWebViewParser;

    new-instance v1, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$3;-><init>(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Landroid/content/Context;Lcom/miui/msa/internal/adjump/JumpControlInfo;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;-><init>(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;Lcom/miui/msa/internal/adjump/UrlWebViewParser$ParsedUrlFinishedListener;)V

    invoke-virtual {p2}, Lcom/miui/msa/internal/adjump/AdInfoBean;->getLandingPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/msa/internal/adjump/UrlWebViewParser;->parse(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private initStatusBar()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "#377b4a"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->createStatusView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "jumpControl"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "adInfo"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x800000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "FakeGPActivity"

    const-string p2, "RemoteWebView start e : "

    invoke-static {p1, p2, p0}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_1
    :goto_0
    const-string p0, "FakeGPActivity"

    const-string p1, "Can not start Activity e : invalid data  "

    invoke-static {p0, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private startSafeGuard()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mSafeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$4;

    const-string v1, "FakeGPActivity"

    const-string v2, "startSafeGuard"

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$4;-><init>(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mSafeGuardRunnable:Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mSafeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mSafeGuardRunnable:Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/miui/msa/internal/adjump/R$layout;->activity_fake_gp:I

    invoke-virtual {p0, p1}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->setContentView(I)V

    :try_start_0
    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->checkInfo()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->initStatusBar()V

    sget p1, Lcom/miui/msa/internal/adjump/R$anim;->ad_progress_roate:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v0, Lcom/miui/msa/internal/adjump/R$id;->ad_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->startSafeGuard()V

    iget-object p1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mJumpControl:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-virtual {p1}, Lcom/miui/msa/internal/adjump/JumpControlInfo;->getJumpMode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mAdInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mJumpControl:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->handle302WithWebView(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/miui/msa/internal/adjump/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;

    const-string v1, "FakeGPActivity"

    const-string v2, "jump302 use okhttp"

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity$1;-><init>(Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mAdInfoBean:Lcom/miui/msa/internal/adjump/AdInfoBean;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mJumpControl:Lcom/miui/msa/internal/adjump/JumpControlInfo;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->handle302WithHttpUrlConnection(Landroid/content/Context;Lcom/miui/msa/internal/adjump/AdInfoBean;Lcom/miui/msa/internal/adjump/JumpControlInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FakeGPActivity"

    const-string v1, "init e : "

    invoke-static {v0, v1, p1}, Lcom/miui/msa/internal/adjump/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->finish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mSafeGuardRunnable:Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mSafeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mSafeGuardRunnable:Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/msa/internal/adjump/FakeGooglePlayActivity;->mSafeGuardRunnable:Lcom/miui/msa/internal/adjump/ThrowableCaughtRunnable;

    :cond_0
    return-void
.end method

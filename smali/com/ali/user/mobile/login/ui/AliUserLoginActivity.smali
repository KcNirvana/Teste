.class public Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;
.super Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.source "AliUserLoginActivity.java"


# static fields
.field public static final STATE_FACE_LOGIN:I = 0x2

.field public static final STATE_IDLE:I = -0x1

.field public static final STATE_PASSWORD_LOGIN:I = 0x1

.field public static final STATE_SMS_LOGIN:I = 0x0

.field public static final STATE_SMS_LOGIN_JUNIOR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AliUserLoginActivity"

.field private static mState2LoginViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected accountInputListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mHasNullChecker:Lcom/ali/user/mobile/ui/widget/an;

.field private mIsPaused:Z

.field protected mLoginViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ali/user/mobile/login/view/LoginView;",
            ">;"
        }
    .end annotation
.end field

.field protected mRightCornerView:Landroid/widget/LinearLayout;

.field protected mScrollContainers:Lcom/ali/user/mobile/util/ResizeScrollView;

.field protected mShowRegionHelper:Lcom/ali/user/mobile/util/k;

.field protected mSmsLoginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:I

.field protected mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

.field protected reInputPasswordListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState2LoginViewMap:Ljava/util/Map;

    sget-object v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState2LoginViewMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/ali/user/mobile/login/view/SmsLoginView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState2LoginViewMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/ali/user/mobile/login/view/UsedLoginView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState2LoginViewMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/ali/user/mobile/login/view/SmsLoginJuniorView;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mIsPaused:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mSmsLoginMap:Ljava/util/Map;

    new-instance v0, Lcom/ali/user/mobile/login/ui/b;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/b;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->accountInputListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/ali/user/mobile/login/ui/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/c;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->reInputPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private enterStateWithLoginHistory(Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->isNoQueryPwdUser(Lcom/ali/user/mobile/account/bean/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto :goto_0
.end method

.method private getLoginParamFromExtra()Lcom/ali/user/mobile/login/LoginParam;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "login_param"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    :cond_0
    const-string/jumbo v1, "AliUserLoginActivity"

    const-string/jumbo v2, "loginParam from extra:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private switchLoginView(I)Lcom/ali/user/mobile/login/view/LoginView;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/view/LoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->onViewRestart()V

    :goto_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mScrollContainers:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v1}, Lcom/ali/user/mobile/util/ResizeScrollView;->removeAllViews()V

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mScrollContainers:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/util/ResizeScrollView;->addView(Landroid/view/View;)V

    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState2LoginViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/view/LoginView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->onViewStart()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/view/LoginView;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string/jumbo v2, "AliUserLoginActivity"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method


# virtual methods
.method public afterLogin(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 2

    const-string/jumbo v0, "withonekeytoken"

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginHistorys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->afterLogin(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    return-void
.end method

.method protected checkLoginResponseFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enableBackButton()V

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->checkSupportSmsLogin(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    return-void
.end method

.method protected checkSupportSmsLogin(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 3

    const-string/jumbo v0, "isAllowSMS"

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getStringFromExtResAttrs(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mSmsLoginMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAccount()V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->clearAccount()V

    :cond_0
    return-void
.end method

.method protected clearPassword()V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->clearPassword()V

    :cond_0
    return-void
.end method

.method public disableBackButton()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/f;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/f;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 2

    iget v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "withface"

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->addFaceLoginSyncConfig(Lcom/ali/user/mobile/login/LoginParam;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->disableBackButton()V

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    return-void
.end method

.method public enableBackButton()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getBackButton()Lcom/ali/user/mobile/ui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method public enterState(I)V
    .locals 3

    const-string/jumbo v0, "AliUserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enterState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->onViewStop()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->switchLoginView(I)Lcom/ali/user/mobile/login/view/LoginView;

    iput p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState:I

    goto :goto_0
.end method

.method public getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginViewMap:Ljava/util/Map;

    iget v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/view/LoginView;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "fromlogout"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->myName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsFromRegist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mIsFromRegist:Z

    return v0
.end method

.method public getLoginAccount()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLoginPassword()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResizeScrollView()Lcom/ali/user/mobile/util/ResizeScrollView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mScrollContainers:Lcom/ali/user/mobile/util/ResizeScrollView;

    return-object v0
.end method

.method protected getShownAccount()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->getShownAccount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState:I

    return v0
.end method

.method public getTitleBar()Lcom/ali/user/mobile/ui/widget/APTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    return-object v0
.end method

.method protected initLoginState()V
    .locals 9

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/user/mobile/i/b;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "\u5f53\u524d\u5916\u90e8\u8df3\u8f6c\u77ed\u4fe1\u767b\u5f55"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->hasLoginHistory()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "\u5f53\u524d\u6709\u5386\u53f2\u8d26\u6237"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v3, :cond_8

    const-string/jumbo v0, "login_param"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v1, "source_accountSelectAccount"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_1
    const-string/jumbo v4, "AliUserLoginActivity"

    const-string/jumbo v5, "initLoginState-loginParam:%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0, v7}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterStateWithLoginHistory(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/ali/user/mobile/login/LoginParam;->trustLoginEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mIsFromRegist:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "initLoginState-\u6ce8\u518c\u8fc7\u6765\u7684\u4fe1\u4efb\u767b\u5f55\u5728\u8d26\u5bc6\u9875\u8fdb\u884c"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "noQueryPwdUser"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v7}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginHistoryFromAccount(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    const-string/jumbo v1, "AliUserLoginActivity"

    const-string/jumbo v3, "\u662f\u5426\u627e\u5230\u5339\u914d\u7684\u5386\u53f2\u8d26\u6237:%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterStateWithLoginHistory(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "\u5f53\u524d\u662f\u9996\u6b21\u767b\u5f55"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginParamFromExtra()Lcom/ali/user/mobile/login/LoginParam;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mIsFromRegist:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "onNewIntent-\u6ce8\u518c\u8fc7\u6765\u7684\u4fe1\u4efb\u767b\u5f55\u5728\u8d26\u5bc6\u9875\u8fdb\u884c"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "true"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "noQueryPwdUser"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v7}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v7}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    move v0, v2

    goto/16 :goto_1
.end method

.method public initViews()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->viewContainers:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/util/ResizeScrollView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mScrollContainers:Lcom/ali/user/mobile/util/ResizeScrollView;

    new-instance v0, Lcom/ali/user/mobile/util/k;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mScrollContainers:Lcom/ali/user/mobile/util/ResizeScrollView;

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/util/k;-><init>(Lcom/ali/user/mobile/util/ResizeScrollView;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mShowRegionHelper:Lcom/ali/user/mobile/util/k;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleLayout:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mRightCornerView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mRightCornerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->configRightCornerView(Landroid/view/ViewGroup;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/login/ui/a;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/a;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "come_back"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "can come back, show titlebar"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "can not come back, hide titlebar"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ali/user/mobile/a/a;->a(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected isNoQueryPwdUser(Lcom/ali/user/mobile/account/bean/UserInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ali/user/mobile/account/bean/UserInfo;->isNoQueryPwdUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "AliUserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult, requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0xb000

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "AliUserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/ui/widget/an;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/an;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/an;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginViewMap:Ljava/util/Map;

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_login:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initViews()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->initLoginState()V

    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->r()Lcom/ali/user/mobile/common/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, "AliUserLoginActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "YWUC-JTTYZH-C38"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "alipayLoginView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->dismissProgress()V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/view/LoginView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginViewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected onKeyBack()V
    .locals 2

    iget v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-static {}, Lcom/ali/user/mobile/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onKeyBack()V

    goto :goto_1
.end method

.method protected onLoginResponseError(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->checkLoginResponseFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    const-string/jumbo v2, "6304"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reinput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->reInputPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_forget_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->forgetPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "6325"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, ""

    iget-object v4, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_sms_login:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ali/user/mobile/login/ui/d;

    invoke-direct {v6, p0}, Lcom/ali/user/mobile/login/ui/d;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    move-object v2, p0

    move-object v7, v1

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "6303"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->dismissProgress()V

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reinput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/e;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/e;-><init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_forget_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->forgetPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "5039"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->dismissProgress()V

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reinput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->accountInputListener:Landroid/content/DialogInterface$OnClickListener;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_registNewAccount:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->registerWithAccountListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "5133"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->dismissProgress()V

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "5037"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->dismissProgress()V

    const-string/jumbo v3, ""

    iget-object v4, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->confirm:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->accountInputListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v2, p0

    move-object v7, v1

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "6324"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->dismissProgress()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginResponseError(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto/16 :goto_0
.end method

.method protected onLoginResponseSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 3

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "validateTpye"

    const-string/jumbo v2, "withpwd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "lp"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/login/view/LoginView;->getLoginPassword()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "loginType"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->extMap:Ljava/util/Map;

    const-string/jumbo v1, "from_register"

    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mIsFromRegist:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "withface"

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginResponseSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    return-void
.end method

.method protected onNewAccount(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/login/view/LoginView;->onNewAccount(Ljava/lang/String;I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "sms"

    const-string/jumbo v2, "style"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "\u5f53\u524d\u5916\u90e8\u8df3\u8f6c\u77ed\u4fe1\u767b\u5f55"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/view/LoginView;->onNewIntent(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getLoginParamFromExtra()Lcom/ali/user/mobile/login/LoginParam;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mIsFromRegist:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "onNewIntent-\u6ce8\u518c\u8fc7\u6765\u7684\u4fe1\u4efb\u767b\u5f55\u5728\u8d26\u5bc6\u9875\u8fdb\u884c"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "true"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "noQueryPwdUser"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onPause()V

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mIsPaused:Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onResume()V

    const-string/jumbo v0, "AliUserLoginActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->onResume()V

    return-void
.end method

.method public requestAccountFocus()V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->requestAccountFocus()V

    :cond_0
    return-void
.end method

.method public requestPasswordFocus()V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->requestPasswordFocus()V

    :cond_0
    return-void
.end method

.method public setRightCornerViewEnable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mRightCornerView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mRightCornerDefaultVisible:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mRightCornerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setScrollBound(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mShowRegionHelper:Lcom/ali/user/mobile/util/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ali/user/mobile/util/k;->a(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public showInputPassword()V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getCurrentLoginView()Lcom/ali/user/mobile/login/view/LoginView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/view/LoginView;->showInputPassword()V

    :cond_0
    return-void
.end method

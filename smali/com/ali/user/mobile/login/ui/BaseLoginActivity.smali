.class public abstract Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "BaseLoginActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/login/ui/BaseLoginActivity$a;
    }
.end annotation


# static fields
.field private static final GET_USERINFO_LIST_COUNT:I = 0x5

.field protected static final LOGIN_RESPONSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseLoginActivity"


# instance fields
.field protected clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

.field protected confirm:Ljava/lang/String;

.field protected forgetPasswordListener:Landroid/content/DialogInterface$OnClickListener;

.field protected logging:Ljava/lang/String;

.field protected mApplicationContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field public mInsideAccount:Ljava/lang/String;

.field protected mIsFromRegist:Z

.field protected mIsLoginSuccess:Z

.field private mIsWindowFirstFocus:Z

.field protected mLoginHistorys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

.field protected mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

.field protected mToken:Ljava/lang/String;

.field protected mUserLoginService:Lcom/ali/user/mobile/h/b;

.field protected performanceLogAgent:Lcom/ali/user/mobile/e/h;

.field protected registerListener:Landroid/content/DialogInterface$OnClickListener;

.field protected registerWithAccountListener:Landroid/content/DialogInterface$OnClickListener;

.field protected systemError:Ljava/lang/String;

.field protected verifyFail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    iput-boolean v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsFromRegist:Z

    new-instance v0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$a;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsLoginSuccess:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsWindowFirstFocus:Z

    new-instance v0, Lcom/ali/user/mobile/login/ui/p;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/p;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->forgetPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/ali/user/mobile/login/ui/q;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/q;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/ali/user/mobile/login/ui/r;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/r;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->registerListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/ali/user/mobile/login/ui/j;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/j;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->registerWithAccountListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->doReportDeviceInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->handleRpcException(Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    return-void
.end method

.method private assembleParams()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/ui/widget/aq;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/ali/user/mobile/ui/widget/aq;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_risk_process_change_account:I

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ali/user/mobile/ui/widget/aq;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/ali/user/mobile/ui/widget/aq;

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->alipay_risk_process_verify_by_alipay:I

    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ali/user/mobile/ui/widget/aq;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/ali/user/mobile/ui/widget/aq;

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->alipay_risk_process_cancel:I

    invoke-virtual {p0, v4}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ali/user/mobile/ui/widget/aq;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private callBackInside()V
    .locals 4

    const-string/jumbo v0, "clicked"

    const-string/jumbo v1, "login_action_callback"

    const-string/jumbo v2, "UC-ACTION-CALLBACK-170401-5"

    const-string/jumbo v3, "success"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ali/user/mobile/login/ui/m;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/m;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private commonProcess()V
    .locals 2

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->assembleParams()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_risk_account_dialog_tip:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->showListDialogWithTitle(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private disablePerformanceLog()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->performanceLogAgent:Lcom/ali/user/mobile/e/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->performanceLogAgent:Lcom/ali/user/mobile/e/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/e/h;->a(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->performanceLogAgent:Lcom/ali/user/mobile/e/h;

    return-void
.end method

.method private doPreGetRsa()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/login/ui/i;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/i;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    const-string/jumbo v2, "AliuserSdk.preGetRsa"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private doReportDeviceInfo()V
    .locals 2

    new-instance v0, Lcom/ali/user/mobile/biz/k;

    invoke-direct {v0}, Lcom/ali/user/mobile/biz/k;-><init>()V

    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/biz/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private endPerformanceLog()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->performanceLogAgent:Lcom/ali/user/mobile/e/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->performanceLogAgent:Lcom/ali/user/mobile/e/h;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/h;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->performanceLogAgent:Lcom/ali/user/mobile/e/h;

    return-void
.end method

.method private logRenderPerformance()V
    .locals 8

    const-wide/16 v4, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsWindowFirstFocus:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsWindowFirstFocus:Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "RenderStartTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "RenderStartTime"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "LoginSource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-string/jumbo v1, "BaseLoginActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "login performance end LoginSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " renderTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "totaltime"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "pfid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "login_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AS-PERFORMANCE-161206-01"

    const-string/jumbo v1, "alilogin"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BaseLoginActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addAccountMonitors(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->hasLoginHistory()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "historyCount"

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ali/user/mobile/login/LoginParam;->addMonitorParam(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "matchHistory"

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/ali/user/mobile/login/LoginParam;->addMonitorParam(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v0, "account"

    iget-object v1, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/ali/user/mobile/login/LoginParam;->addMonitorParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LoginSource"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "LoginSource"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ali/user/mobile/login/LoginParam;->addMonitorParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "0"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "historyCount"

    const-string/jumbo v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/ali/user/mobile/login/LoginParam;->addMonitorParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "matchHistory"

    const-string/jumbo v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/ali/user/mobile/login/LoginParam;->addMonitorParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public addFaceLoginSyncConfig(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 0

    return-void
.end method

.method public afterLogin(Lcom/ali/user/mobile/login/LoginParam;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected callBackInsideOnKeyBack()V
    .locals 5

    :try_start_0
    const-class v1, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/ali/user/mobile/a/a;->i()Lcom/alipay/android/phone/inside/framework/service/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "BaseLoginActivity"

    const-string/jumbo v3, "callback inside baseActivity"

    invoke-static {v2, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "loginStatus"

    const-string/jumbo v4, "cancel"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V

    const-string/jumbo v0, "clicked"

    const-string/jumbo v2, "login_action_callback"

    const-string/jumbo v3, "UC-ACTION-CALLBACK-170401-5"

    const-string/jumbo v4, "cancel"

    invoke-static {v0, v2, v3, v4}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Lcom/alipay/android/phone/inside/framework/service/b;)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BaseLoginActivity"

    const-string/jumbo v2, "callback inside error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract clearAccount()V
.end method

.method protected abstract clearPassword()V
.end method

.method public doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->logging:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->showProgress(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    new-instance v0, Lcom/ali/user/mobile/login/ui/k;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/k;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Lcom/ali/user/mobile/login/LoginParam;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->finish()V

    return-void
.end method

.method public finishAndNotify()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->dismissProgress()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->isFromAccountManager()Z

    move-result v0

    const-string/jumbo v1, "UC-LOG-161225-03"

    const-string/jumbo v2, "loginpageback"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "accountmanager"

    :goto_0
    invoke-static {v1, v2, v0, v3, v3}, Lcom/ali/user/mobile/e/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.ali.user.sdk.login.CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/ali/user/mobile/a/a;->k()Lcom/ali/user/mobile/login/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, v3}, Lcom/ali/user/mobile/login/f;->a(Lcom/ali/user/mobile/login/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->finish()V

    return-void

    :cond_1
    const-string/jumbo v0, "firstpage"

    goto :goto_0
.end method

.method protected abstract getLoginAccount()Ljava/lang/String;
.end method

.method public getLoginHistoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginHistorys:Ljava/util/List;

    return-object v0
.end method

.method protected getLoginHistoryManager()Lcom/ali/user/mobile/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v0

    return-object v0
.end method

.method public getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V
    .locals 1

    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginPassword:Ljava/lang/String;

    :cond_1
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "withsndpwd"

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    :cond_3
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    return-void
.end method

.method protected abstract getLoginPassword()Ljava/lang/String;
.end method

.method protected getLoginType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "alipay"

    return-object v0
.end method

.method public getRdsWraper()Lcom/ali/user/mobile/login/rds/RDSWraper;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    return-object v0
.end method

.method protected abstract getShownAccount()Ljava/lang/String;
.end method

.method protected getStringFromExtResAttrs(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "extResAttrs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "BaseLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extResAttrs does not contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public hasLoginHistory()Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginHistorys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initInisdeAccount(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "login_param"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mInsideAccount:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method public initRdsFocusChange(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public initRdsPage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initRdsScreenTouch(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initScreenTouch(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public initRdsTextChange(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method protected initResource()V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_comfirm:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->confirm:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->logging:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_system_error_try_later:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->systemError:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_verify_identity_fail:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->verifyFail:Ljava/lang/String;

    return-void
.end method

.method public isFromAccountManager()Z
    .locals 3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "source_accountSelectAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "BaseLoginActivity"

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

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_2

    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginPreFinish(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x7ce

    if-ne p2, v0, :cond_3

    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPassword()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x2002

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "login_param"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "BaseLoginActivity"

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

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/a/a;->f()Lcom/ali/user/mobile/h/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mUserLoginService:Lcom/ali/user/mobile/h/b;

    new-instance v0, Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v2, "LoginPage"

    invoke-direct {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginHistoryManager()Lcom/ali/user/mobile/c/c;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/c/c;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginHistorys:Ljava/util/List;

    invoke-static {v3}, Lcom/ali/user/mobile/a/a;->a(Z)V

    invoke-static {p0}, Lcom/ali/user/mobile/a/a;->a(Lcom/ali/user/mobile/a/b;)V

    iput-boolean v3, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsLoginSuccess:Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_register"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsFromRegist:Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->initResource()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->doPreGetRsa()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->initInisdeAccount(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onDestroy()V

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/a/a;->a(Z)V

    return-void
.end method

.method protected onKeyBack()V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "onKeyDown - \u5141\u8bb8\u9000\u51fa\u767b\u9646\uff0c\u76f4\u63a5\u9000\u51fa"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->finishAndNotify()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->callBackInsideOnKeyBack()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onKeyBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoginFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 2

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "onLoginFail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->k()Lcom/ali/user/mobile/login/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ali/user/mobile/login/f;->b(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.sdk.login.FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->sendBroadCast(Landroid/content/Intent;)V

    return-void
.end method

.method public onLoginPostFinish(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 4

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "onLoginPostFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->dismissProgress()V

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "app do not finish biz process, only stop progress"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->saveLoginHistory(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->dismissProgress()V

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "base login dismiss"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->m()V

    invoke-static {}, Lcom/ali/user/mobile/login/e;->a()Lcom/ali/user/mobile/login/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/e;->b()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.ali.user.sdk.login.SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "from_register"

    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsFromRegist:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "havanaId"

    iget-wide v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->hid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->sendBroadCast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->callBackInside()V

    goto :goto_0
.end method

.method public onLoginPreFinish(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 3

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "onLoginPreFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->isActivityDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "activity isFinishing or isDestroy, do nothing"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->endPerformanceLog()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->setLoginResult(Z)V

    invoke-static {}, Lcom/ali/user/mobile/a/a;->k()Lcom/ali/user/mobile/login/f;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "loginCaller == null\uff0c do onLoginPostFinish"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginPostFinish(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "YWUC-JTTYZH-C101"

    const-string/jumbo v2, "postFinishLogin"

    invoke-virtual {p0, v1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/ali/user/mobile/login/ui/l;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/l;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    invoke-interface {v0, p1, v1}, Lcom/ali/user/mobile/login/f;->c(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Lcom/ali/user/mobile/login/a;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->disablePerformanceLog()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->setLoginResult(Z)V

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginFail(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    goto :goto_0
.end method

.method public onLoginResponse(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)Z
    .locals 3

    const-string/jumbo v0, "BaseLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoginResponse,code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    const-string/jumbo v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginResponseSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->onLoginResponseError(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLoginResponseError(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->dismissProgress()V

    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->code:Ljava/lang/String;

    const-string/jumbo v2, "6304"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "6303"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reinput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_forget_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->forgetPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "6321"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "5138"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "6297"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_regist_now:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->registerListener:Landroid/content/DialogInterface$OnClickListener;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "6305"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_find_login_password:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->forgetPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "6326"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "5134"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "6211"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_iknow:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_want_to_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->registerListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "6210"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_confirm_cancel:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_continue_register:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->registerWithAccountListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "6272"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "showOptionalInfo"

    const-string/jumbo v2, "showOptionalInfo"

    invoke-virtual {p0, p1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getStringFromExtResAttrs(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "agreementURL"

    const-string/jumbo v2, "agreementURL"

    invoke-virtual {p0, p1, v2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getStringFromExtResAttrs(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "optionStatus"

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "optionStatus"

    invoke-virtual {p0, p1, v3}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getStringFromExtResAttrs(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x9000

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPassword()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "6207"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->commonProcess()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "6202"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->commonProcess()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "6301"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->commonProcess()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "6302"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_login_rds_suspect:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "6232"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->commonProcess()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "5039"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_reinput:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->alipay_registNewAccount:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->registerWithAccountListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "5018"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "5019"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "5037"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "5141"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "6306"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "1026"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "5133"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "6291"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "6262"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "6292"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "6293"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "6294"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "6295"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "6296"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "5007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "1019"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "5144"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "208"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    const-string/jumbo v3, ""

    iget-object v4, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->confirm:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v2, p0

    move-object v7, v1

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p1, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected onLoginResponseSuccess(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "withmsg"

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "smsLogin_H5ToLoginSuccess"

    const-string/jumbo v1, "UC-LOG-150512-T02"

    const-string/jumbo v2, "loginsuccess"

    const-string/jumbo v5, "event"

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "smsLogin_H5ToLoginSuccess"

    invoke-static {v0}, Lcom/ali/user/mobile/e/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/e/c;->b()V

    return-void
.end method

.method protected abstract onNewAccount(Ljava/lang/String;I)V
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->setIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "onNewIntent:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/ali/user/mobile/a/a;->a(Z)V

    iput-boolean v3, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsLoginSuccess:Z

    const-string/jumbo v0, "from_register"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsFromRegist:Z

    return-void
.end method

.method public onRdsControlClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->logRenderPerformance()V

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "send login open broadcast"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.ali.user.sdk.login.OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method protected performDialogAction(Lcom/ali/user/mobile/ui/widget/aq;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->performDialogAction(Lcom/ali/user/mobile/ui/widget/aq;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ali/user/mobile/ui/widget/aq;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/ali/user/mobile/ui/widget/aq;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_risk_process_change_account:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPassword()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearAccount()V

    goto :goto_0

    :cond_2
    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_risk_process_verify_by_alipay:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPassword()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->toAlipay()V

    goto :goto_0

    :cond_3
    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_risk_process_cancel:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected saveLoginHistory(Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 0

    return-void
.end method

.method public sendBroadCast(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setLoginResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mIsLoginSuccess:Z

    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;ILcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "login_param"

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v2, p3, Lcom/ali/user/mobile/rpc/vo/mobilegw/login/UnifyLoginRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startPerformanceLog()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/e/h;

    invoke-direct {v0}, Lcom/ali/user/mobile/e/h;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->performanceLogAgent:Lcom/ali/user/mobile/e/h;

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->performanceLogAgent:Lcom/ali/user/mobile/e/h;

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/h;->a()V

    return-void
.end method

.method public toAlipay()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/login/ui/n;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/n;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toForgetPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPassword()V

    new-instance v0, Lcom/ali/user/mobile/login/ui/o;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/o;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/accountbiz/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toRegist(Lcom/ali/user/mobile/register/Account;)V
    .locals 2

    const-string/jumbo v0, "yhzc-1227-01"

    const-string/jumbo v1, "djzc"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/ali/user/mobile/register/b;->a(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ali/user/mobile/register/Account;)V

    return-void
.end method

.method public toSmsLogin()V
    .locals 0

    return-void
.end method

.method public unifyLogin()V
    .locals 2

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "loginInCurrentEnv"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->startPerformanceLog()V

    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    return-void
.end method

.method protected unifyLoginWithToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "BaseLoginActivity"

    const-string/jumbo v1, "loginWithToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginParams(Lcom/ali/user/mobile/login/LoginParam;)V

    iput-object p1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    iput-object p2, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->doUnifyLogin(Lcom/ali/user/mobile/login/LoginParam;)V

    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mToken:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/ali/user/mobile/e/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getLoginAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mToken:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

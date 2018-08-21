.class public Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "RegReadSmsActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/register/b/a;
.implements Lcom/ali/user/mobile/ui/widget/am;


# static fields
.field private static final sDefaultDuration:J = 0x0L

.field private static final sMaxProgress:I = 0x3e8

.field private static final sTag:Ljava/lang/String; = "Reg_AutoSms"


# instance fields
.field private mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

.field private mCountDown:Landroid/animation/ValueAnimator;

.field private mEndListner:Landroid/animation/Animator$AnimatorListener;

.field private volatile mIsVerifying:Z

.field private mNeedFinishOnRestart:Z

.field private mProgress:Landroid/widget/ProgressBar;

.field private mUpTime:J

.field private mUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mUpTime:J

    iput-boolean v2, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mNeedFinishOnRestart:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mIsVerifying:Z

    new-instance v0, Lcom/ali/user/mobile/register/ui/k;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/k;-><init>(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ali/user/mobile/register/ui/l;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/l;-><init>(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mEndListner:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mIsVerifying:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->goManualSms()V

    return-void
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mCountDown:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private goManualSms()V
    .locals 6

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "animation end, null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "start"

    iget-wide v4, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mUpTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "ms"

    invoke-virtual {v0, v2, v1}, Lcom/ali/user/mobile/register/c/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private initPhone()V
    .locals 3

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_read_phone:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v1

    iget-object v2, v1, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/c/a;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->accountForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "no phone for display"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initProgress()V
    .locals 2

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_read_progress:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mProgress:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method private initView()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->initPhone()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->initProgress()V

    return-void
.end method

.method private startCountDown()Z
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mCountDown:Landroid/animation/ValueAnimator;

    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "read_sms_duration"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/f/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :try_start_1
    const-string/jumbo v4, "Reg_AutoSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "got loading duration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mCountDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mCountDown:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mCountDown:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mCountDown:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mEndListner:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mCountDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3e8
    .end array-data
.end method


# virtual methods
.method public OnAutoReadSms(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "auto read empty sms"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "auto read empty sms"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "UC-ZC-161215-02"

    const-string/jumbo v1, "success"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ali/user/mobile/register/a/a;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/a/a;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/ali/user/mobile/register/a/a;->g:Z

    iput-object p1, v1, Lcom/ali/user/mobile/register/a/a;->c:Ljava/lang/String;

    const-wide/16 v2, 0xbb8

    iput-wide v2, v1, Lcom/ali/user/mobile/register/a/a;->a:J

    const-string/jumbo v2, "verifySms"

    iput-object v2, v1, Lcom/ali/user/mobile/register/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/a;Lcom/ali/user/mobile/base/BaseActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mIsVerifying:Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->finish()V

    goto :goto_0
.end method

.method public afterDialog()V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/register/ui/m;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/m;-><init>(Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/ak;->a()V

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mNeedFinishOnRestart:Z

    return-void
.end method

.method public getActivity()Lcom/ali/user/mobile/base/BaseActivity;
    .locals 0

    return-object p0
.end method

.method public handleStateChange(Lcom/ali/user/mobile/register/a/b;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, -0x2

    iget v2, p1, Lcom/ali/user/mobile/register/a/b;->b:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->goManualSms()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    if-nez v1, :cond_3

    const/4 v1, -0x1

    :goto_1
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->goManualSms()V

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public handleVerifySuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_read_sms:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->initView()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mUpTime:J

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->startCountDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->startRead()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->goManualSms()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, ""

    const-string/jumbo v1, "RegReadSmsActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "UC-ZC-161225-04"

    const-string/jumbo v1, "zcmessagego"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onRestart()V

    const-string/jumbo v0, "Reg_AutoSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mNeedFinishOnRestart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mNeedFinishOnRestart:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/ali/user/mobile/register/b/g;->a(Lcom/ali/user/mobile/register/b/a;)V

    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "start activity override"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mNeedFinishOnRestart:Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->finish()V

    return-void
.end method

.method protected startRead()Z
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "android.permission.READ_SMS"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Reg_AutoSms"

    const-string/jumbo v1, "no permission"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ali/user/mobile/ui/widget/ak;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ali/user/mobile/ui/widget/ak;-><init>(Landroid/content/Context;Lcom/ali/user/mobile/ui/widget/am;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

    :goto_1
    const-string/jumbo v0, "UC-ZC-161215-01"

    const-string/jumbo v1, "start"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/ali/user/mobile/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v2, "95188"

    aput-object v2, v6, v7

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/ui/widget/ak;->a(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/ak;->a()V

    goto :goto_1
.end method

.method protected stopRead()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegReadSmsActivity;->mAutoReadSmsCheckCode:Lcom/ali/user/mobile/ui/widget/ak;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/ak;->a()V

    :cond_0
    return-void
.end method

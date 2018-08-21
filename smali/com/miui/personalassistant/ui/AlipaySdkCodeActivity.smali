.class public Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;
.super Lmiui/app/Activity;
.source "AlipaySdkCodeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipaySdkCodeActivity"

.field private static final TIME_INTERVAL_QUERY:J = 0x7d0L

.field private static final TIME_UPDATE_QR_CODE_INTERVAL:I = 0xea60

.field private static final WHAT_QUERY_PAY_RESULT:I = 0x1002

.field private static final WHAT_UPDATE_QR_CODE:I = 0x1003


# instance fields
.field private isAlive:Z

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->isAlive:Z

    new-instance v0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$2;-><init>(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->showLoadingDialog(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->replaceFragment(Landroid/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mViewRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->isAlive:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->doLogoutAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->checkNeedToShowDialog()Z

    move-result v0

    return v0
.end method

.method private checkNeedToShowDialog()Z
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/model/AlipayUserInfo;->readUserInfo(Landroid/content/Context;)Lcom/miui/personalassistant/model/AlipayUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doLogoutAction()V
    .locals 4

    const v3, 0x1b0b002c

    const-string/jumbo v0, "AlipaySdkCodeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doLogoutAction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/model/AlipayUserInfo;->saveUserInfo(Landroid/content/Context;Lcom/miui/personalassistant/model/AlipayUserInfo;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/AlipayController;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/AlipayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/util/AlipayController;->startGoAlipaySdk()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->finish()V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x1b090026

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mViewRoot:Landroid/view/View;

    return-void
.end method

.method private replaceFragment(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 6

    :try_start_0
    const-string/jumbo v3, "AlipaySdkCodeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "replaceFragment fragment="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1b090027

    invoke-virtual {v2, v3, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AlipaySdkCodeActivity"

    const-string/jumbo v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendUpdateMinusScreenAnimation(Z)V
    .locals 4

    const-string/jumbo v1, "AlipaySdkCodeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUpdateMinusScreenAnimation hideCards="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.MINUS_SCREEN_PLAY_ANIMATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hideCards"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private showLoadingDialog(Z)V
    .locals 4

    const-string/jumbo v1, "AlipaySdkCodeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLoadingDialog..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x1b0b0020

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlipaySdkCodeActivity"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AlipaySdkCodeActivity"

    const-string/jumbo v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "AlipaySdkCodeActivity"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x1b040000

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->initView()V

    new-instance v1, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;

    invoke-direct {v1}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;-><init>()V

    invoke-direct {p0, v1, v4}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->replaceFragment(Landroid/app/Fragment;Landroid/os/Bundle;)V

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->sendUpdateMinusScreenAnimation(Z)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->checkNeedToShowDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mViewRoot:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->showLoadingDialog(Z)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "key_auth_code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AlipaySdkCodeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "authCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity$1;-><init>(Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;)V

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/AlipayUtil;->getUserInfo(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "AlipaySdkCodeActivity"

    const-string/jumbo v2, "authCode is null, return to AlipayController"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v4}, Lcom/miui/personalassistant/model/AlipayUserInfo;->saveUserInfo(Landroid/content/Context;Lcom/miui/personalassistant/model/AlipayUserInfo;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->finish()V

    invoke-static {p0}, Lcom/miui/personalassistant/util/AlipayController;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/util/AlipayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/util/AlipayController;->startGoAlipaySdk()V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "AlipaySdkCodeActivity"

    const-string/jumbo v2, "not showLoadingDialog"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/AlipayUtil;->generatePayCode(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "AlipaySdkCodeActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "AlipaySdkCodeActivity"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->isAlive:Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    const-string/jumbo v0, "AlipaySdkCodeActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/AlipaySdkCodeActivity;->isAlive:Z

    return-void
.end method

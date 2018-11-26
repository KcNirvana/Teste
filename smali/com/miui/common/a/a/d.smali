.class public Lcom/miui/common/a/a/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private azl:Z

.field private azm:Ljava/lang/CharSequence;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingDialog:Lmiui/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/a/a/d;->azl:Z

    iput-object p1, p0, Lcom/miui/common/a/a/d;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private aGs(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lmiui/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/common/a/a/d;->azm:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/common/a/a/d;->aGw()V

    return-void
.end method

.method private aGt()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/miui/common/a/a/d;->aGs(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private aGw()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/common/a/a/d;->azl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    new-instance v1, Lcom/miui/common/a/a/n;

    invoke-direct {v1, p0}, Lcom/miui/common/a/a/n;-><init>(Lcom/miui/common/a/a/d;)V

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0
.end method

.method static synthetic aGx(Lcom/miui/common/a/a/d;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic aGy(Lcom/miui/common/a/a/d;)Lmiui/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public aGu(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/common/a/a/d;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/miui/common/a/a/d;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/common/a/a/m;

    invoke-direct {v1, p0}, Lcom/miui/common/a/a/m;-><init>(Lcom/miui/common/a/a/d;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public aGv(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/common/a/a/d;->azl:Z

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/common/a/a/d;->aGw()V

    :cond_0
    return-void
.end method

.method public setLoadingText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/a/a/d;->setLoadingText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/a/a/d;->azm:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public showLoadingView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/common/a/a/d;->aGt()V

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/a/a/d;->mLoadingDialog:Lmiui/app/ProgressDialog;

    invoke-virtual {v0}, Lmiui/app/ProgressDialog;->show()V

    :cond_2
    return-void
.end method

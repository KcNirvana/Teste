.class public Lcom/miui/applicationlock/widget/i;
.super Lcom/miui/applicationlock/widget/h;
.source ""


# instance fields
.field private adA:Lcom/miui/applicationlock/utils/n;

.field private adB:Ljava/lang/Runnable;

.field private adC:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

.field private adD:Lcom/miui/applicationlock/widget/LockPatternView;

.field private adz:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/h;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/i;->adz:Z

    new-instance v0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-direct {v0, p1}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/i;->adC:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    const-string/jumbo v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/i;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/i;->initView()V

    return-void
.end method

.method private aiX(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "pattern"

    invoke-virtual {v0, v1, p1}, Lmiui/security/SecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adA:Lcom/miui/applicationlock/utils/n;

    invoke-interface {v0}, Lcom/miui/applicationlock/utils/n;->agN()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adA:Lcom/miui/applicationlock/utils/n;

    invoke-interface {v0}, Lcom/miui/applicationlock/utils/n;->agO()V

    goto :goto_0
.end method

.method static synthetic aiY(Lcom/miui/applicationlock/widget/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/i;->adz:Z

    return v0
.end method

.method static synthetic aiZ(Lcom/miui/applicationlock/widget/i;)Lcom/miui/applicationlock/utils/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adA:Lcom/miui/applicationlock/utils/n;

    return-object v0
.end method

.method static synthetic aja(Lcom/miui/applicationlock/widget/i;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adB:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic ajb(Lcom/miui/applicationlock/widget/i;)Lcom/miui/applicationlock/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic ajc(Lcom/miui/applicationlock/widget/i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/i;->aiX(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/applicationlock/widget/i;->setOrientation(I)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/i;->adz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->mContext:Landroid/content/Context;

    const v1, 0x7f03003d

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const v0, 0x7f0a0119

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/LockPatternView;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/i;->adC:Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;

    invoke-virtual {v1}, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiM(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/m;->afL(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiI(Z)V

    new-instance v0, Lcom/miui/applicationlock/widget/w;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/widget/w;-><init>(Lcom/miui/applicationlock/widget/i;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/i;->adB:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    new-instance v1, Lcom/miui/applicationlock/widget/x;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/x;-><init>(Lcom/miui/applicationlock/widget/i;)V

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiK(Lcom/miui/applicationlock/widget/g;)V

    invoke-virtual {p0, v2}, Lcom/miui/applicationlock/widget/i;->setFocusableInTouchMode(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->mContext:Landroid/content/Context;

    const v1, 0x7f03003c

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public agR()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aih()V

    return-void
.end method

.method public agS()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aik()V

    return-void
.end method

.method public agT()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aim()V

    return-void
.end method

.method public agX()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/LockPatternView;->aiw()Z

    move-result v0

    return v0
.end method

.method public agZ()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/i;->adB:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/i;->adB:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/applicationlock/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public aha(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiF(Z)V

    return-void
.end method

.method public ahb(Lcom/miui/applicationlock/utils/n;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/i;->adA:Lcom/miui/applicationlock/utils/n;

    :cond_0
    return-void
.end method

.method public ahc(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiG(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public ahd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/LockPatternView;->aiJ(Z)V

    return-void
.end method

.method public ahf(Landroid/content/Context;Lcom/miui/applicationlock/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/i;->adD:Lcom/miui/applicationlock/widget/LockPatternView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/applicationlock/widget/LockPatternView;->aiL(Landroid/content/Context;Lcom/miui/applicationlock/a/a;)V

    return-void
.end method

.method public startAnimation()V
    .locals 0

    return-void
.end method

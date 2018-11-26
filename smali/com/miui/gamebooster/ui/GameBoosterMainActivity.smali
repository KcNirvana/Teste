.class public Lcom/miui/gamebooster/ui/GameBoosterMainActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final synthetic co:[I


# instance fields
.field public bJ:Z

.field public bK:Z

.field bL:Lcom/miui/common/f/b;

.field private bM:Ljava/util/List;

.field private bN:Landroid/content/ServiceConnection;

.field private bO:Z

.field private bP:Lcom/miui/gamebooster/ui/h;

.field private bQ:Lcom/miui/gamebooster/gamead/a;

.field private bR:Lcom/miui/gamebooster/customview/d;

.field private bS:I

.field private bT:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private bU:Landroid/util/SparseArray;

.field private bV:Lcom/miui/gamebooster/service/IGameBooster;

.field private bW:Z

.field public bX:Z

.field private bY:Lcom/miui/gamebooster/customview/c;

.field private bZ:Lcom/miui/gamebooster/ui/l;

.field private ca:Landroid/view/View;

.field private cb:Landroid/view/View;

.field private cc:Landroid/support/v4/content/LocalBroadcastManager;

.field private cd:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private ce:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private cf:I

.field public cg:Z

.field private ch:Landroid/widget/LinearLayout;

.field private ci:Landroid/view/View$OnClickListener;

.field public cj:Z

.field private ck:Lcom/miui/gamebooster/b/j;

.field private cl:Lcom/miui/gamebooster/view/ViewPagerFixed;

.field private cm:Lcom/miui/gamebooster/ui/m;

.field private cn:Ljava/lang/String;

.field private mAdHandler:Landroid/os/Handler;

.field private mConn:Landroid/content/ServiceConnection;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    invoke-static {}, Lcom/miui/gamebooster/constants/a;->sV()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bO:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bU:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cf:I

    iput-boolean v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bK:Z

    const-string/jumbo v0, "key_gamebooster_support_sign_function"

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cg:Z

    new-instance v0, Lcom/miui/gamebooster/ui/az;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/az;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/ui/aA;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aA;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bN:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/ui/aB;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aB;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bL:Lcom/miui/common/f/b;

    new-instance v0, Lcom/miui/gamebooster/ui/aC;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aC;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mAdHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/gamebooster/ui/aD;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aD;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ci:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/gamebooster/ui/aE;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aE;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ce:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method private dA(IZ)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cf:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cf:I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cb:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cb:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cb:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cb:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "gb_update_setting_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cc:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bO:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cl:Lcom/miui/gamebooster/view/ViewPagerFixed;

    invoke-virtual {v0, p1, v2}, Lcom/miui/gamebooster/view/ViewPagerFixed;->setCurrentItem(IZ)V

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cl:Lcom/miui/gamebooster/view/ViewPagerFixed;

    invoke-virtual {v0, p1, v2}, Lcom/miui/gamebooster/view/ViewPagerFixed;->setCurrentItem(IZ)V

    goto :goto_1
.end method

.method private dB()V
    .locals 1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dC()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dp()V

    goto :goto_0
.end method

.method private dC()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/aJ;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aJ;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/aJ;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic dD(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bO:Z

    return v0
.end method

.method static synthetic dE(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/customview/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bR:Lcom/miui/gamebooster/customview/d;

    return-object v0
.end method

.method static synthetic dF(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bT:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object v0
.end method

.method static synthetic dG(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bV:Lcom/miui/gamebooster/service/IGameBooster;

    return-object v0
.end method

.method static synthetic dH(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bW:Z

    return v0
.end method

.method static synthetic dI(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/customview/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bY:Lcom/miui/gamebooster/customview/c;

    return-object v0
.end method

.method static synthetic dJ(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/ui/l;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bZ:Lcom/miui/gamebooster/ui/l;

    return-object v0
.end method

.method static synthetic dK(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    return-object v0
.end method

.method static synthetic dL(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cc:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method static synthetic dM(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cd:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object v0
.end method

.method static synthetic dN(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/ui/m;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cm:Lcom/miui/gamebooster/ui/m;

    return-object v0
.end method

.method static synthetic dO(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bT:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    return-object p1
.end method

.method static synthetic dP(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bV:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method static synthetic dQ(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bW:Z

    return p1
.end method

.method static synthetic dR(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cd:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method

.method static synthetic dS(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic dT(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic dU(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dx()V

    return-void
.end method

.method static synthetic dV(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dz(I)V

    return-void
.end method

.method static synthetic dW(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dA(IZ)V

    return-void
.end method

.method static synthetic dX(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dB()V

    return-void
.end method

.method private static synthetic dY()[I
    .locals 3

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->co:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->co:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->values()[Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->co:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private dp()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07090c

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07090d

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/aG;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/aG;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/aH;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/aH;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method private dr()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, -0x2

    const v4, 0x800015

    invoke-direct {v1, v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method private ds()V
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/aI;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/aI;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/aI;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private dt(Ljava/lang/Boolean;)Lcom/miui/gamebooster/b/d;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-class v0, Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const-class v0, Lcom/miui/gamebooster/ui/i;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/miui/gamebooster/b/j;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/miui/gamebooster/b/j;-><init>(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ck:Lcom/miui/gamebooster/b/j;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ck:Lcom/miui/gamebooster/b/j;

    return-object v0

    :cond_0
    :try_start_1
    const-class v0, Lcom/miui/gamebooster/ui/a;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method private du()V
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "track_gamebooster_enter_way"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "tabidx"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    const-string/jumbo v3, "rank"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bS:I

    const-string/jumbo v0, "00007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "00008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bO:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bS:I

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v3, "account"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private dv()V
    .locals 2

    const v0, 0x7f0a020e

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ch:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ch:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/miui/gamebooster/ui/aF;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/aF;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ch:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/BottomTabItem;

    const v1, 0x7f02016b

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->jC(I)V

    const v1, 0x7f0708e0

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->jD(I)V

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cs:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ci:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ch:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/BottomTabItem;

    const v1, 0x7f02016c

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->jC(I)V

    const v1, 0x7f0708e1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->jD(I)V

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cr:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ci:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ch:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/BottomTabItem;

    const v1, 0x7f02016d

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->jC(I)V

    const v1, 0x7f07092c

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->jD(I)V

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ci:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/BottomTabItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private dw(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bR:Lcom/miui/gamebooster/customview/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bR:Lcom/miui/gamebooster/customview/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bR:Lcom/miui/gamebooster/customview/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/d;->dismiss()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&gift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07094d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/gamebooster/a/a;->eY(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dx()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070977

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private dy()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bR:Lcom/miui/gamebooster/customview/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/customview/c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/customview/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bY:Lcom/miui/gamebooster/customview/c;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bY:Lcom/miui/gamebooster/customview/c;

    new-instance v1, Lcom/miui/gamebooster/ui/k;

    invoke-direct {v1, p0, p0}, Lcom/miui/gamebooster/ui/k;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/customview/c;->jR(Lcom/miui/gamebooster/ui/j;)V

    new-instance v0, Lcom/miui/gamebooster/customview/d;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bY:Lcom/miui/gamebooster/customview/c;

    const v2, 0x7f0b006c

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/gamebooster/customview/d;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/customview/c;I)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bR:Lcom/miui/gamebooster/customview/d;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bR:Lcom/miui/gamebooster/customview/d;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/d;->show()V

    const-string/jumbo v0, "show"

    const-string/jumbo v1, "time"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bY:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/c;->jQ()V

    return-void
.end method

.method private dz(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f0a0374

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dY()[I

    move-result-object v0

    invoke-static {p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->dZ(I)Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bJ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string/jumbo v0, "page_view"

    const-string/jumbo v1, "tab1_gamebooster"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "page_view"

    const-string/jumbo v1, "tab2_gameranking"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "page_view"

    const-string/jumbo v1, "tab3_gamesettings"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gT(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ch:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->cq:Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/BottomTabItem;

    invoke-virtual {v0, v4}, Lcom/miui/gamebooster/customview/BottomTabItem;->jE(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public di(Lcom/miui/common/customview/AdImageView;ILcom/miui/gamebooster/gamead/Advertisement;)V
    .locals 3

    sget-boolean v0, Lcom/miui/gamebooster/c/a;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " startAdCountdown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/miui/gamebooster/gamead/Advertisement;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mAdHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/common/customview/AdImageView;->aGq(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public dj(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V
    .locals 3

    invoke-virtual {p2}, Lcom/miui/gamebooster/gamead/Advertisement;->kI()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/securityscan/d/g;

    invoke-direct {v1, p1, p2}, Lcom/miui/securityscan/d/g;-><init>(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/b;->Lp(Landroid/content/Context;Ljava/util/List;)V

    sget-boolean v0, Lcom/miui/gamebooster/c/a;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " addAdvertisementEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/gamebooster/gamead/Advertisement;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public dk()Lcom/miui/gamebooster/service/IGameBooster;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bV:Lcom/miui/gamebooster/service/IGameBooster;

    return-object v0
.end method

.method public dl(Lcom/miui/gamebooster/gamead/BaseModel;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bM:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bQ:Lcom/miui/gamebooster/gamead/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bQ:Lcom/miui/gamebooster/gamead/a;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public dm(Lcom/miui/gamebooster/gamead/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bQ:Lcom/miui/gamebooster/gamead/a;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bM:Ljava/util/List;

    return-void
.end method

.method public dn()V
    .locals 4

    const v0, 0x7f07090c

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07090d

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-void
.end method

.method public do()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cj:Z

    return v0
.end method

.method protected dq()V
    .locals 4

    invoke-static {p0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->aft(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->afu(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lcom/miui/applicationlock/utils/b;->adT(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bX:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dy()V

    invoke-static {}, Lcom/miui/gamebooster/sign/a;->getInstance()Lcom/miui/gamebooster/sign/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/sign/a;->qW()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cd:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string/jumbo v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bY:Lcom/miui/gamebooster/customview/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/c;->jS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bW:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MiuiVpnServiceException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dx()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/utils/a;->Il(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bP:Lcom/miui/gamebooster/ui/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bP:Lcom/miui/gamebooster/ui/h;

    invoke-interface {v0}, Lcom/miui/gamebooster/ui/h;->bY()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    const v1, 0x7f0a0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "key_gamebooster_red_point_press"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "homepage_sign_in"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gN(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dq()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ds()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dp()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0374
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300b2

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->setContentView(I)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cc:Landroid/support/v4/content/LocalBroadcastManager;

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    new-instance v0, Lcom/miui/gamebooster/ui/l;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/l;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bZ:Lcom/miui/gamebooster/ui/l;

    new-instance v0, Lcom/miui/gamebooster/ui/m;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/m;-><init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cm:Lcom/miui/gamebooster/ui/m;

    invoke-static {p0}, Lcom/miui/gamebooster/a/C;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/a/C;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bL:Lcom/miui/common/f/b;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/a/C;->ic(Lcom/miui/common/f/b;)V

    const v0, 0x7f03014c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    const v1, 0x7f0a0374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a020b

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/view/ViewPagerFixed;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cl:Lcom/miui/gamebooster/view/ViewPagerFixed;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cl:Lcom/miui/gamebooster/view/ViewPagerFixed;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ce:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/ViewPagerFixed;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dr()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dv()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->du()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.powerkeeper"

    const-string/jumbo v2, "com.miui.powerkeeper.feedbackcontrol.FeedbackControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bN:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bO:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0210

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cl:Lcom/miui/gamebooster/view/ViewPagerFixed;

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bO:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dt(Ljava/lang/Boolean;)Lcom/miui/gamebooster/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/view/ViewPagerFixed;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bS:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dA(IZ)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cl:Lcom/miui/gamebooster/view/ViewPagerFixed;

    invoke-virtual {v0}, Lcom/miui/gamebooster/view/ViewPagerFixed;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mConn:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    const/4 v0, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ds()V

    :cond_2
    const-string/jumbo v0, "key_gamebooster_red_point_press"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->ca:Landroid/view/View;

    const v1, 0x7f0a0168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {p0}, Lcom/miui/gamebooster/a/C;->getInstance(Landroid/content/Context;)Lcom/miui/gamebooster/a/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/C;->id()V

    invoke-static {}, Lcom/miui/gamebooster/a/c;->getInstance()Lcom/miui/gamebooster/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/c;->fd()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cd:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cd:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->cm:Lcom/miui/gamebooster/ui/m;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bT:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->bN:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

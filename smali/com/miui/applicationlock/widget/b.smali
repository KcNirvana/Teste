.class public Lcom/miui/applicationlock/widget/b;
.super Lcom/miui/applicationlock/widget/h;
.source ""


# instance fields
.field private acg:Z

.field private ach:Z

.field private aci:Lcom/miui/applicationlock/utils/n;

.field private acj:Lmiui/view/MiuiKeyBoardView;

.field private ack:Landroid/widget/EditText;

.field private acl:Z

.field private acm:Landroid/widget/ImageView;

.field private final acn:Landroid/os/Vibrator;

.field private mContext:Landroid/content/Context;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/b;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/b;->ach:Z

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/b;->acn:Landroid/os/Vibrator;

    const-string/jumbo v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/b;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/b;->initView()V

    return-void
.end method

.method private ahA(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/b;->ach:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->aci:Lcom/miui/applicationlock/utils/n;

    invoke-interface {v0, p1}, Lcom/miui/applicationlock/utils/n;->agM(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/b;->ahz(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "mixed"

    invoke-virtual {v0, v1, p1}, Lmiui/security/SecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->aci:Lcom/miui/applicationlock/utils/n;

    invoke-interface {v0}, Lcom/miui/applicationlock/utils/n;->agN()V

    :goto_0
    invoke-virtual {p0, v2}, Lcom/miui/applicationlock/widget/b;->ahz(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v0, v2}, Lmiui/view/MiuiKeyBoardView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/b;->ahw()V

    goto :goto_0
.end method

.method static synthetic ahB(Lcom/miui/applicationlock/widget/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/b;->acg:Z

    return v0
.end method

.method static synthetic ahC(Lcom/miui/applicationlock/widget/b;)Lcom/miui/applicationlock/utils/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->aci:Lcom/miui/applicationlock/utils/n;

    return-object v0
.end method

.method static synthetic ahD(Lcom/miui/applicationlock/widget/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic ahE(Lcom/miui/applicationlock/widget/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/b;->acl:Z

    return v0
.end method

.method static synthetic ahF(Lcom/miui/applicationlock/widget/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acm:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic ahG(Lcom/miui/applicationlock/widget/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/b;->acg:Z

    return p1
.end method

.method static synthetic ahH(Lcom/miui/applicationlock/widget/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/b;->acl:Z

    return p1
.end method

.method static synthetic ahI(Lcom/miui/applicationlock/widget/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/b;->ahv()V

    return-void
.end method

.method private ahv()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/b;->ahA(Ljava/lang/String;)V

    return-void
.end method

.method private ahw()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->aci:Lcom/miui/applicationlock/utils/n;

    invoke-interface {v0}, Lcom/miui/applicationlock/utils/n;->agO()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acn:Landroid/os/Vibrator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/MiuiKeyBoardView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private ahx()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/b;->acl:Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acm:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/applicationlock/widget/s;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/s;-><init>(Lcom/miui/applicationlock/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/miui/applicationlock/widget/b;->setOrientation(I)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/b;->ach:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->mContext:Landroid/content/Context;

    const v1, 0x7f030039

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/b;->acm:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/b;->ahx()V

    :goto_0
    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/b;->ach:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/applicationlock/widget/q;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/q;-><init>(Lcom/miui/applicationlock/widget/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    const v0, 0x7f0a0110

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    new-instance v1, Lcom/miui/applicationlock/widget/r;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/r;-><init>(Lcom/miui/applicationlock/widget/b;)V

    invoke-virtual {v0, v1}, Lmiui/view/MiuiKeyBoardView;->addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V

    invoke-virtual {p0, v4}, Lcom/miui/applicationlock/widget/b;->setFocusableInTouchMode(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->mContext:Landroid/content/Context;

    const v1, 0x7f030038

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public agR()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public agS()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/view/MiuiKeyBoardView;->setEnabled(Z)V

    return-void
.end method

.method public agT()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/view/MiuiKeyBoardView;->setEnabled(Z)V

    return-void
.end method

.method public agX()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public agZ()V
    .locals 0

    return-void
.end method

.method public aha(Z)V
    .locals 0

    return-void
.end method

.method public ahb(Lcom/miui/applicationlock/utils/n;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/b;->aci:Lcom/miui/applicationlock/utils/n;

    :cond_0
    return-void
.end method

.method public ahc(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V
    .locals 0

    return-void
.end method

.method public ahd(Z)V
    .locals 0

    return-void
.end method

.method public ahf(Landroid/content/Context;Lcom/miui/applicationlock/a/a;)V
    .locals 0

    return-void
.end method

.method protected ahy()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v0}, Lmiui/view/MiuiKeyBoardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v1, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected ahz(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->ack:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public startAnimation()V
    .locals 14

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/b;->ahy()V

    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v13, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x40000000    # 2.0f

    move v2, v1

    move v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    move v7, v5

    move v8, v6

    move v9, v5

    move v10, v1

    move v11, v5

    move v12, v6

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x96

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/b;->acj:Lmiui/view/MiuiKeyBoardView;

    invoke-virtual {v0, v13}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

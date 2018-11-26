.class public Lcom/miui/applicationlock/widget/a;
.super Lcom/miui/applicationlock/widget/h;
.source ""


# instance fields
.field private abU:Z

.field private abV:Z

.field private abW:Z

.field private abX:Lcom/miui/applicationlock/utils/n;

.field private final abY:Lcom/miui/applicationlock/widget/c;

.field private abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

.field private aca:Landroid/widget/EditText;

.field private acb:Landroid/widget/LinearLayout;

.field private acc:Ljava/lang/StringBuilder;

.field private acd:Z

.field private ace:Landroid/widget/ImageView;

.field private acf:Landroid/os/Vibrator;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/a;->acc:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/miui/applicationlock/widget/l;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/widget/l;-><init>(Lcom/miui/applicationlock/widget/a;)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/a;->abY:Lcom/miui/applicationlock/widget/c;

    iput-boolean p2, p0, Lcom/miui/applicationlock/widget/a;->abW:Z

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/a;->acf:Landroid/os/Vibrator;

    const-string/jumbo v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/a;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/a;->initView()V

    return-void
.end method

.method private agQ()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/a;->abW:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/applicationlock/widget/a;->acc:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/a;->acc:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/a;->abU:Z

    if-eqz v2, :cond_0

    const v2, 0x7f02029b

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const v2, 0x7f02029a

    goto :goto_1

    :cond_1
    return-void
.end method

.method private agU()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/widget/a;->ahg(Ljava/lang/String;)V

    return-void
.end method

.method private agV()V
    .locals 9

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abX:Lcom/miui/applicationlock/utils/n;

    invoke-interface {v0}, Lcom/miui/applicationlock/utils/n;->agO()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acf:Landroid/os/Vibrator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, -0x42333333    # -0.1f

    const v4, 0x3dcccccd    # 0.1f

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance v1, Lcom/miui/applicationlock/widget/p;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/p;-><init>(Lcom/miui/applicationlock/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    return-void
.end method

.method private agW()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->acd:Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->ace:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/applicationlock/widget/o;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/o;-><init>(Lcom/miui/applicationlock/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private ahg(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->abW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abX:Lcom/miui/applicationlock/utils/n;

    invoke-interface {v0, p1}, Lcom/miui/applicationlock/utils/n;->agM(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/a;->agQ()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/a;->ahe(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "numeric"

    invoke-virtual {v0, v1, p1}, Lmiui/security/SecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abX:Lcom/miui/applicationlock/utils/n;

    invoke-interface {v0}, Lcom/miui/applicationlock/utils/n;->agN()V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/a;->ahe(Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/widget/a;->agV()V

    goto :goto_0
.end method

.method static synthetic ahh(Lcom/miui/applicationlock/widget/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->abU:Z

    return v0
.end method

.method static synthetic ahi(Lcom/miui/applicationlock/widget/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->abV:Z

    return v0
.end method

.method static synthetic ahj(Lcom/miui/applicationlock/widget/a;)Lcom/miui/applicationlock/utils/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abX:Lcom/miui/applicationlock/utils/n;

    return-object v0
.end method

.method static synthetic ahk(Lcom/miui/applicationlock/widget/a;)Lcom/miui/applicationlock/widget/MiuiNumericInputView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    return-object v0
.end method

.method static synthetic ahl(Lcom/miui/applicationlock/widget/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic ahm(Lcom/miui/applicationlock/widget/a;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic ahn(Lcom/miui/applicationlock/widget/a;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acc:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic aho(Lcom/miui/applicationlock/widget/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->acd:Z

    return v0
.end method

.method static synthetic ahp(Lcom/miui/applicationlock/widget/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->ace:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic ahq(Lcom/miui/applicationlock/widget/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/a;->abV:Z

    return p1
.end method

.method static synthetic ahr(Lcom/miui/applicationlock/widget/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/a;->acd:Z

    return p1
.end method

.method static synthetic ahs(Lcom/miui/applicationlock/widget/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/a;->agQ()V

    return-void
.end method

.method static synthetic aht(Lcom/miui/applicationlock/widget/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/a;->agU()V

    return-void
.end method

.method static synthetic ahu(Lcom/miui/applicationlock/widget/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/a;->ahg(Ljava/lang/String;)V

    return-void
.end method

.method private initView()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/miui/applicationlock/widget/a;->setOrientation(I)V

    invoke-virtual {p0, v5}, Lcom/miui/applicationlock/widget/a;->setClipChildren(Z)V

    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/a;->setGravity(I)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->abW:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03003b

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0118

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/a;->ace:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/applicationlock/widget/a;->agW()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/applicationlock/widget/m;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/m;-><init>(Lcom/miui/applicationlock/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lcom/miui/applicationlock/ChooseAccessControl;->ahE:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/applicationlock/widget/n;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/widget/n;-><init>(Lcom/miui/applicationlock/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    invoke-virtual {p0, v4}, Lcom/miui/applicationlock/widget/a;->setFocusableInTouchMode(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03003a

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/widget/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/a;->abY:Lcom/miui/applicationlock/widget/c;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahJ(Lcom/miui/applicationlock/widget/c;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method public agR()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/applicationlock/widget/a;->abW:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/applicationlock/widget/a;->acc:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/a;->acc:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/a;->abU:Z

    if-eqz v2, :cond_2

    const v2, 0x7f02029b

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const v2, 0x7f02029a

    goto :goto_1
.end method

.method public agS()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->abW:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public agT()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->abW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->aca:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public agX()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected agY()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v1, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
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

    iput-object p1, p0, Lcom/miui/applicationlock/widget/a;->abX:Lcom/miui/applicationlock/utils/n;

    :cond_0
    return-void
.end method

.method public ahc(Lcom/miui/applicationlock/widget/LockPatternView$DisplayMode;)V
    .locals 0

    return-void
.end method

.method public ahd(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/miui/applicationlock/widget/a;->abU:Z

    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->abW:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/widget/a;->abU:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->acb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02029b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahK(Z)V

    return-void
.end method

.method protected ahe(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0, p1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    return-void
.end method

.method public ahf(Landroid/content/Context;Lcom/miui/applicationlock/a/a;)V
    .locals 0

    return-void
.end method

.method public startAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/a;->agY()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/a;->abZ:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->startAnimation()V

    return-void
.end method

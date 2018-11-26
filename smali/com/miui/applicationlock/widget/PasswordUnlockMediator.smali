.class public Lcom/miui/applicationlock/widget/PasswordUnlockMediator;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private acB:Z

.field private acC:Lcom/miui/applicationlock/widget/h;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->aid(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private aib(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/applicationlock/widget/a;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acB:Z

    invoke-direct {v0, v1, v2}, Lcom/miui/applicationlock/widget/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acC:Lcom/miui/applicationlock/widget/h;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "mixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/applicationlock/widget/b;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acB:Z

    invoke-direct {v0, v1, v2}, Lcom/miui/applicationlock/widget/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acC:Lcom/miui/applicationlock/widget/h;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "pattern"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v0, Lcom/miui/applicationlock/widget/i;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acB:Z

    invoke-direct {v0, v1, v2}, Lcom/miui/applicationlock/widget/i;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acC:Lcom/miui/applicationlock/widget/h;

    goto :goto_0
.end method

.method private aid(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/miui/securitycenter/d;->PasswordUnlockMediatorAttrs:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acB:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public aic()Lcom/miui/applicationlock/widget/h;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acC:Lcom/miui/applicationlock/widget/h;

    return-object v0
.end method

.method public aie(Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->aib(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acC:Lcom/miui/applicationlock/widget/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->acC:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {p0, v0, v2, v2}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->addView(Landroid/view/View;II)V

    return-void
.end method

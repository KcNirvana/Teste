.class public Lcom/miui/powercenter/autotask/TextEditPreference;
.super Landroid/preference/Preference;
.source ""


# instance fields
.field private aKn:Landroid/widget/EditText;

.field private aKo:Lcom/miui/powercenter/autotask/a;

.field private mContent:Ljava/lang/String;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mContent:Ljava/lang/String;

    new-instance v0, Lcom/miui/powercenter/autotask/A;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/A;-><init>(Lcom/miui/powercenter/autotask/TextEditPreference;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mContent:Ljava/lang/String;

    new-instance v0, Lcom/miui/powercenter/autotask/A;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/A;-><init>(Lcom/miui/powercenter/autotask/TextEditPreference;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic aUS(Lcom/miui/powercenter/autotask/TextEditPreference;)Lcom/miui/powercenter/autotask/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->aKo:Lcom/miui/powercenter/autotask/a;

    return-object v0
.end method

.method static synthetic aUT(Lcom/miui/powercenter/autotask/TextEditPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method private updateView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->aKn:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->aKn:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->aKn:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->aKn:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public aUQ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->mContent:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/TextEditPreference;->updateView()V

    return-void
.end method

.method public aUR(Lcom/miui/powercenter/autotask/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->aKo:Lcom/miui/powercenter/autotask/a;

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0325

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->aKn:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/TextEditPreference;->aKn:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/TextEditPreference;->updateView()V

    return-void
.end method

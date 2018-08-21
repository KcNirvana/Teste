.class public Lcom/alipay/android/app/safepaybase/widget/SimplePassword;
.super Landroid/widget/LinearLayout;
.source "SimplePassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/alipay/android/app/safepaybase/b;

.field private g:Landroid/view/View$OnFocusChangeListener;

.field private h:Lcom/alipay/android/app/safepaybase/b/b;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/android/app/safepaybase/EncryptRandomType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->e:I

    invoke-static {}, Lcom/alipay/android/app/safepaybase/b/a;->a()Lcom/alipay/android/app/safepaybase/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->h:Lcom/alipay/android/app/safepaybase/b/b;

    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->j:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->k:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->e:I

    invoke-static {}, Lcom/alipay/android/app/safepaybase/b/a;->a()Lcom/alipay/android/app/safepaybase/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->h:Lcom/alipay/android/app/safepaybase/b/b;

    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->j:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->k:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "safe_input_simple_password"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->c(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->a()V

    return-void
.end method

.method private a()V
    .locals 7

    const-string/jumbo v0, "mini_linSimplePwdComponent"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->a:Landroid/widget/LinearLayout;

    const-string/jumbo v0, "mini_spwd_iv_1"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "mini_spwd_iv_2"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string/jumbo v2, "mini_spwd_iv_3"

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v3, "mini_spwd_iv_4"

    invoke-static {v3}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const-string/jumbo v4, "mini_spwd_iv_5"

    invoke-static {v4}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string/jumbo v5, "mini_spwd_iv_6"

    invoke-static {v5}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    iget-object v6, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "mini_spwd_input"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/e;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/f;-><init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->g:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setPointView(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->f:Lcom/alipay/android/app/safepaybase/b;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/b/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->h:Lcom/alipay/android/app/safepaybase/b/b;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->e:I

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->k:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object v0
.end method

.method private setPointView(I)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public clearText()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public setBizId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->e:I

    return-void
.end method

.method public setEncryptRandomStringAndType(Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->k:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->g:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setRsaPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->i:Ljava/lang/String;

    return-void
.end method

.method public setmSubmitInterface(Lcom/alipay/android/app/safepaybase/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->f:Lcom/alipay/android/app/safepaybase/b;

    return-void
.end method

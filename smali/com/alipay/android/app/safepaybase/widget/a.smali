.class public Lcom/alipay/android/app/safepaybase/widget/a;
.super Ljava/lang/Object;
.source "SafeInputWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Lcom/alipay/android/app/safepaybase/b/b;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:I

.field private j:Lcom/alipay/android/app/safepaybase/b;

.field private k:Landroid/view/View$OnFocusChangeListener;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->e:Landroid/view/View;

    invoke-static {}, Lcom/alipay/android/app/safepaybase/b/a;->a()Lcom/alipay/android/app/safepaybase/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->f:Lcom/alipay/android/app/safepaybase/b/b;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->g:Landroid/view/View;

    iput-boolean v2, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->i:I

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->j:Lcom/alipay/android/app/safepaybase/b;

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->k:Landroid/view/View$OnFocusChangeListener;

    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->l:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->m:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randomafter:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->n:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    iput-boolean v2, p0, Lcom/alipay/android/app/safepaybase/widget/a;->o:Z

    iput-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->p:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->i:I

    iput-boolean p2, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    iget v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->i:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/safepaybase/widget/a;->a(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/safepaybase/widget/a;)Lcom/alipay/android/app/safepaybase/b/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->f:Lcom/alipay/android/app/safepaybase/b/b;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/safepaybase/widget/a;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->i:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/safepaybase/widget/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/widget/a;->f()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/android/app/safepaybase/widget/a;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->k:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->g:Landroid/view/View;

    const-string/jumbo v1, "common_input_item"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, v5}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->i:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setBizId(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->a:Landroid/app/Activity;

    const-string/jumbo v2, "input_clean_icon"

    const-string/jumbo v3, "drawable"

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/safepaybase/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/a;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/b/d;->a(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/b;-><init>(Lcom/alipay/android/app/safepaybase/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/android/app/safepaybase/widget/a;)Lcom/alipay/android/app/safepaybase/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->j:Lcom/alipay/android/app/safepaybase/b;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->o:Z

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->o:Z

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alipay/android/app/safepaybase/widget/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/safepaybase/widget/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/app/safepaybase/widget/a;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->n:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/widget/EditText;
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 2

    const-string/jumbo v0, "safe_input_widget"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->c(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->g:Landroid/view/View;

    const-string/jumbo v1, "input_et_password"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/c;-><init>(Lcom/alipay/android/app/safepaybase/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->g:Landroid/view/View;

    const-string/jumbo v1, "spwd_input"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->j:Lcom/alipay/android/app/safepaybase/b;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/safepaybase/b;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->g:Landroid/view/View;

    const-string/jumbo v1, "button_ok"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/android/app/safepaybase/widget/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/safepaybase/widget/d;-><init>(Lcom/alipay/android/app/safepaybase/widget/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->d:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->g:Landroid/view/View;

    const-string/jumbo v1, "button_ok_verticalline"

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->e:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->k:Landroid/view/View$OnFocusChangeListener;

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/app/safepaybase/b;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->j:Lcom/alipay/android/app/safepaybase/b;

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->j:Lcom/alipay/android/app/safepaybase/b;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setmSubmitInterface(Lcom/alipay/android/app/safepaybase/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->l:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->setRsaPublicKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->g:Landroid/view/View;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->f:Lcom/alipay/android/app/safepaybase/b/b;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->i:I

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/a;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/a;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/a;->n:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/safepaybase/b/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->c:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->clearText()V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->f:Lcom/alipay/android/app/safepaybase/b/b;

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->i:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/safepaybase/b/b;->a(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v1, v3

    div-int/lit8 v5, v3, 0x4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->q:I

    sub-int v1, v2, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->s:I

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->q:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->r:I

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->s:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->t:I

    :cond_0
    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->q:I

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/safepaybase/widget/a;->q:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/alipay/android/app/safepaybase/widget/a;->r:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->s:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/safepaybase/widget/a;->t:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/widget/a;->d()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

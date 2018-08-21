.class public Lcom/alipay/android/app/birdnest/input/a;
.super Lcom/alipay/android/app/template/AbsFBPlugin;
.source "PasswordInputPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/alipay/android/app/template/FBFocusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/birdnest/input/a$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/android/app/template/FBPluginCtx;

.field private c:I

.field private d:Lcom/alipay/android/app/template/TemplatePasswordService;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/app/Dialog;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Landroid/view/View;

.field private y:Ljava/lang/String;

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/template/AbsFBPlugin;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->i:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lcom/alipay/android/app/birdnest/input/a;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a;->q:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->t:Landroid/app/Dialog;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/android/app/birdnest/input/a;->v:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->y:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->A:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->b()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    iput p3, p0, Lcom/alipay/android/app/birdnest/input/a;->c:I

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "flybird_main_layout"

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com.alipay.android.app"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/birdnest/input/a;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->g()Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/birdnest/input/a;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/birdnest/input/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/birdnest/input/a;)Lcom/alipay/android/app/template/FBPluginCtx;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/birdnest/input/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/a;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<font size=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/birdnest/a/a;->a(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/tag/html/a;->a(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/birdnest/input/a;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->j()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/birdnest/input/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/birdnest/input/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a;->q:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/app/birdnest/input/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/birdnest/input/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/birdnest/input/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/android/app/birdnest/input/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->m()V

    return-void
.end method

.method static synthetic i(Lcom/alipay/android/app/birdnest/input/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/birdnest/input/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/birdnest/input/c;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0
.end method

.method private j()Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getBodyView()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getBodyView()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "getInnerView"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/birdnest/input/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/birdnest/input/d;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private l()Lcom/alipay/android/app/birdnest/input/a$a;
    .locals 3

    new-instance v2, Lcom/alipay/android/app/birdnest/input/a$a;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/birdnest/input/a$a;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/alipay/android/app/birdnest/input/a$a;->a:Landroid/view/View;

    iput-boolean v1, v2, Lcom/alipay/android/app/birdnest/input/a$a;->b:Z

    return-object v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getShowingDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "payspwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a;->p:Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a;->p:Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/birdnest/input/a;->c:I

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/a;->f:Landroid/view/View;

    return-void
.end method

.method a(Landroid/view/View;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->d()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v1

    :goto_0
    if-eqz p2, :cond_2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public b()Lcom/alipay/android/app/template/TemplatePasswordService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/input/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/input/b;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    return-object v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0, v3}, Lcom/alipay/android/app/template/FBPluginCtx;->setHasInput(Z)V

    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string/jumbo v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->k()V

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->i()V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method d()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 13

    const/16 v6, 0x258

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/birdnest/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->l()Lcom/alipay/android/app/birdnest/input/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/birdnest/input/a$a;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->isOnloadFinish()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, "ex"

    const-string/jumbo v1, "keyboard_error"

    const-string/jumbo v2, "keyboard_error"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->l()Lcom/alipay/android/app/birdnest/input/a$a;

    move-result-object v0

    iget-object v4, v0, Lcom/alipay/android/app/birdnest/input/a$a;->a:Landroid/view/View;

    iget-boolean v5, v0, Lcom/alipay/android/app/birdnest/input/a$a;->b:Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    move-result v0

    if-nez v5, :cond_5

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v3, 0x1

    :goto_2
    if-nez v5, :cond_7

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->g()Landroid/view/View;

    move-result-object v2

    :goto_3
    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->isOnloadFinish()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v7, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-instance v0, Lcom/alipay/android/app/birdnest/input/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/birdnest/input/g;-><init>(Lcom/alipay/android/app/birdnest/input/a;Landroid/view/View;ZLandroid/view/View;Z)V

    int-to-long v2, v6

    invoke-virtual {v7, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    move v3, v12

    goto :goto_2

    :cond_6
    const v1, 0x1020002

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_7
    const-string/jumbo v1, "dialog_linear_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_9

    const/16 v12, 0x1f4

    :cond_9
    if-nez v3, :cond_a

    invoke-direct {p0, v2, v4}, Lcom/alipay/android/app/birdnest/input/a;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    :goto_4
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/a/b;->a(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v8

    move-object v9, v4

    move v11, v5

    invoke-interface/range {v6 .. v12}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    invoke-static {}, Lcom/alipay/android/app/birdnest/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/birdnest/input/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/birdnest/input/h;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_a
    move-object v10, v2

    goto :goto_4

    :cond_b
    move v6, v12

    goto/16 :goto_1
.end method

.method f()F
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getBodyView()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "getOpacity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->f:Landroid/view/View;

    return-object v0
.end method

.method public getEncryptValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "payspwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "paypwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->h()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a;->c:I

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->getText(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public h()Lcom/alipay/android/app/template/TemplatePasswordService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->d:Lcom/alipay/android/app/template/TemplatePasswordService;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->getNode()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/app/template/FBPluginCtx;->deliverOnBlur(J)Z

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->f()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "payspwd"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/birdnest/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPluginCtx;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->l()Lcom/alipay/android/app/birdnest/input/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/birdnest/input/a$a;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->e()V

    :cond_4
    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->m()V

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->getNode()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/app/template/FBPluginCtx;->deliverOnFocus(J)Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->getNode()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/app/template/FBPluginCtx;->deliverOnBlur(J)Z

    goto :goto_0
.end method

.method public onLoadFinish()Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->m()V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "checkbox"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/a/b;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v0, p0}, Lcom/alipay/android/app/template/FBPluginCtx;->setAutoFocus(Lcom/alipay/android/app/template/FBFocusable;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    :goto_0
    return v5

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v1, "month"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v5, p0, Lcom/alipay/android/app/birdnest/input/a;->q:Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-boolean v4, p0, Lcom/alipay/android/app/birdnest/input/a;->q:Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/alipay/android/app/birdnest/input/a;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/birdnest/input/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/app/birdnest/input/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v1, v3

    div-int/lit8 v5, v3, 0x4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/alipay/android/app/birdnest/input/a;->j:I

    sub-int v1, v2, v4

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/android/app/birdnest/input/a;->l:I

    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a;->j:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alipay/android/app/birdnest/input/a;->k:I

    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a;->l:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alipay/android/app/birdnest/input/a;->m:I

    :cond_0
    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a;->j:I

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/app/birdnest/input/a;->p:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/birdnest/input/a;->j:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/alipay/android/app/birdnest/input/a;->k:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a;->l:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a;->m:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->s:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->r:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->h()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/alipay/android/app/birdnest/input/a;->c:I

    invoke-interface {v1, v2}, Lcom/alipay/android/app/template/TemplatePasswordService;->clear(I)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setRect(FFFF)Z
    .locals 1

    float-to-int v0, p3

    iput v0, p0, Lcom/alipay/android/app/birdnest/input/a;->n:I

    float-to-int v0, p4

    iput v0, p0, Lcom/alipay/android/app/birdnest/input/a;->o:I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/template/AbsFBPlugin;->setRect(FFFF)Z

    move-result v0

    return v0
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/alipay/android/app/birdnest/input/a;->q:Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->y:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/android/app/birdnest/input/a;->q:Z

    const-string/jumbo v0, ""

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/alipay/android/app/birdnest/input/a;->p:Z

    :cond_1
    :goto_0
    move v3, v2

    :cond_2
    return v3

    :cond_3
    const-string/jumbo v0, "autofocus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a;->v:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/input/a;->w:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "placeholder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/alipay/android/app/birdnest/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_6
    invoke-direct {p0, p2}, Lcom/alipay/android/app/birdnest/input/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "maxlength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/alipay/android/app/birdnest/input/a;->q:Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->h:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v2, p0, Lcom/alipay/android/app/birdnest/input/a;->q:Z

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v3, p0, Lcom/alipay/android/app/birdnest/input/a;->p:Z

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->h:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->h:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    move v3, v2

    :cond_b
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_1

    :cond_d
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v0, "money"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "num"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_f
    const-string/jumbo v0, "payspwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    if-nez v0, :cond_12

    :cond_10
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_13

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string/jumbo v1, "fb_secure_simple_password"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    :cond_11
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    :cond_12
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    const-string/jumbo v1, "spwd_input"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/birdnest/input/a/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/birdnest/input/a/b;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->k()V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/birdnest/input/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/birdnest/input/e;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    new-instance v1, Lcom/alipay/android/app/birdnest/input/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/birdnest/input/f;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->a:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const-string/jumbo v1, "fb_simple_password"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->x:Landroid/view/View;

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->e:Landroid/view/View;

    :cond_15
    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "paypwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const-string/jumbo v0, "paypwd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/birdnest/input/a/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/birdnest/input/a/a;-><init>(Lcom/alipay/android/app/birdnest/input/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_17
    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->i()V

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->k()V

    :cond_18
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/a/b;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "font-size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "px"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    const-string/jumbo v2, "placeholder-font-size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/input/a;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/birdnest/input/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "placeholder-color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/alipay/android/app/birdnest/a/a;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "color"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-static {p2}, Lcom/alipay/android/app/birdnest/a/a;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "font-weight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "bold"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "text-align"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "background-image"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_b
    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    if-nez v2, :cond_c

    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    :cond_c
    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    aput-object p2, v2, v0

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "background-image:checked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_e
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    if-nez v0, :cond_f

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    :cond_f
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    aput-object p2, v0, v1

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v2, "background-image:disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_11
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    if-nez v0, :cond_12

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p2, v0, v2

    goto/16 :goto_0
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/input/a;->u:Ljava/lang/String;

    const-string/jumbo v3, "checkbox"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "focus"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a;->v:Z

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1, p0}, Lcom/alipay/android/app/template/FBPluginCtx;->setAutoFocus(Lcom/alipay/android/app/template/FBFocusable;)V

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->b:Lcom/alipay/android/app/template/FBPluginCtx;

    invoke-interface {v1}, Lcom/alipay/android/app/template/FBPluginCtx;->isOnloadFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/input/a;->e()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "blur"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/alipay/android/app/birdnest/input/a;->v:Z

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/input/a;->l()Lcom/alipay/android/app/birdnest/input/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/android/app/birdnest/input/a$a;->a:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/birdnest/input/a;->a(Landroid/view/View;Z)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

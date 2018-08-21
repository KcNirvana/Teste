.class public final Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;
.super Lcom/ali/user/mobile/ui/widget/APEditText;
.source "APSafeEditText.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View$OnTouchListener;

.field private c:Landroid/view/View$OnFocusChangeListener;

.field private d:Landroid/view/View$OnFocusChangeListener;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/app/Dialog;

.field private i:Z

.field protected isAutoShowSafeKeyboard:Z

.field private j:Z

.field private k:Z

.field private final l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:I

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->f:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->g:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->i:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->j:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->k:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l:Ljava/lang/String;

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->q:Z

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->f:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->g:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->i:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->j:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->k:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l:Ljava/lang/String;

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->q:Z

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/ui/widget/APEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "APSafeEditText"

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->f:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->g:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->i:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->j:Z

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->k:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l:Ljava/lang/String;

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->q:Z

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setInputType(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->h()V

    goto :goto_0
.end method

.method private a(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a:Ljava/lang/ref/WeakReference;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setSoftInputShownOnFocus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setShowSoftInputOnFocus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->f:Z

    :try_start_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->f:Z

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "APSafeEditText"

    const-string/jumbo v3, "exception when call system onTouchEvent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v2, "APSafeEditText"

    const-string/jumbo v3, "exception when call system onTouchEvent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->i()V

    return-void
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a(Z)V

    return-void
.end method

.method private c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private e()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/ui/widget/keyboard/a;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/keyboard/a;-><init>(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->b:Landroid/view/View$OnTouchListener;

    invoke-super {p0, v0}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "YangWei"

    const-string/jumbo v1, "unSetKeyboardFocusChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v2}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iput-object v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private g()V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/ui/widget/keyboard/b;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/keyboard/b;-><init>(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->d:Landroid/view/View$OnFocusChangeListener;

    invoke-super {p0, v0}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private h()V
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ali/user/mobile/ui/widget/keyboard/c;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/keyboard/c;-><init>(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V

    invoke-super {p0, v0}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public static hideNormalKeyboard(Landroid/widget/EditText;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private i()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->m:J

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    goto :goto_0
.end method

.method private j()V
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->n:J

    iget-wide v4, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->m:J

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "focusLoseTime:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->n:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "focusGetTime :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->m:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeUse:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUseSafeKeyboard:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "focusGetTxtLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    sub-int/2addr v4, v5

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->o:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pstrLen:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "pstr:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    if-lez v4, :cond_0

    long-to-float v0, v2

    int-to-float v1, v4

    div-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "aovct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->f()V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->d()V

    return-void
.end method

.method static l(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "APKeyboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APKeyboard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static showNormalKeyboard(Landroid/widget/EditText;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "first show fail"

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "second show fail"

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "thrid show fail"

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeSafeKeyboard()V
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->j:Z

    goto :goto_0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->h:Landroid/app/Dialog;

    return-object v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->c:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    goto :goto_0
.end method

.method public getSafeText()Landroid/text/Editable;
    .locals 1

    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->k:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getText()Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v0, "APSafeEditText"

    const-string/jumbo v1, "\u8bd5\u56fe\u975e\u6cd5\u83b7\u53d6\u5bc6\u7801\u503c"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_1
    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isAutoShowSafeKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    return v0
.end method

.method public isOnShowEnableOk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->i:Z

    return v0
.end method

.method public isPasswordType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->j:Z

    return v0
.end method

.method public isTextSelectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->isTextSelectable()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->isTextSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public isUseSafePassKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->g:Z

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APEditText;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->n:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ondetached focusLoseTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->j()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->closeSafeKeyboard()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/ali/user/mobile/ui/widget/APEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->q:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method public setAccessibilityProtect(Z)V
    .locals 3

    const-string/jumbo v0, "APSafeEditText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccessibilityProtect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->q:Z

    return-void
.end method

.method public setAutoShowSafeKeyboard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->isAutoShowSafeKeyboard:Z

    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->h:Landroid/app/Dialog;

    return-void
.end method

.method public setGreatWall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->k:Z

    return-void
.end method

.method public setInputType(I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit16 v4, p1, 0xfff

    const/16 v0, 0x81

    if-ne v4, v0, :cond_2

    move v0, v1

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_5

    const/16 v3, 0xe1

    if-ne v4, v3, :cond_3

    move v3, v1

    :goto_1
    const/16 v5, 0x12

    if-ne v4, v5, :cond_4

    :goto_2
    move v2, v3

    :goto_3
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSafeKeyboard()V

    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->setInputType(I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public setOKText(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method public setOkEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isUseSafeKeyboard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setImeOptions(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setImeOptions(I)V

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public setOnShowEnableOk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->i:Z

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->a(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setSafeKeyboard()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->b()V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e()V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->g()V

    return-void
.end method

.method public setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->j:Z

    return-void
.end method

.method public setUseSafePassKeyboard(ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->g:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setSafeKeyboard()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->k()V

    goto :goto_0
.end method

.method public showSafeKeyboard()V
    .locals 4

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->j:Z

    new-instance v0, Lcom/ali/user/mobile/ui/widget/keyboard/e;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/keyboard/e;-><init>(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "call show normal"

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->l(Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/ui/widget/keyboard/f;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/keyboard/f;-><init>(Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

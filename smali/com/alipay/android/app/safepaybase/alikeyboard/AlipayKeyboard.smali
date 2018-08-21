.class public Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
.super Landroid/widget/LinearLayout;
.source "AlipayKeyboard.java"

# interfaces
.implements Lcom/alipay/android/app/safepaybase/alikeyboard/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;

.field private static synthetic j:[I


# instance fields
.field private a:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field private b:Landroid/widget/EditText;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;",
            "Lcom/alipay/android/app/safepaybase/alikeyboard/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field private g:Lcom/alipay/android/app/safepaybase/alikeyboard/c;

.field private h:Lcom/alipay/android/app/safepaybase/alikeyboard/p;


# direct methods
.method static synthetic $SWITCH_TABLE$com$alipay$android$app$safepaybase$alikeyboard$AliKeyboardType()[I
    .locals 3

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->j:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->values()[Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->j:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->d:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->e:Z

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->g:Lcom/alipay/android/app/safepaybase/alikeyboard/c;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/p;

    invoke-static {p1}, Lcom/alipay/android/app/safepaybase/b/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->d:Z

    iput-boolean v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->e:Z

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->g:Lcom/alipay/android/app/safepaybase/alikeyboard/c;

    iput-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/p;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->$SWITCH_TABLE$com$alipay$android$app$safepaybase$alikeyboard$AliKeyboardType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->e()V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->e()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->d()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/widget/EditText;I)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ltz p2, :cond_2

    if-le p2, v1, :cond_3

    :cond_2
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_3
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->d:Z

    iput-object p2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureEditText;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/alipay/android/app/safepaybase/alikeyboard/h;

    invoke-direct {v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/h;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-direct {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setVisibility(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$1(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    return-void
.end method

.method private b()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/e;

    invoke-direct {v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/e;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 2

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setVisibility(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initializeKeyboard(Landroid/widget/FrameLayout;)V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/k;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/k;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/i;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/i;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureQwertyKeyboard;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setOrientation(I)V

    const-string/jumbo v0, "keyboard_shape"

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/d;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->removeAllViews()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/NumKeyboard;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/f;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/f;-><init>(Landroid/content/Context;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v3, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1, p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/alipay/android/app/safepaybase/alikeyboard/g;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public isShowKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->d:Z

    return v0
.end method

.method public onDel()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-lez v0, :cond_0

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public onInput(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a(Landroid/widget/EditText;I)V

    goto :goto_0
.end method

.method public onOK()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V

    return-void
.end method

.method public onStatisticEvent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/p;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/p;->onStatistic(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setKeyboardActionListener(Lcom/alipay/android/app/safepaybase/alikeyboard/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->g:Lcom/alipay/android/app/safepaybase/alikeyboard/c;

    return-void
.end method

.method public setStatisticInterface(Lcom/alipay/android/app/safepaybase/alikeyboard/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->h:Lcom/alipay/android/app/safepaybase/alikeyboard/p;

    return-void
.end method

.method public showKeyboard(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;J)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->e:Z

    const-wide/16 p3, 0xc8

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->a(Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->d:Z

    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->f:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/app/safepaybase/alikeyboard/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/app/safepaybase/alikeyboard/b;-><init>(Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

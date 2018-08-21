.class public Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;
.super Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;
.source "APSixNumberPwdInputBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;
    }
.end annotation


# static fields
.field public static final DARK:I = 0x11

.field public static final NORMAL:I = 0x10


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/ui/widget/APImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ali/user/mobile/ui/widget/APEditText;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox$a;

.field private g:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->e:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->h:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v1, 0x10

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->e:I

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->h:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->k:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_sixCharInputBox:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_sixCharInputBox_alipay_bgGroup:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method private a()V
    .locals 3

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->d:Ljava/util/Map;

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_ap_six_number_pwd_input:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0, p0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->setData(Lcom/ali/user/mobile/ui/widget/APLinearLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->setPointView(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->a()V

    return-void
.end method

.method static synthetic access$500(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox$a;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->f:Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox$a;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)I
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->e:I

    return v0
.end method

.method static synthetic access$700(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->g:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->k:Ljava/lang/String;

    return-object p1
.end method

.method private setPointView(I)V
    .locals 4

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ge v1, p1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/ui/widget/APImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addSpwdInputWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public clearInput()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->showInputPannel(Landroid/view/View;)V

    return-void
.end method

.method public clearPwd()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->e:I

    return-void
.end method

.method public clearPwdByIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->e:I

    return-void
.end method

.method public bridge synthetic getEditText()Landroid/widget/EditText;
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->getEditText()Lcom/ali/user/mobile/ui/widget/APEditText;

    move-result-object v0

    return-object v0
.end method

.method public getEditText()Lcom/ali/user/mobile/ui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    return-object v0
.end method

.method public getInputValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getInputView()Lcom/ali/user/mobile/ui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    return-object v0
.end method

.method public getInputedPwd(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->d:Ljava/util/Map;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    iget p1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->e:I

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSafeEditText()Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;->onFinishInflate()V

    const/16 v0, 0x10

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->h:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->setBgtype(I)V

    :cond_0
    return-void
.end method

.method public setBgtype(I)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->h:I

    packed-switch v1, :pswitch_data_0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_six_no_bg_left:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_six_no_bg_left_dark:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_six_no_bg_right_dark:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_six_no_bg_midle_dark:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_six_no_bg_right:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_six_no_bg_midle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method protected setData(Lcom/ali/user/mobile/ui/widget/APLinearLayout;)V
    .locals 8

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->mini_linSimplePwdComponent:I

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APLinearLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_rl_1:I

    invoke-virtual {p1, v2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_rl_2:I

    invoke-virtual {p1, v2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_rl_3:I

    invoke-virtual {p1, v2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_rl_4:I

    invoke-virtual {p1, v2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_rl_5:I

    invoke-virtual {p1, v2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->i:Ljava/util/List;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_rl_6:I

    invoke-virtual {p1, v2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_iv_1:I

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_iv_2:I

    invoke-virtual {p1, v2}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v3, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_iv_3:I

    invoke-virtual {p1, v3}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v4, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_iv_4:I

    invoke-virtual {p1, v4}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v5, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_iv_5:I

    invoke-virtual {p1, v5}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v6, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_iv_6:I

    invoke-virtual {p1, v6}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ali/user/mobile/ui/widget/APImageView;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    iget-object v7, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->b:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->mini_spwd_input:I

    invoke-virtual {p1, v1}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ali/user/mobile/ui/widget/APEditText;

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    check-cast v1, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setUseSafePassKeyboard(ZI)V

    :cond_0
    new-instance v1, Lcom/ali/user/mobile/ui/widget/n;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/n;-><init>(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/o;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/o;-><init>(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setPwdInputListener(Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->f:Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox$a;

    return-void
.end method

.method public setPwdInputListener(Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->g:Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox$a;

    return-void
.end method

.method public setPwdText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APSixNumberPwdInputBox;->c:Lcom/ali/user/mobile/ui/widget/APEditText;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

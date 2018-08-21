.class public Lcom/ali/user/mobile/ui/widget/AUInputBox;
.super Landroid/widget/RelativeLayout;
.source "AUInputBox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field public static final DARK:I = 0x11

.field public static final NONE:I = 0x12

.field public static final NORMAL:I = 0x10


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Z

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I

.field private r:F

.field private s:Z

.field private t:F

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Lcom/ali/user/mobile/ui/widget/c/a;

.field private w:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->g:Z

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->i:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Ljava/lang/String;

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->m:I

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->n:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->o:I

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->s:Z

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:Lcom/ali/user/mobile/ui/widget/c/a;

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b()V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a(Landroid/content/res/TypedArray;)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputNameImage(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->k:F

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputNameTextSize(F)V

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->l:F

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputTextSize(F)V

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->m:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputTextColor(I)V

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->n:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputType(I)V

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->o:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setLength(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->p:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->q:I

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHintTextColor(I)V

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->s:Z

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setApprerance(Z)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_15:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->t:F

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->t:F

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->k:F

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->t:F

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->l:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$color;->alipay_colorccc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->q:I

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 3

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputNameImage:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->i:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputName:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->j:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputNameTextSize:I

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->t:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->k:F

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputTextSize:I

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->t:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->l:F

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputTextColor:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->m:I

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->n:I

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_maxLength:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->o:I

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputHint:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->p:Ljava/lang/String;

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputHintTextColor:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$color;->alipay_colorccc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->q:I

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_inputHintSize:I

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->l:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->r:F

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_isBold:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->s:Z

    sget v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_genericInputBox_alipay_specialFuncImg:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->u:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setClearButtonVisiable(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setClearButtonVisiable(Z)V

    goto :goto_0
.end method

.method private a([Landroid/text/InputFilter;)V
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    instance-of v0, v4, Landroid/text/InputFilter$LengthFilter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:Lcom/ali/user/mobile/ui/widget/c/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "InputFilter"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:Lcom/ali/user/mobile/ui/widget/c/a;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v7, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/user/mobile/ui/widget/AUInputBox;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Lcom/ali/user/mobile/ui/widget/c/a;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:Lcom/ali/user/mobile/ui/widget/c/a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ali/user/mobile/ui/widget/AUInputBox;[Landroid/text/InputFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a([Landroid/text/InputFilter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ali/user/mobile/ui/widget/AUInputBox;)F
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->r:F

    return v0
.end method

.method static synthetic access$500(Lcom/ali/user/mobile/ui/widget/AUInputBox;)F
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->l:F

    return v0
.end method

.method static synthetic access$600(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->h:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/z;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/ui/widget/z;-><init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_au_inputbox:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->content:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contentImage:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contentName:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->clearButton:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->specialFuncImgButton:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->contentContainer:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->f:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/ali/user/mobile/ui/widget/aa;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/aa;-><init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d()V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcom/ali/user/mobile/ui/widget/ab;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/ui/widget/ab;-><init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/ac;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/ac;-><init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public getClearButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getEtContent()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getInputName()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public getInputNameContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getInputNameImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getInputedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSpecialFuncImg()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public isNeedShowClearButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->g:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a(ZZ)V

    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->w:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->w:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1, p2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a(ZZ)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public final setApprerance(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public setCleanButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setClearButtonVisiable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->c:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setHint(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method

.method public setInputErrorState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$color;->alipay_colorRed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$color;->alipay_colorBlack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final setInputName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;I)V

    return-void
.end method

.method public final setInputName(Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setInputNameImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setInputNameTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public final setInputTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public final setInputTextSize(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public final setInputType(I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setItemPositionStyle(I)V
    .locals 0

    return-void
.end method

.method public final setLength(I)V
    .locals 4

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method public setNeedShowClearButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->g:Z

    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->w:Landroid/view/View$OnFocusChangeListener;

    :cond_0
    return-void
.end method

.method public setSepciaFunBtn(I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-void
.end method

.method public setSepciaFunBtn(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    check-cast v0, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    :goto_0
    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    goto :goto_0
.end method

.method public setTextFormatter(Lcom/ali/user/mobile/ui/widget/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUInputBox;->v:Lcom/ali/user/mobile/ui/widget/c/a;

    return-void
.end method

.method public setVisualStyle(I)V
    .locals 0

    return-void
.end method

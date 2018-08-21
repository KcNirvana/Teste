.class public Lcom/ali/user/mobile/ui/widget/AUBoxInput;
.super Landroid/widget/RelativeLayout;
.source "AUBoxInput.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/EditText;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 7

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_view_box_input:I

    invoke-virtual {v4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->box_input_real_input:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->box_input_wrapper:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    move v2, v3

    :goto_0
    if-ge v2, p2, :cond_1

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_view_box:I

    invoke-virtual {v4, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v5, -0x1

    iget v6, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->e:I

    if-eq v5, v6, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->e:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->e:I

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v5, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_BoxInput:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_BoxInput_alipay_highlightBg:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_shape_box_hightlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->c:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_BoxInput_alipay_normalBg:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_shape_box_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->d:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_BoxInput_alipay_boxCount:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_BoxInput_alipay_boxSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->e:I

    invoke-direct {p0, p1, v1}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->afterTextChanged(Landroid/text/Editable;)V

    invoke-virtual {p0, p0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/ui/widget/AUBoxInput;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    const-string/jumbo v0, ""

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getRealInput()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/x;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/x;-><init>(Lcom/ali/user/mobile/ui/widget/AUBoxInput;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v2, p4, p2

    mul-int v3, v0, v1

    sub-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v2, v1

    sub-int v1, p5, p3

    sub-int v0, v1, v0

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setBoxCount(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public setHighlightBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setNormalBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

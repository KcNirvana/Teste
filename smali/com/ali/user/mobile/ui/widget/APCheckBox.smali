.class public Lcom/ali/user/mobile/ui/widget/APCheckBox;
.super Landroid/widget/CheckBox;
.source "APCheckBox.java"


# static fields
.field private static c:Lcom/ali/user/mobile/ui/widget/b/a;


# instance fields
.field private a:Z

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a:Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->b:F

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a:Z

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a:Z

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->c:Lcom/ali/user/mobile/ui/widget/b/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->c:Lcom/ali/user/mobile/ui/widget/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/ui/widget/b/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->b:F

    invoke-static {v1, v2}, Lcom/ali/user/mobile/i/c;->b(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/i/c;->a(FI)F

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->getTextSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/i/c;->b(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/i/c;->a(FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/widget/CheckBox;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_emojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_emojiAttr_alipay_dynamicTextSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a:Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->b:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a()V

    return-void
.end method

.method public static getTextSizeGearGetter()Lcom/ali/user/mobile/ui/widget/b/a;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->c:Lcom/ali/user/mobile/ui/widget/b/a;

    return-object v0
.end method

.method public static setTextSizeGearGetter(Lcom/ali/user/mobile/ui/widget/b/a;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->c:Lcom/ali/user/mobile/ui/widget/b/a;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/CheckBox;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-static {p1}, Lcom/ali/user/mobile/ui/widget/v;->a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APCheckBox;->b:F

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APCheckBox;->a()V

    return-void
.end method

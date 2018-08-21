.class public Lcom/ali/user/mobile/ui/widget/APTitleBar;
.super Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
.source "APTitleBar.java"


# static fields
.field public static final TITLE_CENTER:I = 0x11

.field public static final TITLE_LEFT:I = 0x10

.field private static W:[I


# instance fields
.field private A:Lcom/ali/user/mobile/ui/widget/APLinearLayout;

.field private B:Lcom/ali/user/mobile/ui/widget/APButton;

.field private C:Landroid/view/View;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Z

.field private final K:Z

.field private final L:Z

.field private final M:I

.field private final N:I

.field private final O:I

.field private final P:I

.field private final Q:I

.field private R:Z

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private a:Lcom/ali/user/mobile/ui/widget/APTextView;

.field private b:Lcom/ali/user/mobile/ui/widget/APTextView;

.field private c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private d:Lcom/ali/user/mobile/ui/widget/APImageButton;

.field private e:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private f:Landroid/view/View;

.field private g:Lcom/ali/user/mobile/ui/widget/APButton;

.field private h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private i:Lcom/ali/user/mobile/ui/widget/APButton;

.field icon_height:F

.field icon_width:F

.field private j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private k:Landroid/view/View;

.field private l:Lcom/ali/user/mobile/ui/widget/APButton;

.field private m:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field public mDefaultScrollHeight:I

.field margin_left_generic:F

.field margin_right:F

.field margin_right_generic:F

.field margin_seperator:F

.field private n:Landroid/view/View;

.field private o:Lcom/ali/user/mobile/ui/widget/APButton;

.field private p:Lcom/ali/user/mobile/ui/widget/APLinearLayout;

.field private q:Lcom/ali/user/mobile/ui/widget/APProgressBar;

.field private r:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private s:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private t:Lcom/ali/user/mobile/ui/widget/APButton;

.field touch_height:F

.field touch_width:F

.field private u:Lcom/ali/user/mobile/ui/widget/APButton;

.field private v:Landroid/view/View;

.field private w:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private x:Lcom/ali/user/mobile/ui/widget/APImageView;

.field private y:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

.field private z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->W:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1e
        0x6b
        0xbf
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->D:Landroid/content/res/ColorStateList;

    iput-boolean v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->R:Z

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->margin_right:F

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->margin_right_generic:F

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->margin_left_generic:F

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_height:F

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_width:F

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_height:F

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_width:F

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->margin_seperator:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43140000    # 148.0f

    invoke-static {v0, v1}, Lcom/ali/user/mobile/i/c;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->mDefaultScrollHeight:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_ap_title_bar:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_titleText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->F:Ljava/lang/String;

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_genericButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->G:Ljava/lang/String;

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_genericButtonIcon:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->M:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_rightText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->H:Ljava/lang/String;

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_rightButtonIcon:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->N:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_leftText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->I:Ljava/lang/String;

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_leftButtonIcon:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->O:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_showSwitch:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->J:Z

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_showGenericButton:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->K:Z

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_showBackButton:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->L:Z

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_backButtonIcon:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->Q:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_titleType:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->P:I

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_titleBar_alipay_titleTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->D:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_emojiAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$styleable;->alipay_emojiAttr_alipay_dynamicTextSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->R:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_icon_margin_right_generic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->margin_right_generic:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_icon_margin_left_generic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->margin_left_generic:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_icon_margin_seperator:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->margin_seperator:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_icon_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->margin_right:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_icon_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_height:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_width:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_icon_touch_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_height:F

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_icon_touch_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_width:F

    return-void
.end method

.method private a()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->o:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->o:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private a(IZ)V
    .locals 6

    const/4 v5, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->m:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->e:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->s:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    aput-object v2, v1, v5

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-lt p1, v5, :cond_0

    if-eqz p2, :cond_0

    sget v4, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_title_bar_btn_bg_selector:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/ali/user/mobile/ui/widget/APButton;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v0, v1

    cmpl-float v0, v0, p6

    if-lez v0, :cond_1

    float-to-int v0, p6

    int-to-float v2, v2

    mul-float/2addr v2, p6

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v1, v1

    :goto_1
    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p7, p1}, Lcom/ali/user/mobile/ui/widget/APButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    int-to-float v1, v0

    sub-float v1, p6, v1

    div-float/2addr v1, v3

    add-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    sub-float v0, p6, v0

    div-float/2addr v0, v3

    add-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const-string/jumbo v0, "APTitleBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "leftMargin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", rightMargin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private a(Lcom/ali/user/mobile/ui/widget/APButton;FF)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, p3

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    const-class v0, Landroid/view/View;

    invoke-virtual {p1}, Lcom/ali/user/mobile/ui/widget/APButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ali/user/mobile/ui/widget/APButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/ali/user/mobile/ui/widget/APTitleBar;)Lcom/ali/user/mobile/ui/widget/APProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->q:Lcom/ali/user/mobile/ui/widget/APProgressBar;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v1, -0x2

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->P:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->w:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(IZ)V
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/ali/user/mobile/ui/widget/APButton;

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->i:Lcom/ali/user/mobile/ui/widget/APButton;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->t:Lcom/ali/user/mobile/ui/widget/APButton;

    aput-object v2, v1, v6

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->o:Lcom/ali/user/mobile/ui/widget/APButton;

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    if-lt p1, v6, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$color;->alipay_title_bar_text_button_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$color;->alipay_title_bar_text_button_color_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/s;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/s;-><init>(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_no_back_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_no_back_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->y:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public attachFlagInThirdButton(Landroid/view/View;IIII)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->T:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_third_button_parent:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->T:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->T:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public attachFlagInTitleLinearLayout(Landroid/view/View;IIII)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->U:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_top_ll:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->U:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->U:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public attachNewFlagView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_rel_container:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->V:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->V:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public changeBlue()V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$color;->alipay_HOME_PAGE_TITLEBAR_BG:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->changeTitleBarColorStyle(I)V

    return-void
.end method

.method public changeTitleBarColorStyle(I)V
    .locals 3

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->mDefaultScrollHeight:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->handleScrollChange(ILcom/ali/user/mobile/ui/widget/d/a;Z)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public clearTitleTextClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->x:Lcom/ali/user/mobile/ui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->w:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->w:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getBackButton()Lcom/ali/user/mobile/ui/widget/APButton;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->u:Lcom/ali/user/mobile/ui/widget/APButton;

    return-object v0
.end method

.method public getBlankMid()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->E:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getContainerRightButton()Lcom/ali/user/mobile/ui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    return-object v0
.end method

.method public getFeedbackButton()Lcom/ali/user/mobile/ui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->o:Lcom/ali/user/mobile/ui/widget/APButton;

    return-object v0
.end method

.method public getGenericButton()Lcom/ali/user/mobile/ui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    return-object v0
.end method

.method public getGenericButtonLeftLine()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->f:Landroid/view/View;

    return-object v0
.end method

.method public getGenericButtonParent()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->e:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getImageBackButton()Lcom/ali/user/mobile/ui/widget/APImageButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    return-object v0
.end method

.method public getLeftButton()Lcom/ali/user/mobile/ui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->i:Lcom/ali/user/mobile/ui/widget/APButton;

    return-object v0
.end method

.method public getLeftButtonParent()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getLeftGenericButton()Lcom/ali/user/mobile/ui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->t:Lcom/ali/user/mobile/ui/widget/APButton;

    return-object v0
.end method

.method public getLeftLine()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->v:Landroid/view/View;

    return-object v0
.end method

.method public getLeftSwitchContainer()Lcom/ali/user/mobile/ui/widget/APLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->A:Lcom/ali/user/mobile/ui/widget/APLinearLayout;

    return-object v0
.end method

.method public getRightButton()Lcom/ali/user/mobile/ui/widget/APButton;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    return-object v0
.end method

.method public getRightButtonParent()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getSecondTitleTextView()Lcom/ali/user/mobile/ui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    return-object v0
.end method

.method public getSwitchContainer()Lcom/ali/user/mobile/ui/widget/APLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->p:Lcom/ali/user/mobile/ui/widget/APLinearLayout;

    return-object v0
.end method

.method public getThirdButtonParent()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getTitleBarTitleRl()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->y:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getTitleBarTopRl()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->w:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getTitleLinearLayout()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public getTitleTextView()Lcom/ali/user/mobile/ui/widget/APTextView;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    return-object v0
.end method

.method public getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->r:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    return-object v0
.end method

.method public handleScrollChange(IILcom/ali/user/mobile/ui/widget/d/a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->handleScrollChange(IILcom/ali/user/mobile/ui/widget/d/a;Z)V

    return-void
.end method

.method public handleScrollChange(IILcom/ali/user/mobile/ui/widget/d/a;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->mDefaultScrollHeight:I

    :cond_0
    if-gez p2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-lez p2, :cond_9

    new-instance v2, Ljava/math/BigDecimal;

    mul-int/lit8 v3, p2, 0x64

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    move v2, v0

    :goto_1
    const/16 v0, 0x50

    if-lt v2, v0, :cond_3

    if-nez p4, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    sget v3, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_title_bar_back_btn_white_selector:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->v:Landroid/view/View;

    sget v3, Lcom/ali/user/mobile/security/ui/R$color;->alipay_whiteA20_line:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    :goto_2
    div-int/lit8 v0, v2, 0x14

    rem-int/lit8 v2, v2, 0x14

    if-lt v0, v1, :cond_5

    move v0, v1

    :cond_5
    invoke-direct {p0, v0, p4}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(IZ)V

    invoke-direct {p0, v0, p4}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b(IZ)V

    if-lez v0, :cond_7

    if-ge v0, v1, :cond_7

    sget-object v1, Lcom/ali/user/mobile/ui/widget/APTitleBar;->W:[I

    aget v1, v1, v0

    sget-object v3, Lcom/ali/user/mobile/ui/widget/APTitleBar;->W:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/ali/user/mobile/ui/widget/APTitleBar;->W:[I

    aget v0, v4, v0

    sub-int v0, v3, v0

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->r:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_6
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    sget v3, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_title_bar_back_btn_selector:I

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->v:Landroid/view/View;

    sget v3, Lcom/ali/user/mobile/security/ui/R$color;->alipay_titlebar_line_bg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    if-ne v0, v1, :cond_1

    :cond_8
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->r:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/ali/user/mobile/ui/widget/APTitleBar;->W:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_9
    move v2, v0

    goto/16 :goto_1
.end method

.method public handleScrollChange(ILcom/ali/user/mobile/ui/widget/d/a;)V
    .locals 2

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->mDefaultScrollHeight:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->handleScrollChange(IILcom/ali/user/mobile/ui/widget/d/a;Z)V

    return-void
.end method

.method public handleScrollChange(ILcom/ali/user/mobile/ui/widget/d/a;Z)V
    .locals 1

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->mDefaultScrollHeight:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->handleScrollChange(IILcom/ali/user/mobile/ui/widget/d/a;Z)V

    return-void
.end method

.method public hideBackButton()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_no_back_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_no_back_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->y:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_title_second:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APTextView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_generic_button_parent:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->e:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_generic_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->f:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_generic_button:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_back_button:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APImageButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_back_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->switch_container:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->p:Lcom/ali/user/mobile/ui/widget/APLinearLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_left_button_parent:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_left_button:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->i:Lcom/ali/user/mobile/ui/widget/APButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_right_button_parent:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_right_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->k:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_right_button:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_third_button_parent:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_third_button_right_line:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->C:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_third_button:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_progress:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APProgressBar;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->q:Lcom/ali/user/mobile/ui/widget/APProgressBar;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_top_ll:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_feedback_button_parent:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->m:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_feedback_button_left_line:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->n:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_feedback_button:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->o:Lcom/ali/user/mobile/ui/widget/APButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titlebar_kenel:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->r:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_left_generic_button_parent:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->s:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_left_generic_button:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APButton;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->t:Lcom/ali/user/mobile/ui/widget/APButton;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_left_line:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->v:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_top_rl:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->w:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->menu_click_icon:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->x:Lcom/ali/user/mobile/ui/widget/APImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_title_rl:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->y:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->left_switch_container:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->A:Lcom/ali/user/mobile/ui/widget/APLinearLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->title_bar_blank_mid:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->E:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->u:Lcom/ali/user/mobile/ui/widget/APButton;

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/r;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/r;-><init>(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setOnTextChangeListener(Lcom/ali/user/mobile/ui/widget/APTextView$a;)V

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->F:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->G:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b()V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c()V

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->Q:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->Q:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setImageBackButtonIcon(I)V

    :cond_2
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->M:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->M:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->O:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->O:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->N:I

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->N:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->D:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->R:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->R:Z

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setDynamicTextSize(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->R:Z

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setDynamicTextSize(Z)V

    :cond_5
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTextView;->isDynamicTextSize()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ali/user/mobile/ui/widget/APTextView;->getTextSizeGearGetter()Lcom/ali/user/mobile/ui/widget/b/a;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/ali/user/mobile/ui/widget/b/a;->a()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setMaxEms(I)V

    :cond_6
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->K:Z

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->J:Z

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setSwitchContainerVisiable(Z)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->I:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setLeftButtonText(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->H:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setRightButtonText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->i:Lcom/ali/user/mobile/ui/widget/APButton;

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_width:F

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(Lcom/ali/user/mobile/ui/widget/APButton;FF)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_width:F

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(Lcom/ali/user/mobile/ui/widget/APButton;FF)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_height:F

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->touch_width:F

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(Lcom/ali/user/mobile/ui/widget/APButton;FF)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_redpoint_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_redpoint_left_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->e:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v3}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v4}, Lcom/ali/user/mobile/ui/widget/APButton;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v4}, Lcom/ali/user/mobile/ui/widget/APButton;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->e:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v5}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v6}, Lcom/ali/user/mobile/ui/widget/APButton;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v5}, Lcom/ali/user/mobile/ui/widget/APButton;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBackButtonText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCloseButton(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_title_bar_close_btn_selector:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFeedbackButtonVisible(Z)V
    .locals 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->o:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->m:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_height:F

    iget v6, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_width:F

    iget-object v7, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/ali/user/mobile/ui/widget/APButton;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setGenericButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setGenericButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setGenericButtonText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APButton;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGenericButtonVisiable(Z)V
    .locals 3

    const/16 v1, 0x8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->g:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->e:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setImageBackButtonIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setImageResource(I)V

    return-void
.end method

.method public setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->i:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_height:F

    iget v6, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_width:F

    iget-object v7, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->i:Lcom/ali/user/mobile/ui/widget/APButton;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/ali/user/mobile/ui/widget/APButton;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setLeftButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->i:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->i:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setLeftGenericButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->t:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_height:F

    iget v6, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_width:F

    iget-object v7, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->t:Lcom/ali/user/mobile/ui/widget/APButton;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/ali/user/mobile/ui/widget/APButton;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_height:F

    iget v6, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_width:F

    iget-object v7, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/ali/user/mobile/ui/widget/APButton;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setRightButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->l:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APButton;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setSecondTitleTextView(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_second_title_back_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_ll_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v1, v3, v0, v3, v3}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSecondTitleTextView(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_second_title_back_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->h:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->j:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_ll_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v1, v3, v0, v3, v3}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSecondTitleTextViewGone()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->b:Lcom/ali/user/mobile/ui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_ll_padding_orginial:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSwitchContainerVisiable(Z)V
    .locals 2

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->p:Lcom/ali/user/mobile/ui/widget/APLinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APLinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setThirdButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_height:F

    iget v6, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->icon_width:F

    iget-object v7, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a(Landroid/graphics/drawable/Drawable;Landroid/view/ViewGroup$MarginLayoutParams;FFFFLcom/ali/user/mobile/ui/widget/APButton;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a()V

    return-void
.end method

.method public setThirdButtonIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setThirdButtonIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThirdButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setThirdButtonVisiable(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->B:Lcom/ali/user/mobile/ui/widget/APButton;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->a:Lcom/ali/user/mobile/ui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->x:Lcom/ali/user/mobile/ui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->w:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->w:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showBackButton()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->d:Lcom/ali/user/mobile/ui/widget/APImageButton;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_show_back_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_title_bar_show_back_right_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->y:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public startProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->q:Lcom/ali/user/mobile/ui/widget/APProgressBar;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/t;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/t;-><init>(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APProgressBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->q:Lcom/ali/user/mobile/ui/widget/APProgressBar;

    new-instance v1, Lcom/ali/user/mobile/ui/widget/u;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/ui/widget/u;-><init>(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APProgressBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unAttachFlagFromThirdButton(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->T:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->z:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->T:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->T:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public unAttachFlagFromTitleLinearLayout(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->U:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->c:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->U:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->U:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public unAttachNewFlagView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->V:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->V:Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APRelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTitleBar;->S:Landroid/view/View;

    :cond_1
    return-void
.end method

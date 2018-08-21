.class public Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;
.super Landroid/view/View;
.source "LetterIndexBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;
    }
.end annotation


# static fields
.field public static final INDEX_COUNT_DEFAULT:I = 0x1b

.field public static final SEARCH_ICON_LETTER:Ljava/lang/String; = ""


# instance fields
.field private count:I

.field private mIndex:I

.field private mIndexLetter:[Ljava/lang/String;

.field private mItemHeight:I

.field private mItemPadding:I

.field private mListener:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;

.field private mNeedIndex:[Z

.field private mOrgTextSzie:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private mSeatchIcon:Landroid/graphics/drawable/Drawable;

.field private mTouching:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const v1, -0xa2a2a3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mOrgTextSzie:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mTouching:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const v10, -0x77888878

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v8, 0x0

    iget v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mOrgTextSzie:I

    iget v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    if-le v5, v9, :cond_2

    iget v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    :goto_0
    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    int-to-float v10, v5

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndexLetter:[Ljava/lang/String;

    if-nez v9, :cond_7

    const/16 v3, 0x41

    const/4 v1, 0x0

    :goto_1
    iget v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    if-lt v1, v9, :cond_3

    :cond_1
    return-void

    :cond_2
    iget v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mOrgTextSzie:I

    goto :goto_0

    :cond_3
    iget v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    mul-int/2addr v9, v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    iget v10, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemPadding:I

    add-int v8, v9, v10

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    aget-boolean v9, v9, v1

    if-eqz v9, :cond_5

    :cond_4
    iget v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    add-int/lit8 v9, v9, -0x1

    if-ne v1, v9, :cond_6

    const-string/jumbo v7, "#"

    :goto_2
    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v6, v9

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v2, v9, 0x2

    int-to-float v9, v2

    int-to-float v10, v8

    iget-object v11, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v9, v3, 0x1

    int-to-char v4, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move v3, v4

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_3
    iget v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    if-ge v1, v9, :cond_1

    iget v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    mul-int/2addr v9, v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    iget v10, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemPadding:I

    add-int v8, v9, v10

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    aget-boolean v9, v9, v1

    if-eqz v9, :cond_9

    :cond_8
    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndexLetter:[Ljava/lang/String;

    aget-object v7, v9, v1

    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v10, "M"

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v6, v9

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v2, v9, 0x2

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mSeatchIcon:Landroid/graphics/drawable/Drawable;

    sub-int v10, v8, v2

    add-int v11, v6, v2

    add-int v12, v6, v8

    sub-int/2addr v12, v2

    invoke-virtual {v9, v2, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mSeatchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget-object v9, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v6, v9

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v9, v6

    div-int/lit8 v2, v9, 0x2

    int-to-float v9, v2

    int-to-float v10, v8

    iget-object v11, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemPadding:I

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mOrgTextSzie:I

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    invoke-virtual {p0, v1, p2}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->setMeasuredDimension(II)V

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    return v5

    :pswitch_0
    iput-boolean v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mTouching:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v3

    sub-int v3, v2, v3

    iget v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    div-int v1, v3, v4

    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndex:I

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    :cond_1
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    if-ge v1, v3, :cond_0

    if-ltz v1, :cond_0

    iput v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndex:I

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mListener:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mListener:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;

    iget v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndex:I

    invoke-interface {v3, v4}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;->onIndexChange(I)V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mTouching:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIndexChangeListener(Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mListener:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;

    return-void
.end method

.method public setIndexLetter([Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndexLetter:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndexLetter:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndex:I

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    goto :goto_0
.end method

.method public setIndexMark([Z)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    goto :goto_0
.end method

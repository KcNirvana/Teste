.class public Lcom/miui/gamebooster/customview/GameAdImageView;
.super Lcom/miui/common/customview/AdImageView;
.source ""


# instance fields
.field private gR:Z

.field private gS:I

.field private gT:I

.field private gU:Landroid/graphics/Bitmap;

.field private gV:Landroid/widget/ImageView;

.field private gW:I

.field private gX:I

.field private gY:I

.field private gZ:I

.field private ha:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/customview/AdImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gR:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/GameAdImageView;->jJ(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/common/customview/AdImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gR:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/GameAdImageView;->jJ(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/customview/AdImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gR:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/GameAdImageView;->jJ(Landroid/content/Context;)V

    return-void
.end method

.method private jH(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gW:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gX:I

    iget v2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gY:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gV:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gV:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gV:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->ha:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static jI(Landroid/content/Context;)I
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private jJ(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/miui/gamebooster/customview/GameAdImageView;->jI(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gY:I

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gZ:I

    return-void
.end method

.method private jK(Landroid/view/View;II)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p2, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-le p2, v0, :cond_2

    :cond_1
    return v3

    :cond_2
    if-lt p3, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    if-le p3, v0, :cond_4

    :cond_3
    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private jL()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gV:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gV:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gV:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gR:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/common/customview/AdImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gS:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gT:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gS:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gW:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/GameAdImageView;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gU:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gU:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gU:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/customview/GameAdImageView;->jH(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->destroyDrawingCache()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p0, v0, v1}, Lcom/miui/gamebooster/customview/GameAdImageView;->jK(Landroid/view/View;II)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gT:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gZ:I

    if-le v0, v1, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->jL()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/GameAdImageView;->playSoundEffect(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->callOnClick()Z

    :cond_2
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/gamebooster/customview/GameAdImageView;->jL()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public jM(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gR:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/GameAdImageView;->gV:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/customview/AdImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

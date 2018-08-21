.class public Lcom/ali/user/mobile/ui/widget/APTextView;
.super Landroid/widget/TextView;
.source "APTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/mobile/ui/widget/APTextView$a;
    }
.end annotation


# static fields
.field private static i:Lcom/ali/user/mobile/ui/widget/a/a;

.field private static j:Lcom/ali/user/mobile/ui/widget/b/a;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:F

.field private f:I

.field private g:Z

.field private h:I

.field private k:Lcom/ali/user/mobile/ui/widget/APTextView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->c:I

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->d:Z

    const/16 v0, 0x270f

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->e:F

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->c:I

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->d:Z

    const/16 v0, 0x270f

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->c:I

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->d:Z

    const/16 v0, 0x270f

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/ui/widget/APTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APTextView;->j:Lcom/ali/user/mobile/ui/widget/b/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APTextView;->j:Lcom/ali/user/mobile/ui/widget/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/ui/widget/b/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->e:F

    invoke-static {v1, v2}, Lcom/ali/user/mobile/i/c;->b(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/i/c;->a(FI)F

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getTextSize()F

    move-result v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/i/c;->b(Landroid/content/Context;F)F

    move-result v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/i/c;->a(FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/ui/widget/APTextView;->b(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->e:F

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->a()V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private b()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string/jumbo v3, "mSingleLine"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    const/4 v0, -0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    goto :goto_0
.end method

.method public static getParseEmotionListener()Lcom/ali/user/mobile/ui/widget/a/a;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APTextView;->i:Lcom/ali/user/mobile/ui/widget/a/a;

    return-object v0
.end method

.method public static getTextSizeGearGetter()Lcom/ali/user/mobile/ui/widget/b/a;
    .locals 1

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APTextView;->j:Lcom/ali/user/mobile/ui/widget/b/a;

    return-object v0
.end method

.method public static setParseEmotionListener(Lcom/ali/user/mobile/ui/widget/a/a;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/ui/widget/APTextView;->i:Lcom/ali/user/mobile/ui/widget/a/a;

    return-void
.end method

.method public static setTextSizeGearGetter(Lcom/ali/user/mobile/ui/widget/b/a;)V
    .locals 0

    sput-object p0, Lcom/ali/user/mobile/ui/widget/APTextView;->j:Lcom/ali/user/mobile/ui/widget/b/a;

    return-void
.end method


# virtual methods
.method public getEmojiSize()I
    .locals 3

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->c:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/ali/user/mobile/i/c;->a(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->c:I

    goto :goto_0
.end method

.method public getOnTextChangeListener()Lcom/ali/user/mobile/ui/widget/APTextView$a;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->k:Lcom/ali/user/mobile/ui/widget/APTextView$a;

    return-object v0
.end method

.method public isDynamicTextSize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->d:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->a()V

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->f:I

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->g:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getLeftPaddingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getRightPaddingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    const/16 v2, 0x270f

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_4
    invoke-direct {p0, v0}, Lcom/ali/user/mobile/ui/widget/APTextView;->a(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->b:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->b()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/ali/user/mobile/ui/widget/APTextView;->j:Lcom/ali/user/mobile/ui/widget/b/a;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ali/user/mobile/ui/widget/APTextView;->j:Lcom/ali/user/mobile/ui/widget/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/ui/widget/b/a;->a()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/ali/user/mobile/i/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/i/c;->a(FI)F

    move-result v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getTextSize()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/TextView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setDynamicTextSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->d:Z

    return-void
.end method

.method public setEmojiSize(I)V
    .locals 0

    iput p1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->c:I

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-static {p1}, Lcom/ali/user/mobile/ui/widget/v;->a(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTextChangeListener(Lcom/ali/user/mobile/ui/widget/APTextView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->k:Lcom/ali/user/mobile/ui/widget/APTextView$a;

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->a:Z

    return-void
.end method

.method public setSupportEmotion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->b:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->b:Z

    if-eqz v0, :cond_6

    :cond_0
    if-eqz p1, :cond_6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ali/user/mobile/ui/widget/APTextView;->i:Lcom/ali/user/mobile/ui/widget/a/a;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ali/user/mobile/ui/widget/APTextView;->i:Lcom/ali/user/mobile/ui/widget/a/a;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getEmojiSize()I

    move-result v3

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/ali/user/mobile/ui/widget/a/a;->a(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->g:Z

    :cond_1
    iget v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->f:I

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->g:Z

    if-eqz v1, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-direct {p0, v0, p2}, Lcom/ali/user/mobile/ui/widget/APTextView;->a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->k:Lcom/ali/user/mobile/ui/widget/APTextView$a;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->k:Lcom/ali/user/mobile/ui/widget/APTextView$a;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/ali/user/mobile/ui/widget/APTextView$a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_5
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->k:Lcom/ali/user/mobile/ui/widget/APTextView$a;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->k:Lcom/ali/user/mobile/ui/widget/APTextView$a;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/ali/user/mobile/ui/widget/APTextView$a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setTextSize(IF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/APTextView;->e:F

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/APTextView;->a()V

    return-void
.end method

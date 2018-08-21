.class public Lcom/alipay/birdnest/view/TextViewWrapper;
.super Landroid/widget/TextView;
.source "TextViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/birdnest/view/TextViewWrapper$a;
    }
.end annotation


# static fields
.field private static final MAX_ELLIPISE_WIDTH:I = 0x270f

.field private static final NOT_SINLE_LINE:I = 0x0

.field private static final SINGLE_LINE:I = 0x1

.field private static final UNKNOW_SINGLE_LINE:I = -0x1


# instance fields
.field private ellipsizeWidth:I

.field private emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$d;

.field private emojiSize:I

.field private onTextChangeListener:Lcom/alipay/birdnest/view/TextViewWrapper$a;

.field private replaceCount:I

.field private supportEmoji:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiSize:I

    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiSize:I

    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/birdnest/view/TextViewWrapper;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiSize:I

    const/16 v0, 0x270f

    iput v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    invoke-direct {p0, p1, p2}, Lcom/alipay/birdnest/view/TextViewWrapper;->initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getEmojiSize()I
    .locals 1

    iget v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiSize:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x8

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiSize:I

    goto :goto_0
.end method

.method private initSelfDefAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method private isSingleLine()I
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

.method private singeLineRender(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private singleLineEllipsize(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

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

    invoke-direct {p0, p1}, Lcom/alipay/birdnest/view/TextViewWrapper;->updateEllipsizeWidth(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/alipay/birdnest/view/TextViewWrapper;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateEllipsizeWidth(I)V
    .locals 2

    iget v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    goto :goto_0
.end method


# virtual methods
.method public getOnTextChangeListener()Lcom/alipay/birdnest/view/TextViewWrapper$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->onTextChangeListener:Lcom/alipay/birdnest/view/TextViewWrapper$a;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->supportEmoji:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->replaceCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->isSingleLine()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getLeftPaddingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getRightPaddingOffset()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    const/16 v2, 0x270f

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->ellipsizeWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/birdnest/view/TextViewWrapper;->singleLineEllipsize(I)V

    goto :goto_0
.end method

.method public prepareEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->supportEmoji:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$d;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/birdnest/api/BirdNestEngine$d;->prepareContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public setEmojiProvider(Lcom/alipay/birdnest/api/BirdNestEngine$d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$d;

    return-void
.end method

.method public setEmojiSize(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiSize:I

    return-void
.end method

.method public setOnTextChangeListener(Lcom/alipay/birdnest/view/TextViewWrapper$a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->onTextChangeListener:Lcom/alipay/birdnest/view/TextViewWrapper$a;

    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->supportEmoji:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4

    iget-boolean v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->supportEmoji:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$d;

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getEmojiSize()I

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/birdnest/api/BirdNestEngine$d;->renderEmojiReturncount(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->replaceCount:I

    iget v1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->replaceCount:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->isSingleLine()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/alipay/birdnest/view/TextViewWrapper;->singeLineRender(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    iget-object v1, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->onTextChangeListener:Lcom/alipay/birdnest/view/TextViewWrapper$a;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-object v0, p0, Lcom/alipay/birdnest/view/TextViewWrapper;->onTextChangeListener:Lcom/alipay/birdnest/view/TextViewWrapper$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    goto :goto_1
.end method

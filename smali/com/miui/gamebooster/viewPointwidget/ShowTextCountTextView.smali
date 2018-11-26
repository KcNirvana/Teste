.class public Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;
.super Landroid/widget/TextView;
.source ""


# static fields
.field private static final fr:Ljava/lang/String;


# instance fields
.field private fA:Z

.field private fB:Z

.field private fC:F

.field private fD:F

.field private fE:Lcom/miui/gamebooster/viewPointwidget/d;

.field private fF:Ljava/lang/String;

.field private fG:Ljava/util/ArrayList;

.field private fs:I

.field private ft:I

.field private fu:I

.field private fv:Ljava/lang/String;

.field private fw:I

.field private fx:Ljava/lang/String;

.field private fy:Z

.field private fz:Z

.field private mCount:I

.field private mTextColor:I

.field private mTextSize:I

.field private mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070997

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fr:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fv:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fz:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fy:Z

    iput-boolean v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fA:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fD:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fC:F

    iput v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->ft:I

    iput v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fs:I

    iput v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fu:I

    iput-boolean v2, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fB:Z

    sget-object v0, Lcom/miui/securitycenter/d;->FolderTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getMaxLines()I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fw:I

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fw:I

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "foldLine must not less than 1"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTextColor:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTextSize:I

    return-void
.end method

.method private iJ(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 11

    const v10, 0x7f0c0057

    const/16 v9, 0x21

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTotalCount:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mCount:I

    sub-int/2addr v1, v4

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v10, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v4, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    const-string/jumbo v1, "FolderTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTextColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v3, v2, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTextSize:I

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1, v3, v2, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v10, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fB:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private iK(Ljava/lang/String;I)I
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iM(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "A"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iM(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iL()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iL()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iL()I

    move-result v0

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private iM(Ljava/lang/String;)Landroid/text/Layout;
    .locals 8

    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fD:F

    iget v6, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fC:F

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private iN()V
    .locals 9

    const/16 v8, 0x21

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iM(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iL()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fE:Lcom/miui/gamebooster/viewPointwidget/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fE:Lcom/miui/gamebooster/viewPointwidget/d;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/miui/gamebooster/viewPointwidget/d;->iS(Z)V

    :cond_0
    if-eqz v0, :cond_3

    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fG:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fG:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/a/f;

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fq()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-gt v3, v4, :cond_2

    new-instance v3, Lcom/miui/gamebooster/a/o;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fs()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7}, Lcom/miui/gamebooster/a/o;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fr()I

    move-result v4

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fq()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v4, "#14B9C7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fr()I

    move-result v4

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fq()I

    move-result v0

    invoke-virtual {v1, v3, v4, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/miui/gamebooster/viewPointwidget/c;->getInstance()Lcom/miui/gamebooster/viewPointwidget/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fz:Z

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iJ(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, v0

    :goto_2
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fG:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fG:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/a/f;

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fq()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-gt v3, v4, :cond_4

    new-instance v3, Lcom/miui/gamebooster/a/o;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fs()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7}, Lcom/miui/gamebooster/a/o;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fr()I

    move-result v4

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fq()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v4, "#14B9C7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fr()I

    move-result v4

    invoke-virtual {v0}, Lcom/miui/gamebooster/a/f;->fq()I

    move-result v0

    invoke-virtual {v1, v3, v4, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_4
    invoke-direct {p0, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iR(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :cond_5
    move-object v1, v0

    goto :goto_2
.end method

.method private iP(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, 0x0

    div-int/lit8 v1, v0, 0x2

    invoke-direct {p0, p1, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iK(Ljava/lang/String;I)I

    move-result v0

    move v3, v1

    move v1, v4

    move v9, v2

    move v2, v0

    move v0, v9

    :goto_0
    if-eqz v2, :cond_2

    if-le v0, v1, :cond_2

    const-string/jumbo v5, "FolderTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u4f7f\u7528\u4e8c\u5206\u6cd5: tailorText() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->ft:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->ft:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_1

    add-int/lit8 v0, v3, -0x1

    :cond_0
    :goto_1
    add-int v2, v1, v0

    div-int/lit8 v3, v2, 0x2

    invoke-direct {p0, p1, v3}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iK(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_1
    if-gez v2, :cond_0

    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "FolderTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mid is: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private iQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "FolderTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u4f7f\u7528\u5907\u7528\u65b9\u6cd5: tailorTextBackUp() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fs:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTotalCount:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fB:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTotalCount:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTotalCount:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0c0057

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iM(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fw:I

    if-le v2, v3, :cond_3

    iget v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fw:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    if-gt v0, v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v0
.end method

.method private iR(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fA:Z

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public iI(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTotalCount:I

    return-void
.end method

.method public iL()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fw:I

    return v0
.end method

.method public iO(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mTextColor:I

    return-void
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string/jumbo v0, "FolderTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDraw() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fu:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", getMeasuredHeight() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fy:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iN()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fy:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fA:Z

    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fC:F

    iput p2, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fD:F

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fF:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fy:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mCount:I

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/a/e;->fn(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fG:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/a/e;->fp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->fx:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->mCount:I

    goto :goto_0
.end method

.class public Lcom/flybird/FBLabel;
.super Lcom/flybird/FBView;
.source "FBLabel.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flybird/FBLabel$MyURLSpan;
    }
.end annotation


# static fields
.field public static final KEY_COLOR_ATTRI:Ljava/lang/String; = "color"

.field public static final KEY_SIZE_ATTRI:Ljava/lang/String; = "size"

.field private static final TAG:Ljava/lang/String; = "FBLabel"


# instance fields
.field private mDefaultColor:I

.field private mDisplay:Ljava/lang/String;

.field private mOverflow:Ljava/lang/String;

.field private mSupportEmoji:Z

.field private mSupportSelectable:Z

.field private mTextOverflow:Ljava/lang/String;

.field public mTextStr:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mWebkit_box_orient:Ljava/lang/String;

.field private mWebkit_line_clamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/flybird/FBLabel;->newInstance(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->mTextOverflow:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->mOverflow:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->mWebkit_line_clamp:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->mWebkit_box_orient:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->mDisplay:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/flybird/FBLabel;->mSupportEmoji:Z

    iput-boolean v1, p0, Lcom/flybird/FBLabel;->mSupportSelectable:Z

    const-string/jumbo v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/flybird/FBLabel;->mDefaultColor:I

    iget-object v0, p0, Lcom/flybird/FBLabel;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/flybird/FBLabel;->mDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/flybird/FBLabel;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private static hasHtmlEscapeChar(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "<font"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "&quot;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "&amp;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "&lt;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "&gt;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "&nbsp;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "&le;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "&ge;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "&apos;"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static final isRichText(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "<font "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/flybird/FBLabel;->hasHtmlEscapeChar(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "<a "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static newInstance(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 1

    new-instance v0, Lcom/flybird/FBBorderText;

    invoke-direct {v0, p0}, Lcom/flybird/FBBorderText;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private processAnchorElement(Landroid/widget/TextView;Ljava/lang/String;Landroid/text/Spanned;)V
    .locals 16

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, -0x1

    const-string/jumbo v2, "<a"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string/jumbo v1, ">"

    const-string/jumbo v3, "<a"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    const/4 v3, 0x0

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    const/4 v6, -0x1

    if-eq v2, v6, :cond_d

    const/4 v6, -0x1

    if-eq v1, v6, :cond_d

    const-string/jumbo v6, "</a>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_d

    const-string/jumbo v6, "<a"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "href="

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v1, -0x1

    if-eq v9, v1, :cond_2

    const-string/jumbo v1, "href="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v7, v9, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v7, v1, :cond_2

    const/4 v1, -0x1

    const/4 v6, -0x1

    if-eq v7, v6, :cond_f

    const-string/jumbo v1, " "

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1
    move v6, v1

    :goto_0
    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    :try_start_0
    invoke-virtual {v2, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    const-string/jumbo v1, ""

    invoke-virtual {v2, v10, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sub-int v2, v7, v9

    sub-int/2addr v6, v9

    :try_start_1
    invoke-virtual {v10, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    const/4 v6, 0x1

    :try_start_2
    const-string/jumbo v2, "href"

    invoke-virtual {v8, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v2, 0x2

    :try_start_3
    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_1
    move v3, v2

    move-object v2, v1

    :cond_2
    :goto_2
    const-string/jumbo v1, "\\s*=\\s*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    const/4 v1, 0x0

    move v6, v1

    move v2, v3

    :goto_3
    if-ge v6, v9, :cond_4

    aget-object v1, v7, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v11, :cond_3

    aget-object v12, v10, v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\""

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v2, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_4

    :catch_0
    move-exception v1

    :goto_5
    const-string/jumbo v6, "FBLabel"

    invoke-static {v6, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    move-object v3, v4

    move-object v4, v5

    move v5, v1

    :goto_6
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v5, v1, :cond_8

    mul-int/lit8 v1, v5, 0x2

    :try_start_4
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    mul-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "color"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v1, v2

    move-object v2, v3

    :goto_7
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v1

    move-object v3, v2

    goto :goto_6

    :cond_5
    const-string/jumbo v6, "size"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v4

    goto :goto_7

    :catch_1
    move-exception v1

    const-string/jumbo v2, "FBLabel"

    invoke-static {v2, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move-object v2, v3

    move-object v1, v4

    goto :goto_7

    :cond_7
    move-object v3, v4

    move-object v4, v5

    :cond_8
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v1, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v5, Landroid/text/style/URLSpan;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    new-instance v5, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v6, v1

    const/4 v2, 0x0

    move v15, v2

    move-object v2, v3

    move v3, v15

    :goto_8
    if-ge v3, v6, :cond_c

    aget-object v7, v1, v3

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    new-instance v8, Lcom/flybird/FBLabel$MyURLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9}, Lcom/flybird/FBLabel$MyURLSpan;-><init>(Lcom/flybird/FBLabel;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-eqz v4, :cond_9

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const/16 v11, 0x21

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    if-eqz v2, :cond_b

    const-string/jumbo v8, "px"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "px"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aget-object v2, v2, v8

    :cond_a
    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    iget-object v9, v9, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/flybird/FBTools;->convertDpToPx(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const/16 v10, 0x21

    invoke-virtual {v5, v8, v9, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void

    :catch_2
    move-exception v2

    move-object v15, v2

    move-object v2, v1

    move-object v1, v15

    goto/16 :goto_5

    :catch_3
    move-exception v2

    move v3, v6

    move-object v15, v1

    move-object v1, v2

    move-object v2, v15

    goto/16 :goto_5

    :catch_4
    move-exception v3

    move-object v15, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v15

    goto/16 :goto_5

    :cond_e
    move-object v1, v2

    move v2, v3

    goto/16 :goto_1

    :cond_f
    move v6, v1

    move v1, v7

    goto/16 :goto_0
.end method

.method private updateStandardTextAttr()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/flybird/FBLabel;->mOverflow:Ljava/lang/String;

    const-string/jumbo v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextOverflow:Ljava/lang/String;

    const-string/jumbo v1, "ellipsis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextOverflow:Ljava/lang/String;

    const-string/jumbo v1, "marquee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/flybird/FBBorderText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/flybird/FBBorderText;

    invoke-virtual {v0, v2}, Lcom/flybird/FBBorderText;->setForceFocus(Z)V

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method private updateWebKitTextAttr()V
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBLabel;->mWebkit_box_orient:Ljava/lang/String;

    const-string/jumbo v1, "vertical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mDisplay:Ljava/lang/String;

    const-string/jumbo v1, "-webkit-box"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mWebkit_line_clamp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBLabel;->mWebkit_line_clamp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public doDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    iput-object v0, p0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    iput-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public initText()V
    .locals 6

    iget-boolean v0, p0, Lcom/flybird/FBLabel;->mSupportEmoji:Z

    invoke-virtual {p0, v0}, Lcom/flybird/FBLabel;->setSupportEmoji(Z)V

    iget-object v1, p0, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    const-string/jumbo v0, "<a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-boolean v0, p0, Lcom/flybird/FBLabel;->mSupportEmoji:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/alipay/birdnest/view/TextViewWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/alipay/birdnest/view/TextViewWrapper;

    invoke-virtual {v0, v1}, Lcom/alipay/birdnest/view/TextViewWrapper;->prepareEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    invoke-static {v1}, Lcom/flybird/FBLabel;->isRichText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0, v1}, Lcom/alipay/tag/html/a;->a(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    check-cast v0, Landroid/text/Spanned;

    invoke-direct {p0, v3, v1, v0}, Lcom/flybird/FBLabel;->processAnchorElement(Landroid/widget/TextView;Ljava/lang/String;Landroid/text/Spanned;)V

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FBLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Html.fromHtml exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    check-cast v0, Landroid/text/Spanned;

    invoke-direct {p0, v2, v1, v0}, Lcom/flybird/FBLabel;->processAnchorElement(Landroid/widget/TextView;Ljava/lang/String;Landroid/text/Spanned;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onLoadFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/flybird/FBLabel;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/flybird/FBView;->onLoadFinish()V

    invoke-virtual {p0}, Lcom/flybird/FBLabel;->initText()V

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "marquee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/flybird/FBLabel$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBLabel$1;-><init>(Lcom/flybird/FBLabel;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setSupportEmoji(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/flybird/FBLabel;->mSupportEmoji:Z

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/flybird/FBBorderText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/flybird/FBBorderText;

    iget-boolean v1, p0, Lcom/flybird/FBLabel;->mSupportEmoji:Z

    invoke-virtual {v0, v1}, Lcom/flybird/FBBorderText;->setSupportEmoji(Z)V

    iget-object v1, p0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->k()Lcom/alipay/birdnest/api/BirdNestEngine$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flybird/FBBorderText;->setEmojiProvider(Lcom/alipay/birdnest/api/BirdNestEngine$d;)V

    :cond_0
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBLabel;->initText()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "emoji"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBLabel;->mSupportEmoji:Z

    goto :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "text-overflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p2, p0, Lcom/flybird/FBLabel;->mTextOverflow:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flybird/FBLabel;->updateStandardTextAttr()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "overflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p2, p0, Lcom/flybird/FBLabel;->mOverflow:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flybird/FBLabel;->updateStandardTextAttr()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "font-auto-adjust"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/flybird/FBBorderText;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    check-cast v0, Lcom/flybird/FBBorderText;

    invoke-virtual {v0}, Lcom/flybird/FBBorderText;->setAutoFit()V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "white-space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "nowrap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "-webkit-line-clamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object p2, p0, Lcom/flybird/FBLabel;->mWebkit_line_clamp:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flybird/FBLabel;->updateWebKitTextAttr()V

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "-webkit-box-orient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p2, p0, Lcom/flybird/FBLabel;->mWebkit_box_orient:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flybird/FBLabel;->updateWebKitTextAttr()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-object p2, p0, Lcom/flybird/FBLabel;->mDisplay:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flybird/FBLabel;->updateWebKitTextAttr()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "text-align"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v0, "line-height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "text-decoration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "line-through"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "underline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v0, "selectable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flybird/FBLabel;->mSupportSelectable:Z

    iget-object v0, p0, Lcom/flybird/FBLabel;->mTextView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/flybird/FBLabel;->mSupportSelectable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto/16 :goto_0

    :cond_13
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

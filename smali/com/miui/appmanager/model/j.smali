.class public Lcom/miui/appmanager/model/j;
.super Lcom/miui/appmanager/model/f;
.source ""


# instance fields
.field private aQg:Landroid/widget/ImageView;

.field private aQh:Landroid/widget/TextView;

.field private aQi:Landroid/widget/ImageView;

.field private aQj:Z

.field private aQk:Landroid/widget/TextView;

.field private aQl:Landroid/widget/ImageView;

.field private aQm:Landroid/widget/TextView;

.field private aQn:Landroid/widget/TextView;

.field private aQo:Landroid/widget/ImageView;

.field private aQp:Landroid/widget/TextView;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/f;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->context:Landroid/content/Context;

    const v0, 0x7f0a00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQi:Landroid/widget/ImageView;

    const v0, 0x7f0a00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQk:Landroid/widget/TextView;

    const v0, 0x7f0a00e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQm:Landroid/widget/TextView;

    const v0, 0x7f0a00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQh:Landroid/widget/TextView;

    const v0, 0x7f0a00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQp:Landroid/widget/TextView;

    const v0, 0x7f0a00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQn:Landroid/widget/TextView;

    const v0, 0x7f0a00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQo:Landroid/widget/ImageView;

    const v0, 0x7f0a00e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQl:Landroid/widget/ImageView;

    const v0, 0x7f0a00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/model/j;->aQg:Landroid/widget/ImageView;

    const-string/jumbo v0, "zh_CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/model/j;->aQj:Z

    return-void
.end method

.method private setLabelTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/miui/appmanager/model/j;->context:Landroid/content/Context;

    const v4, 0x7f07033f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xe

    new-array v5, v2, [Ljava/lang/String;

    const-string/jumbo v2, "\\"

    aput-object v2, v5, v1

    const-string/jumbo v2, "$"

    aput-object v2, v5, v0

    const-string/jumbo v2, "("

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const-string/jumbo v2, ")"

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const-string/jumbo v2, "*"

    const/4 v6, 0x4

    aput-object v2, v5, v6

    const-string/jumbo v2, "+"

    const/4 v6, 0x5

    aput-object v2, v5, v6

    const-string/jumbo v2, "."

    const/4 v6, 0x6

    aput-object v2, v5, v6

    const-string/jumbo v2, "["

    const/4 v6, 0x7

    aput-object v2, v5, v6

    const-string/jumbo v2, "]"

    const/16 v6, 0x8

    aput-object v2, v5, v6

    const-string/jumbo v2, "?"

    const/16 v6, 0x9

    aput-object v2, v5, v6

    const-string/jumbo v2, "^"

    const/16 v6, 0xa

    aput-object v2, v5, v6

    const-string/jumbo v2, "{"

    const/16 v6, 0xb

    aput-object v2, v5, v6

    const-string/jumbo v2, "}"

    const/16 v6, 0xc

    aput-object v2, v5, v6

    const-string/jumbo v2, "|"

    const/16 v6, 0xd

    aput-object v2, v5, v6

    array-length v6, v5

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_5

    aget-object v7, v5, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-nez v0, :cond_1

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V
    .locals 7

    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/appmanager/model/f;->bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V

    check-cast p2, Lcom/miui/appmanager/model/i;

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhx(Lcom/miui/appmanager/model/i;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f02004a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhw(Lcom/miui/appmanager/model/i;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/appmanager/model/j;->aQi:Landroid/widget/ImageView;

    sget-object v5, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    const v6, 0x7f0200b2

    invoke-static {v0, v4, v5, v6}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQk:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQk:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhz(Lcom/miui/appmanager/model/i;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhA(Lcom/miui/appmanager/model/i;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lcom/miui/appmanager/model/j;->setLabelTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQm:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/miui/appmanager/model/j;->aQm:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhy(Lcom/miui/appmanager/model/i;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQh:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/miui/appmanager/model/j;->aQh:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhv(Lcom/miui/appmanager/model/i;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQp:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQp:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhC(Lcom/miui/appmanager/model/i;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQn:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/appmanager/model/j;->aQj:Z

    if-eqz v0, :cond_d

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhB(Lcom/miui/appmanager/model/i;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQn:Landroid/widget/TextView;

    const v4, 0x7f070893

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQo:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/miui/appmanager/model/j;->aQj:Z

    if-nez v0, :cond_e

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhy(Lcom/miui/appmanager/model/i;)Z

    move-result v0

    :goto_4
    iget-object v4, p0, Lcom/miui/appmanager/model/j;->aQo:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQl:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQl:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhy(Lcom/miui/appmanager/model/i;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v1

    :cond_7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQg:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQg:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhv(Lcom/miui/appmanager/model/i;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    return-void

    :cond_a
    const v0, 0x7f020048

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v0, v1

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/miui/appmanager/model/j;->aQn:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/appmanager/model/i;->bhB(Lcom/miui/appmanager/model/i;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_e
    move v0, v1

    goto :goto_4

    :cond_f
    move v0, v2

    goto :goto_5

    :cond_10
    move v3, v1

    goto :goto_6
.end method

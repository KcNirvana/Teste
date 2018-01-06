.class public Lcom/miui/weather2/model/l;
.super Landroid/support/a/a/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/model/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/a/a/r$a",
        "<",
        "Lcom/miui/weather2/model/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public a(I)I
    .locals 2

    const/16 v0, 0x70

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/model/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Landroid/support/a/a/r$a;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroid/support/a/a/r$w;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/model/l;->c(Landroid/view/ViewGroup;I)Lcom/miui/weather2/model/l$a;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;

    iput-boolean p2, v0, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;->mVisiblity:Z

    return-void
.end method

.method public bridge synthetic a(Landroid/support/a/a/r$w;I)V
    .locals 0

    check-cast p1, Lcom/miui/weather2/model/l$a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/model/l;->a(Lcom/miui/weather2/model/l$a;I)V

    return-void
.end method

.method public a(Lcom/miui/weather2/model/l$a;I)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/l;->c:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/weather2/model/l;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_info_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/model/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;->mFirstImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v1

    iget-object v2, p1, Lcom/miui/weather2/model/l$a;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    iget-object v1, p1, Lcom/miui/weather2/model/l$a;->m:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/model/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;

    iput-boolean p1, v0, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;->mVisiblity:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/miui/weather2/model/l$a;
    .locals 7

    const v6, 0x7f0f0078

    const/16 v5, 0x70

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/model/l;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/weather2/model/l$a;

    invoke-direct {v2, v1}, Lcom/miui/weather2/model/l$a;-><init>(Landroid/view/View;)V

    if-ne v5, p2, :cond_0

    const v0, 0x7f0f007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object v2

    :cond_0
    if-ne v5, p2, :cond_1

    const v0, 0x7f0f007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/weather2/model/l$a;->l:Landroid/widget/ImageView;

    const v0, 0x7f0f007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/weather2/model/l$a;->m:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public c(I)Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/CardItemInfo$SecondaryPageItem;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/model/l;->d:Ljava/lang/String;

    return-object v0
.end method

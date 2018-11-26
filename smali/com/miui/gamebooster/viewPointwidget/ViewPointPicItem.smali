.class public Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private fH:Landroid/os/Bundle;

.field private fI:Landroid/widget/TextView;

.field private fJ:Landroid/widget/ImageView;

.field private fK:Landroid/view/View;

.field private fL:Landroid/widget/ImageView;

.field private fM:Landroid/view/View;

.field private fN:Landroid/widget/ImageView;

.field private fO:I

.field private fP:I

.field private fQ:I

.field private fR:I

.field private fS:I

.field private fT:I

.field private fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method private iU(Landroid/view/View;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fP:I

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fO:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public iH(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kw()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "migamecenter://comment_list?dataType=%s&commentId=%s&title=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "8"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kz()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kv()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_pass_through"

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fH:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gamebooster/a/G;->io(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->ky()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gx(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kw()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kz()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fH:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/gamebooster/a/J;->iw(Landroid/content/Context;ILjava/lang/String;Lcom/miui/gamebooster/a/K;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public iT(Lcom/miui/gamebooster/gamead/ViewPointPicModel;I)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const v6, 0x7f0202ab

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kA()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/a;->eM(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fU:Lcom/miui/gamebooster/gamead/ViewPointPicModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kA()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fM:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fJ:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fP:I

    iget v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fO:I

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->iU(Landroid/view/View;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fP:I

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/g;->fv(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fJ:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fM:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fJ:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fT:I

    iget v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fS:I

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->iU(Landroid/view/View;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fT:I

    invoke-static {v0, v2}, Lcom/miui/gamebooster/a/g;->fv(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fJ:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fT:I

    iget v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fS:I

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->iU(Landroid/view/View;II)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fT:I

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/g;->fv(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fM:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fJ:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fR:I

    iget v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fQ:I

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->iU(Landroid/view/View;II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fR:I

    invoke-static {v0, v2}, Lcom/miui/gamebooster/a/g;->fv(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fJ:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fR:I

    iget v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fQ:I

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->iU(Landroid/view/View;II)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fR:I

    invoke-static {v0, v2}, Lcom/miui/gamebooster/a/g;->fv(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fM:Landroid/view/View;

    iget v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fR:I

    iget v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fQ:I

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->iU(Landroid/view/View;II)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fR:I

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/g;->fv(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fN:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kx()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fI:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fI:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointPicModel;->kx()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fK:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fI:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fK:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->iH(Landroid/view/View;I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0416

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fJ:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fJ:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0417

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fL:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0419

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fN:Landroid/widget/ImageView;

    const v0, 0x7f0a041a

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fK:Landroid/view/View;

    const v0, 0x7f0a0418

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fM:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fM:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a041b

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fI:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fQ:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fR:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fS:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fT:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fO:I

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fP:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fH:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointPicItem;->fH:Landroid/os/Bundle;

    const-string/jumbo v1, "report_activity_layer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

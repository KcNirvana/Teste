.class public Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private fe:I

.field private ff:Lcom/miui/gamebooster/customview/RoundImageView;

.field private fg:Landroid/os/Bundle;

.field private fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

.field private fi:Landroid/widget/TextView;

.field private fj:Landroid/widget/TextView;

.field private fk:Landroid/widget/TextView;

.field private mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private iF(Lcom/miui/gamebooster/gamead/ViewPointCountModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lW()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fk:Landroid/widget/TextView;

    const v1, 0x7f070995

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fk:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lW()I

    move-result v1

    invoke-static {v1}, Lcom/miui/gamebooster/a/e;->fl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public iE(Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;I)V
    .locals 5

    const v4, 0x7f02014d

    const/4 v3, 0x7

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;->lB()Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointMutiButtomModel;->lC()Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->iF(Lcom/miui/gamebooster/gamead/ViewPointCountModel;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fi:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lV()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fj:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->ff:Lcom/miui/gamebooster/customview/RoundImageView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/miui/gamebooster/customview/RoundImageView;->jV(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/miui/gamebooster/a/j;->getInstance()Lcom/miui/gamebooster/a/j;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/gamebooster/a/j;->fD(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->ff:Lcom/miui/gamebooster/customview/RoundImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fj:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fj:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lV()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/gamebooster/a/j;->getInstance()Lcom/miui/gamebooster/a/j;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/gamebooster/a/j;->fD(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->ff:Lcom/miui/gamebooster/customview/RoundImageView;

    sget-object v2, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lX()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "migamecenter://comment_list?dataType=%s&commentId=%s&title=%s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "8"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lY()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_pass_through"

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fg:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gamebooster/a/G;->io(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->ma()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gx(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->ma()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gy(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lX()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lY()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fg:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/a/J;->iv(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->ma()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gz(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lX()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lY()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fg:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/gamebooster/a/J;->iw(Landroid/content/Context;ILjava/lang/String;Lcom/miui/gamebooster/a/K;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->lZ()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->ma()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gx(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->mCountModel:Lcom/miui/gamebooster/gamead/ViewPointCountModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCountModel;->ma()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gy(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mi()I

    move-result v0

    if-ne v0, v5, :cond_7

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mj()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fg:Landroid/os/Bundle;

    invoke-static/range {v1 .. v7}, Lcom/miui/gamebooster/a/J;->ix(Landroid/content/Context;JJLjava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gA(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mi()I

    move-result v0

    if-ne v0, v6, :cond_6

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fh:Lcom/miui/gamebooster/gamead/ViewPointGameModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointGameModel;->mj()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/gamebooster/a/J;->iy(Landroid/content/Context;J)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0411
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0411

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/customview/RoundImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->ff:Lcom/miui/gamebooster/customview/RoundImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->ff:Lcom/miui/gamebooster/customview/RoundImageView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/customview/RoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0412

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fi:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fi:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0414

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fk:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0413

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fj:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fe:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fg:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointMutiButtomItem;->fg:Landroid/os/Bundle;

    const-string/jumbo v1, "report_activity_layer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

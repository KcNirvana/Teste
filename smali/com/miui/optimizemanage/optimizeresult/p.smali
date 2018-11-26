.class Lcom/miui/optimizemanage/optimizeresult/p;
.super Lcom/miui/optimizemanage/optimizeresult/a;
.source ""


# instance fields
.field private mInternationalVH:Lcom/miui/b/a;

.field final synthetic xd:Lcom/miui/optimizemanage/optimizeresult/o;


# direct methods
.method public constructor <init>(Lcom/miui/optimizemanage/optimizeresult/o;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-direct {p0, p2}, Lcom/miui/optimizemanage/optimizeresult/a;-><init>(Landroid/view/View;)V

    invoke-static {p2, p1}, Lcom/miui/optimizemanage/a;->AF(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;)Lcom/miui/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    return-void
.end method


# virtual methods
.method public xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/a;->xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/o;

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->yX(Lcom/miui/optimizemanage/optimizeresult/o;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->za(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/optimizemanage/a;->AK(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/optimizeresult/o;->ze(Lcom/miui/optimizemanage/optimizeresult/o;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-boolean v0, v0, Lcom/miui/b/a;->initialized:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v1}, Lcom/miui/optimizemanage/optimizeresult/o;->yY(Lcom/miui/optimizemanage/optimizeresult/o;)I

    move-result v1

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/o;->getTemplate()I

    move-result v2

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v3}, Lcom/miui/optimizemanage/optimizeresult/o;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/optimizemanage/a;->AE(Lcom/miui/b/a;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->baP:Landroid/view/View;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v1}, Lcom/miui/optimizemanage/optimizeresult/o;->zd(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->baL:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v1}, Lcom/miui/optimizemanage/optimizeresult/o;->yV(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->zb(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v0}, Lcom/miui/optimizemanage/optimizeresult/o;->yW(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v1, v1, Lcom/miui/b/a;->baM:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    const v3, 0x7f0200b2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->baN:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/common/card/FillParentDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/o;->getMultiImgUrls()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v2, v2, Lcom/miui/b/a;->baN:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azQ:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v2, v3, v0}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/o;->yR()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v2, v2, Lcom/miui/b/a;->baL:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v3}, Lcom/miui/optimizemanage/optimizeresult/o;->yP()I

    move-result v3

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v4}, Lcom/miui/optimizemanage/optimizeresult/o;->yQ()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/miui/securitycenter/utils/c;->bqF(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v1}, Lcom/miui/optimizemanage/optimizeresult/o;->yS()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v1, v1, Lcom/miui/b/a;->baL:Landroid/widget/Button;

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v2}, Lcom/miui/optimizemanage/optimizeresult/o;->yU(Lcom/miui/optimizemanage/optimizeresult/o;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    :cond_4
    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v1, v1, Lcom/miui/b/a;->baO:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/o;->getGlobalADType()I

    move-result v2

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-virtual {v3}, Lcom/miui/optimizemanage/optimizeresult/o;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/optimizemanage/a;->AM(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->closeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->closeView:Landroid/view/View;

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/t;

    invoke-direct {v1, p0, p2}, Lcom/miui/optimizemanage/optimizeresult/t;-><init>(Lcom/miui/optimizemanage/optimizeresult/p;Lcom/miui/optimizemanage/optimizeresult/o;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/p;->xd:Lcom/miui/optimizemanage/optimizeresult/o;

    invoke-static {v1}, Lcom/miui/optimizemanage/optimizeresult/o;->zb(Lcom/miui/optimizemanage/optimizeresult/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/p;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

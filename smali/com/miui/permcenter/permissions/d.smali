.class public Lcom/miui/permcenter/permissions/d;
.super Lcom/miui/permcenter/a;
.source ""


# instance fields
.field private Pj:Z

.field private Pk:J

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    const v0, 0x7f03013a

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/a;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/d;->Pj:Z

    iput-wide p2, p0, Lcom/miui/permcenter/permissions/d;->Pk:J

    iput-object p1, p0, Lcom/miui/permcenter/permissions/d;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected Qd(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/miui/permcenter/c;Lcom/miui/permcenter/permissions/c;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg_icon://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PY(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v2, v3}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/d;->Pj:Z

    if-eqz v0, :cond_1

    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PY(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PZ(Lcom/miui/permcenter/permissions/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p4}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PZ(Lcom/miui/permcenter/permissions/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/permcenter/permissions/d;->Pj:Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/d;->Pj:Z

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p4}, Lcom/miui/permcenter/c;->St()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/permcenter/permissions/d;->Pk:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/permissions/d;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PY(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/d;->Pj:Z

    if-eqz v0, :cond_2

    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const v0, 0x7f07066c

    goto :goto_1

    :cond_2
    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_1
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/d;->Pj:Z

    if-eqz v0, :cond_3

    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    const v0, 0x7f07066d

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :pswitch_2
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/d;->Pj:Z

    if-eqz v0, :cond_4

    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    const v0, 0x7f07066e

    goto :goto_1

    :cond_4
    invoke-static {p5}, Lcom/miui/permcenter/permissions/c;->PX(Lcom/miui/permcenter/permissions/c;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Qe(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/d;->Pj:Z

    return-void
.end method

.method protected bridge synthetic Qf(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    move-object v4, p4

    check-cast v4, Lcom/miui/permcenter/c;

    move-object v5, p5

    check-cast v5, Lcom/miui/permcenter/permissions/c;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/permcenter/permissions/d;->Qd(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/miui/permcenter/c;Lcom/miui/permcenter/permissions/c;)V

    return-void
.end method

.method protected createViewHolder(Landroid/view/View;)Lcom/miui/permcenter/permissions/c;
    .locals 2

    new-instance v1, Lcom/miui/permcenter/permissions/c;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/miui/permcenter/permissions/c;-><init>(Lcom/miui/permcenter/permissions/c;)V

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/miui/permcenter/permissions/c;->Qc(Lcom/miui/permcenter/permissions/c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/miui/permcenter/permissions/c;->Qb(Lcom/miui/permcenter/permissions/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0a0363

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/miui/permcenter/permissions/c;->Qa(Lcom/miui/permcenter/permissions/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    return-object v1
.end method

.method protected bridge synthetic createViewHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/d;->createViewHolder(Landroid/view/View;)Lcom/miui/permcenter/permissions/c;

    move-result-object v0

    return-object v0
.end method

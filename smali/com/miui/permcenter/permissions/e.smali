.class public Lcom/miui/permcenter/permissions/e;
.super Landroid/preference/Preference;
.source ""


# instance fields
.field private Pl:Z

.field private Pm:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/permcenter/permissions/e;->Pm:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/e;->Pl:Z

    const v0, 0x7f030133

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/e;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public Qg(I)V
    .locals 0

    iput p1, p0, Lcom/miui/permcenter/permissions/e;->Pm:I

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/e;->notifyChanged()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0363

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/permcenter/permissions/e;->Pm:I

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/e;->Pl:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0201e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v1, 0x7f07066c

    goto :goto_0

    :cond_1
    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/e;->Pl:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0201e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const v1, 0x7f07066d

    goto :goto_0

    :cond_2
    const v1, 0x7f0201e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :pswitch_2
    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/e;->Pl:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0201e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    const v1, 0x7f07066e

    goto :goto_0

    :cond_3
    const v1, 0x7f0201e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/e;->Pl:Z

    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

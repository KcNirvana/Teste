.class final Lcom/miui/applicationlock/l;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic ahB:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method protected constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs aol([Landroid/graphics/drawable/BitmapDrawable;)Lcom/miui/applicationlock/utils/f;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anQ(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/l;->afo(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/miui/applicationlock/utils/f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected aom(Lcom/miui/applicationlock/utils/f;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ann(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p1, Lcom/miui/applicationlock/utils/f;->colors:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agJ:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v1, p1, Lcom/miui/applicationlock/utils/f;->abm:Z

    iput-boolean v1, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amO(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anO(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ann(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/a/a;->ajh()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->ann(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/applicationlock/a/a;->ajj()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    :cond_3
    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ank(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anJ(Lcom/miui/applicationlock/ConfirmAccessControl;I)I

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/h;->ahd(Z)V

    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->agU:Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->ahL(Z)V

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/h;->startAnimation()V

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->ahr:Lcom/miui/applicationlock/widget/h;

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/widget/h;->aha(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->afw(ZLandroid/view/Window;)V

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anc(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anq(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ana(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anq(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anb(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anq(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const-string/jumbo v0, "mixed"

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anh(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anq(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anh(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anq(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anQ(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anr(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anq(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->and(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v0, v0, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amU(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->ank(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoa(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anm(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/common/customview/gif/GifImageView;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ann(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/a/b;->ajp(Lcom/miui/applicationlock/a/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amG(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/applicationlock/O;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/O;-><init>(Lcom/miui/applicationlock/l;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    const-string/jumbo v0, "numeric"

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoe(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    :cond_a
    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->amO(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anR(Lcom/miui/applicationlock/ConfirmAccessControl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anb(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anY(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    invoke-static {}, Lcom/miui/common/b/e;->aHK()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->and(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, v4}, Lcom/miui/applicationlock/ConfirmAccessControl;->anG(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-boolean v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->agO:Z

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->aod(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/miui/applicationlock/l;->ahB:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ank(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/l;->aol([Landroid/graphics/drawable/BitmapDrawable;)Lcom/miui/applicationlock/utils/f;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/applicationlock/utils/f;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/l;->aom(Lcom/miui/applicationlock/utils/f;)V

    return-void
.end method

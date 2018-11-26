.class public Lcom/miui/applicationlock/widget/j;
.super Lmiui/app/AlertDialog;
.source ""


# instance fields
.field private adE:Lcom/miui/applicationlock/utils/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/miui/applicationlock/utils/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/j;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/applicationlock/widget/j;->adE:Lcom/miui/applicationlock/utils/a;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lmiui/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/j;->adE:Lcom/miui/applicationlock/utils/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/widget/j;->adE:Lcom/miui/applicationlock/utils/a;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adK()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/miui/applicationlock/widget/j;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/widget/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1302

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

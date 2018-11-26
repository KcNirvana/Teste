.class Lcom/miui/powercenter/legacypowerrank/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final aGb:Landroid/widget/ProgressBar;

.field final aGc:Landroid/widget/TextView;

.field final aGd:Landroid/widget/TextView;

.field final mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/i;->aGd:Landroid/widget/TextView;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/i;->mIcon:Landroid/widget/ImageView;

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/i;->aGb:Landroid/widget/ProgressBar;

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/i;->aGc:Landroid/widget/TextView;

    return-void
.end method

.class public Lcom/miui/antispam/ui/a/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final VM:Landroid/widget/TextView;

.field public final VN:Landroid/widget/TextView;

.field public final VO:Landroid/widget/TextView;

.field public final VP:Landroid/widget/TextView;

.field public final VQ:Landroid/widget/LinearLayout;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    const v0, 0x7f0a01e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    const v0, 0x7f0a018b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/e;->VO:Landroid/widget/TextView;

    const v0, 0x7f0a01e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/e;->VN:Landroid/widget/TextView;

    const v0, 0x7f0a01e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/e;->VP:Landroid/widget/TextView;

    const v0, 0x7f0a01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/e;->VQ:Landroid/widget/LinearLayout;

    return-void
.end method

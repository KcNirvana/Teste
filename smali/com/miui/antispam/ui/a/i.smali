.class final Lcom/miui/antispam/ui/a/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final Wd:Landroid/widget/TextView;

.field public final We:Landroid/widget/TextView;

.field public final Wf:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a01e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/i;->Wd:Landroid/widget/TextView;

    const v0, 0x7f0a01ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/i;->We:Landroid/widget/TextView;

    const v0, 0x7f0a01eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antispam/ui/a/i;->Wf:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public Vw()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/antispam/ui/a/i;->Wd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/a/i;->We:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/a/i;->Wf:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.class public Lcom/miui/optimizemanage/optimizeresult/g;
.super Lcom/miui/optimizemanage/optimizeresult/a;
.source ""


# instance fields
.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/a;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/g;->title:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/a;->xI(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/m;I)V

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/f;

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/g;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/optimizemanage/optimizeresult/f;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

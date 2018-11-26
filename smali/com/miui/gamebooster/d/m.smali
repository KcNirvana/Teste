.class final Lcom/miui/gamebooster/d/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic sW:Lcom/miui/gamebooster/d/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/d/m;->sW:Lcom/miui/gamebooster/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/a;

    iget-object v1, p0, Lcom/miui/gamebooster/d/m;->sW:Lcom/miui/gamebooster/d/b;

    invoke-static {v1}, Lcom/miui/gamebooster/d/b;->uP(Lcom/miui/gamebooster/d/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/miui/gamebooster/a/l;->fJ(Lcom/miui/gamebooster/model/a;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/a;->mz()Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;->qO:Lcom/miui/gamebooster/constants/EnumCollection$GameBoxType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/d/m;->sW:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->uI()V

    :cond_0
    return-void
.end method

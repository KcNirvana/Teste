.class final Lcom/miui/optimizemanage/e;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic Af:Lcom/miui/optimizemanage/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/e;->Af:Lcom/miui/optimizemanage/b;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/e;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 3

    invoke-static {}, Lcom/miui/optimizemanage/memoryclean/g;->xz()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/e;->Af:Lcom/miui/optimizemanage/b;

    invoke-static {v1}, Lcom/miui/optimizemanage/b;->AX(Lcom/miui/optimizemanage/b;)Lcom/miui/optimizemanage/memoryclean/a;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/optimizemanage/e;->Af:Lcom/miui/optimizemanage/b;

    invoke-virtual {v2}, Lcom/miui/optimizemanage/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/optimizemanage/memoryclean/a;->xe(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/e;->Af:Lcom/miui/optimizemanage/b;

    invoke-static {v1}, Lcom/miui/optimizemanage/b;->AW(Lcom/miui/optimizemanage/b;)Lcom/miui/optimizemanage/memoryclean/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/optimizemanage/memoryclean/l;->xD(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

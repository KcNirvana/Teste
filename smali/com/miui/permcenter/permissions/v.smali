.class final Lcom/miui/permcenter/permissions/v;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic PS:Lcom/miui/permcenter/permissions/f;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/f;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/v;->PS:Lcom/miui/permcenter/permissions/f;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/v;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/v;->PS:Lcom/miui/permcenter/permissions/f;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/v;->PS:Lcom/miui/permcenter/permissions/f;

    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/e;->SK(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/permcenter/permissions/f;->Qp(Lcom/miui/permcenter/permissions/f;Z)Z

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permcenter/e;->ST(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/v;->PS:Lcom/miui/permcenter/permissions/f;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/f;->Qq(Lcom/miui/permcenter/permissions/f;)Lcom/miui/permcenter/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/v;->PS:Lcom/miui/permcenter/permissions/f;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/f;->Qq(Lcom/miui/permcenter/permissions/f;)Lcom/miui/permcenter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

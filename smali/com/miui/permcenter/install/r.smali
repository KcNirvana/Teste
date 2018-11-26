.class final Lcom/miui/permcenter/install/r;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic QL:Lcom/miui/permcenter/install/PackageManagerActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/PackageManagerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/r;->QL:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/install/r;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/permcenter/install/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/install/a;->QN()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/miui/permcenter/install/c;

    invoke-direct {v3}, Lcom/miui/permcenter/install/c;-><init>()V

    const v4, 0x7f070697

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/permcenter/install/c;->setName(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/miui/permcenter/install/c;->Rw(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/permcenter/install/s;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/s;-><init>(Lcom/miui/permcenter/install/r;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v2
.end method

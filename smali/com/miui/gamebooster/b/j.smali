.class public Lcom/miui/gamebooster/b/j;
.super Lcom/miui/gamebooster/b/d;
.source ""


# instance fields
.field private rT:Landroid/app/FragmentManager;

.field private rU:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/b/d;-><init>(Landroid/app/FragmentManager;)V

    iput-object p1, p0, Lcom/miui/gamebooster/b/j;->rT:Landroid/app/FragmentManager;

    iput-object p2, p0, Lcom/miui/gamebooster/b/j;->rU:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/j;->rU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/b/j;->rU:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/b/j;->rU:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

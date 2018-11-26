.class public abstract Lcom/miui/common/a/a/j;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/common/a/a/j;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/common/a/a/j;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/a/a/j;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;I)V
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/common/a/a/j;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/miui/common/a/a/j;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/miui/common/a/a/j;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/common/a/a/j;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    return-object p2
.end method

.method public abstract newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

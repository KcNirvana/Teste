.class public abstract Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseDataAdapter"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mDataValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mDataValid:Z

    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    int-to-long v0, p1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-boolean v2, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mDataValid:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "this should only be called when the data is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "couldn\'t get view at this position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->newView(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->bindView(Landroid/view/View;ILjava/lang/Object;)V

    return-object v1

    :cond_3
    move-object v1, p2

    goto :goto_0
.end method

.method public abstract newView(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mDataValid:Z

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->mDataValid:Z

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/adapter/BaseDataAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

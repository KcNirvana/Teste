.class public abstract Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V

    return-void
.end method

.method public abstract onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation
.end method

.method public swapCursor(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/adapter/BaseCursorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.class public Lcom/miui/personalassistant/express/model/LocalQueryResult;
.super Lcom/miui/personalassistant/request/core/BaseResult;
.source "LocalQueryResult.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/request/core/BaseResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/model/LocalQueryResult;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/model/LocalQueryResult;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/model/LocalQueryResult;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/model/LocalQueryResult;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method public shallowClone()Lcom/miui/personalassistant/request/core/BaseResult;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/express/model/LocalQueryResult;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/model/LocalQueryResult;-><init>()V

    iget-object v1, p0, Lcom/miui/personalassistant/express/model/LocalQueryResult;->mCursor:Landroid/database/Cursor;

    iput-object v1, v0, Lcom/miui/personalassistant/express/model/LocalQueryResult;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

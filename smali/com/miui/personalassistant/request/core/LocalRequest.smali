.class public Lcom/miui/personalassistant/request/core/LocalRequest;
.super Lcom/miui/personalassistant/request/core/BaseRequest;
.source "LocalRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/personalassistant/request/core/BaseRequest",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mProjection:[Ljava/lang/String;

.field private mSelection:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/request/core/BaseRequest;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public request()Landroid/database/Cursor;
    .locals 6

    iget-object v0, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic request()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/core/LocalRequest;->request()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setArgs([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mArgs:[Ljava/lang/String;

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mSelection:Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mSortOrder:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/request/core/LocalRequest;->mUri:Landroid/net/Uri;

    return-void
.end method

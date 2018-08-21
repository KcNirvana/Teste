.class public Lcom/miui/personalassistant/express/LocalRequestManager;
.super Ljava/lang/Object;
.source "LocalRequestManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequest(Landroid/content/Context;)Lcom/miui/personalassistant/request/core/BaseRequest;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/request/core/LocalRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/request/core/LocalRequest;-><init>(Landroid/content/Context;I)V

    sget-object v1, Lcom/miui/personalassistant/express/Constants$Cache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/request/core/LocalRequest;->setUri(Landroid/net/Uri;)V

    sget-object v1, Lcom/miui/personalassistant/express/Constants$Cache;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/request/core/LocalRequest;->setProjection([Ljava/lang/String;)V

    const-string/jumbo v1, "cache_key LIKE \'inquiry_history_item%\'"

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/request/core/LocalRequest;->setSelection(Ljava/lang/String;)V

    const-string/jumbo v1, "etag DESC"

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/request/core/LocalRequest;->setSortOrder(Ljava/lang/String;)V

    return-object v0
.end method

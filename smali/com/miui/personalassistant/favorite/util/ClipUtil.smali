.class public Lcom/miui/personalassistant/favorite/util/ClipUtil;
.super Ljava/lang/Object;
.source "ClipUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkClipboard(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v4, "clipboard"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static clearClipboard(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public static clearClipboardCache(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key_url_saved_last_time"

    const-string/jumbo v3, ""

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "key_url_saved_last_time"

    const-string/jumbo v3, ""

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static clearClipboardCache(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string/jumbo v5, "key_url_saved_last_time"

    const-string/jumbo v6, ""

    invoke-static {p0, v5, v6}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-string/jumbo v5, "key_url_saved_last_time"

    const-string/jumbo v6, ""

    invoke-static {p0, v5, v6}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static parseUrl(Landroid/content/ClipData;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/util/RegExUtil;->getHttpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static splitComponent(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v3, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aget-object v2, v0, v4

    aput-object v2, v1, v4

    aget-object v2, v0, v3

    aput-object v2, v1, v3

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

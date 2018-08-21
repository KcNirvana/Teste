.class public Lcom/miui/personalassistant/favorite/util/FavUtil;
.super Ljava/lang/Object;
.source "FavUtil.java"


# static fields
.field private static final FAV_INIT_GUIDE_URL:Ljava/lang/String; = "http://api.assistant.miui.com/urlparser/guide"

.field private static final TAG:Ljava/lang/String; = "FavUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analysisAdd(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "way"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Favorite"

    const-string/jumbo v2, "favorite_new"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static analysisAppOpen(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "//"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v4, :cond_0

    aget-object v3, v2, v4

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "url"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_app"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Favorite"

    const-string/jumbo v4, "favorite_url_click"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public static analysisDau()V
    .locals 2

    const-string/jumbo v0, "Favorite"

    const-string/jumbo v1, "favorite_dau"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static decodeURLArr([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    array-length v3, p0

    if-lez v3, :cond_0

    array-length v3, p0

    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    :try_start_0
    aget-object v3, p0, v2

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "FavUtil"

    const-string/jumbo v4, "UnsupportedEncodingException"

    invoke-static {v3, v4, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static getInitDbData(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/favorite/module/FavoriteRecord;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-direct {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;-><init>()V

    const-string/jumbo v2, "http://api.assistant.miui.com/urlparser/guide"

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b01e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setAppName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setStyleActivity(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static initPreference(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "key_all_delete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static isDeletingAll(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_all_delete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static jumpIntent(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Ljava/lang/String;)V
    .locals 13

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getOriginalUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getComponentName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    array-length v0, v10

    if-lez v0, :cond_3

    aget-object v3, v10, v5

    invoke-static {p0, v3}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v10

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    aget-object v4, v10, v6

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/personalassistant/favorite/util/FavUtil;->openApp(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, v10

    if-ne v0, v6, :cond_3

    invoke-virtual {p1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getIntentAction()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    aget-object v7, v10, v5

    move-object v4, p0

    move-object v5, v1

    move-object v6, v2

    move-object v8, p2

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/miui/personalassistant/favorite/util/FavUtil;->openApp(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v3, p2, p1}, Lcom/miui/personalassistant/favorite/util/FavUtil;->openDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->openWebDetail(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static openApp(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/miui/personalassistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/util/FavUtil;->analysisAppOpen(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p3, p4, p5}, Lcom/miui/personalassistant/favorite/util/FavUtil;->openDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    goto :goto_0
.end method

.method private static openDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V
    .locals 6

    const-string/jumbo v0, "1"

    invoke-virtual {p3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getIsPartner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/personalassistant/util/Util;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p3, p2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->openWebDetail(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static openWebDetail(Landroid/content/Context;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_favorite_record"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "key_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setStatusFromSettings(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "key_fav_authorize_changed"

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_fav_authorize"

    invoke-static {p0, v0, v2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchFavoriteCatcher(Z)V

    const v0, 0x1b0b039c

    invoke-static {p0, v0}, Lcom/miui/personalassistant/favorite/util/ToastUtil;->show(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "key_fav_authorize"

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_fav_authorize"

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchFavoriteCatcher(Z)V

    const v0, 0x1b0b039b

    invoke-static {p0, v0}, Lcom/miui/personalassistant/favorite/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method

.class public Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;
.super Ljava/lang/Object;
.source "MiuiFavoritePrefs.java"


# static fields
.field private static final KEY_FAV_EXPIRE_SECONDS:Ljava/lang/String; = "key_fav_expire_seconds"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExpireSeconds(Landroid/content/Context;I)I
    .locals 2

    const-string/jumbo v0, "key_fav_expire_seconds"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public static isFavAuthorized(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_fav_authorize_changed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFavOpened(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "key_fav_authorize"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setExpireSeconds(Landroid/content/Context;I)V
    .locals 2

    const-string/jumbo v0, "key_fav_expire_seconds"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static setFavAuthorized(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_fav_authorize_changed"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setFavOpened(Landroid/content/Context;Z)V
    .locals 1

    const-string/jumbo v0, "key_fav_authorize"

    invoke-static {p0, v0, p1}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

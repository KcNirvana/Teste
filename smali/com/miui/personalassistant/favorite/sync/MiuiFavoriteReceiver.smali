.class public Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiFavoriteReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteShareService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->isShopping(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->supportShoppingSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->supportFavSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isShopping(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    sget-object v3, Lcom/miui/personalassistant/shopping/util/Constant;->SHOPPING_PACKAGES:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private supportFavSwitch(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "catcher_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportShoppingSwitch(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_shopping_taobao"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "com.tmall.wireless"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_shopping_tmall"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.jingdong.app.mall"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_shopping_jingdong"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "com.xiaomi.shop"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/sync/MiuiFavoriteReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_shopping_mishop"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

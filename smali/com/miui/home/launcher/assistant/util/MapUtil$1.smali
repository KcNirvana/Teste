.class final Lcom/miui/home/launcher/assistant/util/MapUtil$1;
.super Ljava/lang/Object;
.source "MapUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/MapUtil;->getRecentMapPkg(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/home/launcher/assistant/module/model/AppsModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/assistant/module/model/AppsModel;Lcom/miui/home/launcher/assistant/module/model/AppsModel;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->getLastTimeUsed()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->getLastTimeUsed()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->getLastTimeUsed()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->getLastTimeUsed()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/home/launcher/assistant/module/model/AppsModel;

    check-cast p2, Lcom/miui/home/launcher/assistant/module/model/AppsModel;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/util/MapUtil$1;->compare(Lcom/miui/home/launcher/assistant/module/model/AppsModel;Lcom/miui/home/launcher/assistant/module/model/AppsModel;)I

    move-result v0

    return v0
.end method

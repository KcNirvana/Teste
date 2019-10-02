.class public final Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragmentKt;
.super Ljava/lang/Object;
.source "TrendingFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "recordNewChannelClicked",
        "",
        "title",
        "",
        "biz_group_shortvideo_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final synthetic access$recordNewChannelClicked(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragmentKt;->recordNewChannelClicked(Ljava/lang/String;)V

    return-void
.end method

.method private static final recordNewChannelClicked(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_channel_clicked_new"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object p0

    const-string v1, "is_channel_clicked_new"

    invoke-virtual {p0, v1, v0}, Lcom/miui/video/base/common/data/SettingsSPManager;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

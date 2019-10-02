.class Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;
.super Ljava/lang/Object;
.source "UIEpisodesSelectorTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;->this$0:Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle$1;->this$0:Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/ui/card/UIEpisodesSelectorTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

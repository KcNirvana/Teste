.class Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;
.super Ljava/lang/Object;
.source "UICardSearchHistory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;->this$0:Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;->this$0:Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;

    invoke-static {p1}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->access$000(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;->this$0:Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;

    invoke-static {p1}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->access$000(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;->this$0:Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;

    invoke-static {p1}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->access$000(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;->this$0:Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;

    invoke-static {p1}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->access$100(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;->this$0:Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;

    invoke-static {p1}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->access$100(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

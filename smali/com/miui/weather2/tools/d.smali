.class Lcom/miui/weather2/tools/d;
.super Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/c;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/d;->a:Lcom/miui/weather2/tools/c;

    invoke-direct {p0}, Lcom/xiaomi/ad/feedback/IAdFeedbackListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/d;->a:Lcom/miui/weather2/tools/c;

    invoke-static {v0}, Lcom/miui/weather2/tools/c;->a(Lcom/miui/weather2/tools/c;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/d;->a:Lcom/miui/weather2/tools/c;

    const-string v1, "ADDislikeClick"

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/d;->a:Lcom/miui/weather2/tools/c;

    iget-object v0, v0, Lcom/miui/weather2/tools/c;->f:Lcom/miui/weather2/structures/InfoDataBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/d;->a:Lcom/miui/weather2/tools/c;

    iget-object v0, v0, Lcom/miui/weather2/tools/c;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getTagId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tag_id"

    iget-object v2, p0, Lcom/miui/weather2/tools/d;->a:Lcom/miui/weather2/tools/c;

    iget-object v2, v2, Lcom/miui/weather2/tools/c;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/weather2/tools/d;->a:Lcom/miui/weather2/tools/c;

    iget-object v1, v1, Lcom/miui/weather2/tools/c;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\u6807\u9898"

    iget-object v2, p0, Lcom/miui/weather2/tools/d;->a:Lcom/miui/weather2/tools/c;

    iget-object v2, v2, Lcom/miui/weather2/tools/c;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v2}, Lcom/miui/weather2/structures/InfoDataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "category_advertisement"

    const-string v2, "ad_close_clicked"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

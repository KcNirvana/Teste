.class Lcom/miui/video/service/widget/ui/UIVideoGroup$6;
.super Ljava/lang/Object;
.source "UIVideoGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/widget/ui/UIVideoGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;


# direct methods
.method constructor <init>(Lcom/miui/video/service/widget/ui/UIVideoGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/video/base/database/VideoEntity;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/miui/video/base/database/VideoEntity;

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    const-string v1, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {v0, v1}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->isEditModeEquals(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/miui/video/base/database/VideoEntity;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-virtual {p1}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->onCheckedChange()V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v2}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$700(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Lcom/miui/video/common/feed/entity/RowEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/RowEntity;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v2}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$700(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Lcom/miui/video/common/feed/entity/RowEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/RowEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v2}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$700(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Lcom/miui/video/common/feed/entity/RowEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/RowEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v2}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$700(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Lcom/miui/video/common/feed/entity/RowEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/RowEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/database/VideoEntity;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/miui/video/base/database/VideoEntity;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v8, v0

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$6;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup;

    invoke-static {v0}, Lcom/miui/video/service/widget/ui/UIVideoGroup;->access$800(Lcom/miui/video/service/widget/ui/UIVideoGroup;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->getTarget()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/video/base/database/VideoEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    :cond_3
    :goto_1
    return-void
.end method

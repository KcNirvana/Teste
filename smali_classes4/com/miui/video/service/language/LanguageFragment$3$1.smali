.class Lcom/miui/video/service/language/LanguageFragment$3$1;
.super Ljava/lang/Object;
.source "LanguageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/language/LanguageFragment$3;->onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/service/language/LanguageFragment$3;


# direct methods
.method constructor <init>(Lcom/miui/video/service/language/LanguageFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$3$1;->this$1:Lcom/miui/video/service/language/LanguageFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "LanguageFragment"

    const-string v1, "UILanguageItem  onClick "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/miui/video/base/common/net/model/LanguageEntity;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    check-cast p1, Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-boolean v0, p1, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment$3$1;->this$1:Lcom/miui/video/service/language/LanguageFragment$3;

    iget-object v0, v0, Lcom/miui/video/service/language/LanguageFragment$3;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {v0}, Lcom/miui/video/service/language/LanguageFragment;->access$700(Lcom/miui/video/service/language/LanguageFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment$3$1;->this$1:Lcom/miui/video/service/language/LanguageFragment$3;

    iget-object v0, v0, Lcom/miui/video/service/language/LanguageFragment$3;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {v0}, Lcom/miui/video/service/language/LanguageFragment;->access$800(Lcom/miui/video/service/language/LanguageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/common/net/model/LanguageEntity;

    iget-object v2, v1, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/video/base/common/net/model/LanguageEntity;->mIsSelected:Z

    iget-object v2, p0, Lcom/miui/video/service/language/LanguageFragment$3$1;->this$1:Lcom/miui/video/service/language/LanguageFragment$3;

    iget-object v2, v2, Lcom/miui/video/service/language/LanguageFragment$3;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {v2}, Lcom/miui/video/service/language/LanguageFragment;->access$700(Lcom/miui/video/service/language/LanguageFragment;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v1, v1, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/service/language/LanguageFragment$3$1;->this$1:Lcom/miui/video/service/language/LanguageFragment$3;

    iget-object p1, p1, Lcom/miui/video/service/language/LanguageFragment$3;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {p1}, Lcom/miui/video/service/language/LanguageFragment;->access$900(Lcom/miui/video/service/language/LanguageFragment;)Lcom/miui/video/common/feed/UIRecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/UIRecyclerListView;->notifyDataSetChanged()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/video/service/language/LanguageFragment$3$1;->this$1:Lcom/miui/video/service/language/LanguageFragment$3;

    iget-object v0, v0, Lcom/miui/video/service/language/LanguageFragment$3;->this$0:Lcom/miui/video/service/language/LanguageFragment;

    invoke-static {v0}, Lcom/miui/video/service/language/LanguageFragment;->access$700(Lcom/miui/video/service/language/LanguageFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/video/base/common/net/model/LanguageEntity;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "LanguageFragment"

    const-string v0, "UILanguageItem  onClick obj == null  "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

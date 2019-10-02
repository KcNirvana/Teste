.class Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;
.super Ljava/lang/Object;
.source "UIShareLayout.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyItemOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;->this$0:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getDisplayResloveInfo()Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getClassName()Ljava/lang/String;

    const-string p2, "UIShareLayout"

    const-string v0, "onIntentSelected: "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;->this$0:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->access$000(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;->this$0:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->access$000(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const-string p2, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;->this$0:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->access$000(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;->this$0:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->access$000(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v0, :cond_1

    const-string p2, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;->this$0:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->access$000(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;->this$0:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const/16 v0, 0x3e9

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    const-string p2, "\u8bf7\u9009\u4e2d\u8981\u64cd\u4f5c\u7684\u6587\u4ef6"

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_2
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    const-string p2, "\u8bf7\u9009\u4e2d\u8981\u64cd\u4f5c\u7684\u6587\u4ef6"

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method

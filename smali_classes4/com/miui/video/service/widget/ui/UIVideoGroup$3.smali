.class final Lcom/miui/video/service/widget/ui/UIVideoGroup$3;
.super Ljava/lang/Object;
.source "UIVideoGroup.java"

# interfaces
.implements Lcom/miui/video/service/utils/VideoDurationHelper$LoadDurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/widget/ui/UIVideoGroup;->setDuration(Lcom/miui/video/base/database/VideoEntity;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entity:Lcom/miui/video/base/database/VideoEntity;

.field final synthetic val$infoTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/miui/video/base/database/VideoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3;->val$infoTextView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3;->val$entity:Lcom/miui/video/base/database/VideoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3;->val$infoTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;-><init>(Lcom/miui/video/service/widget/ui/UIVideoGroup$3;J)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    return-void
.end method

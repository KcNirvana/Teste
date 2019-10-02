.class final Lcom/miui/video/service/widget/ui/UIVideoGroup$4;
.super Ljava/lang/Object;
.source "UIVideoGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/widget/ui/UIVideoGroup;->setPlayProgress(Lcom/miui/video/base/database/VideoEntity;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entity:Lcom/miui/video/base/database/VideoEntity;

.field final synthetic val$infoTextView:Landroid/widget/TextView;

.field final synthetic val$vProgress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/miui/video/base/database/VideoEntity;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;->val$infoTextView:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;->val$entity:Lcom/miui/video/base/database/VideoEntity;

    iput-object p3, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;->val$vProgress:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;->val$infoTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;->val$entity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;->val$vProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$4;->val$entity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getPlayProgressPercentage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

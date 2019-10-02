.class Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;
.super Ljava/lang/Object;
.source "UIVideoGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/widget/ui/UIVideoGroup$3;->onLoadFinished(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup$3;

.field final synthetic val$duration:J


# direct methods
.method constructor <init>(Lcom/miui/video/service/widget/ui/UIVideoGroup$3;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup$3;

    iput-wide p2, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup$3;

    iget-object v0, v0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3;->val$entity:Lcom/miui/video/base/database/VideoEntity;

    iget-wide v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;->val$duration:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/VideoEntity;->setDuration(J)V

    iget-object v0, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup$3;

    iget-object v0, v0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3;->val$infoTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/video/service/widget/ui/UIVideoGroup$3$1;->this$0:Lcom/miui/video/service/widget/ui/UIVideoGroup$3;

    iget-object v1, v1, Lcom/miui/video/service/widget/ui/UIVideoGroup$3;->val$entity:Lcom/miui/video/base/database/VideoEntity;

    invoke-virtual {v1}, Lcom/miui/video/base/database/VideoEntity;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

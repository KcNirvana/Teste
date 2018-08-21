.class Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;
.super Ljava/lang/Object;
.source "DiDiCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1, p2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "destination_home"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    sput-boolean v5, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->isSuccessLast:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->mLastMills:J

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "destination_company"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateCurrentLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v0, p2}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$602(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;->access$702(Lcom/miui/home/launcher/assistant/ui/view/DiDiCardView;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

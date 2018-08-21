.class Lcom/miui/personalassistant/ui/SearchAddressActivity$6;
.super Ljava/lang/Object;
.source "SearchAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/SearchAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1300(Lcom/miui/personalassistant/ui/SearchAddressActivity;)J

    move-result-wide v4

    sub-long v0, v2, v4

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1400(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1500(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1000(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$900(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$900(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x1b0b0378

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1600(Lcom/miui/personalassistant/ui/SearchAddressActivity;)V

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/ui/SearchAddressActivity$6;->this$0:Lcom/miui/personalassistant/ui/SearchAddressActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/SearchAddressActivity;->access$1700(Lcom/miui/personalassistant/ui/SearchAddressActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
